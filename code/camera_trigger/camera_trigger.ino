#include "TeensyDelay.h"    // https://github.com/luni64/TeensyDelay

IntervalTimer frameTimer;

// Onboard LED
const uint8_t PIN_LED = 13;

// Trigger IO curcuit (left to right)
const uint8_t PIN_TRIG_IO1 = 9;
//const uint8_t PIN_TRIG_IO2 = 10;
//const uint8_t PIN_TRIG_IO3 = 11;
//const uint8_t PIN_TRIG_IO4 = 12;
//const uint8_t PIN_TRIG_IO5 = 35;
//const uint8_t PIN_TRIG_IO6 = 36;

// Trigger PU curcuit (left to right)
const uint8_t PIN_TRIG_PU1 = 2;
//const uint8_t PIN_TRIG_PU2 = 3;
//const uint8_t PIN_TRIG_PU3 = 4;
//const uint8_t PIN_TRIG_PU4 = 5;
//const uint8_t PIN_TRIG_PU5 = 6;
//const uint8_t PIN_TRIG_PU6 = 0; // no pullup ?


volatile bool triggerRunning = false;

volatile float framerate = 150; // Hz
volatile float frame_period = 1000. / framerate; // ms
const float framerate_min = 0.5; // Hz

volatile float exposure_time = 2.5; // ms
const float exposure_time_min = 0.5; // ms
volatile bool timerExposure = true;


volatile long camOnMicros = 0.;


char* cmd;
float arg;


void camOnCallback()
{
  digitalWriteFast(PIN_TRIG_IO1, LOW);
  pinMode(PIN_TRIG_IO1, OUTPUT);
  camOnMicros = micros();
}

void camOffCallback()
{
  pinMode(PIN_TRIG_IO1, INPUT);
  digitalWriteFast(PIN_TRIG_IO1, LOW); // digitalWriteFast?
}

void setFrameRate(float framerate_a)
{
  framerate = max(floor(10. * framerate_a) / 10., framerate_min); // truncates to one significant digit
  frame_period = 1000. / framerate; // ms
}

void setExposureTime(float exposure_time_a)
{
  exposure_time = max(floor(10. * exposure_time_a) / 10., exposure_time_min); // truncates to one significant digit 
}

//void triggerOnCallback()
//{
//  if (!triggerRunning)
//  {
//    triggerRunning = true;
//    digitalWrite(PIN_LED, HIGH);
//    //frameTimer.end();
//    frameTimer.begin(triggerOn, 1000. * frame_period);
//  }
//}
//
//void triggerOn()
//{
//  camOnCallback();
//  // TeensyDelay::Trigger() does not work accordingly for delays >= 32
//  if (exposure_time < 32)
//  {
//    timerExposure = true;
//    TeensyDelay::trigger(1000. * exposure_time, 0); // cam off
//  }
//  else
//  {
//    timerExposure = false;
//    camOnMicros = micros();
//  }
//}

void triggerOnCallback()
{
  if (!triggerRunning)
  {
    triggerRunning = true;
    digitalWrite(PIN_LED, HIGH);
    //frameTimer.end();

    // TeensyDelay::Trigger() does not work accordingly for delays >= 32
    if (exposure_time < 32)
    {
      timerExposure = true;
    }
    else
    {
      timerExposure = false;
    }
    
    frameTimer.begin(triggerOn, 1000. * frame_period);
  }
}

void triggerOn()
{
  camOnCallback();
  camOnMicros = micros();
  Serial.println(camOnMicros);
  if (timerExposure)
  {
    TeensyDelay::trigger(1000. * exposure_time, 0); // cam off
  }
}

void triggerOffCallback()
{
  if (triggerRunning)
  {
    triggerRunning = false;
    digitalWrite(PIN_LED, LOW);
    frameTimer.end();
    camOffCallback();
  } 
}

void read_cmd_and_arg(char* &cmd, float &arg)
{
  char cmd_all [256];
  char* arg_str;

  sprintf(cmd_all, Serial.readString().c_str());
  
  cmd = strtok(cmd_all, " ");
//  a = int(atof(cmd_str_separated));
  arg_str = strtok(NULL, " ");
  arg = atof(arg_str);
}


void setup() {
  // Set up onboard LED (off)
  pinMode(PIN_LED, OUTPUT);  
  digitalWrite(PIN_LED, LOW); 

  // Set up pullup (on)
  pinMode(PIN_TRIG_PU1, OUTPUT);
  digitalWrite(PIN_TRIG_PU1, HIGH);

  TeensyDelay::begin();
  TeensyDelay::addDelayChannel(camOffCallback); //setup channel 0

  // Initialize variables
//  sprintf(cmd, "NO_CMD");
//  arg = -1.0;

  // Set up serial
  Serial.begin(115200);
  delay(1000); // wait for serial 
}

void loop() {
  // turns cameras off in case exposure time >= 32
  if(!timerExposure & ((micros() - 1000. * exposure_time) >= camOnMicros))
  {
    timerExposure = true;
    camOffCallback();
  }
  
  if (Serial.available() > 0)
  {
    read_cmd_and_arg(cmd, arg);
//    Serial.print("cmd: ");
//    Serial.println(cmd);
//    Serial.print("arg: ");
//    Serial.println(arg);

    if (strcmp(cmd, "TRIGGER_ON") == 0)
    {
      triggerOnCallback();
    }
    else if (strcmp(cmd, "TRIGGER_OFF") == 0)
    {
      triggerOffCallback();
    }
    else if (strcmp(cmd, "FRAMERATE") == 0)
    {
      setFrameRate(arg);
    }
    else if (strcmp(cmd, "EXPOSURE") == 0)
    {
      setExposureTime(arg);
    }
    sprintf(cmd, "NO_CMD");
    arg = 0.0;
    Serial.clear();
  }
}
