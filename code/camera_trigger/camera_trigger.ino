#include "TeensyDelay.h"    // https://github.com/luni64/TeensyDelay
#include <SerialCommand.h>  // https://github.com/scogswell/ArduinoSerialCommand

SerialCommand SCmd;
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

volatile float framerate = 50; // Hz
volatile float frame_period = 1000. / framerate; // ms
const float framerate_min = 0.5; // Hz

volatile float exposure_time = 10; // ms
const float exposure_time_min = 0.5; // ms
volatile bool timerExposure = true;


volatile long camOnMicros = 0.;




void infoCallback()
{
  Serial.println(F("------------------------------------------"));
  Serial.println(F("SUPPORTED COMMANDS:"));
  Serial.println(F("------------------------------------------"));
  Serial.println(F("INFO: Print this text"));
  Serial.println(F("------------------------------------------"));
}

void unknownCallback()
{
  Serial.println("Unknown command"); 
}

void camOnCallback()
{
  digitalWriteFast(PIN_TRIG_IO1, LOW);
  pinMode(PIN_TRIG_IO1, OUTPUT);
  camOnMicros = micros();
  
  //LEDOnCallback();
  //Serial.println("Trigger signal on"); 
}

void camOffCallback()
{
  pinMode(PIN_TRIG_IO1, INPUT);
  digitalWriteFast(PIN_TRIG_IO1, LOW); // digitalWriteFast?

  //LEDOffCallback();
  //Serial.println("Trigger signal off"); 
}

void LEDOnCallback()
{
  digitalWrite(PIN_LED, HIGH);
  Serial.println("LED on"); 
}

void LEDOffCallback()
{
  digitalWrite(PIN_LED, LOW);
  Serial.println("LED off"); 
}

void pullupOnCallback()
{
  digitalWrite(PIN_TRIG_PU1, HIGH);
  Serial.println("Pullup on"); 
}

void pullupOffCallback()
{
  digitalWrite(PIN_TRIG_PU1, LOW);
  Serial.println("Pullup off"); 
}

void setFrameRateCallback()
{
  char *arg; 
  arg = SCmd.next();
  if (arg == NULL) 
  {
    return;
  } 
  
  setFrameRate(atof(arg));
}

void setFrameRate(float framerate_a)
{
  framerate = max(floor(10. * framerate_a) / 10., framerate_min); // truncates to one significant digit
  frame_period = 1000. / framerate; // ms
  Serial.print("Frame rate: ");
  Serial.print(framerate);
  Serial.print(" Hz / Frame period: ");
  Serial.print(frame_period);
  Serial.println(" ms");
}

void setExposureTimeCallback()
{
  char *arg; 
  arg = SCmd.next();
  if (arg == NULL) 
  {
    return;
  } 
  
  setExposureTime(atof(arg));
}

void setExposureTime(float exposure_time_a)
{
  exposure_time = max(floor(10. * exposure_time_a) / 10., exposure_time_min); // truncates to one significant digit 
  Serial.print("Exposure time: ");
  Serial.print(exposure_time);
  Serial.println(" ms");
}

void triggerOnCallback_old()
{
  if (!triggerRunning & (exposure_time != 0))
  {
    Serial.print("Trigger on with ");
    Serial.print("frame rate = ");
    Serial.print(framerate);
    Serial.print(" Hz and exposure time = ");
    Serial.print(exposure_time);
    Serial.println(" ms");
    triggerRunning = true;
    frameTimer.end();
    frameTimer.begin(camOnCallback, 1000. * frame_period); // 100UL ?
  } 
}

void triggerOnCallback()
{
  if (!triggerRunning & (exposure_time != 0))
  {
    Serial.println("Trigger on");
    Serial.print("Frame rate: ");
    Serial.print(framerate);
    Serial.println(" Hz");
    Serial.print("Exposure time: ");
    Serial.print(exposure_time);
    Serial.println(" ms");
    triggerRunning = true;
    //frameTimer.end();
    frameTimer.begin(triggerOn, 1000. * frame_period);
  }
}

void triggerOn()
{
  camOnCallback();
  // TeensyDelay::Trigger() does not work accordingly for delays >= 32
  if (exposure_time < 32)
  {
    timerExposure = true;
    TeensyDelay::trigger(1000. * exposure_time, 0); // cam off
  }
  else
  {
    timerExposure = false;
    camOnMicros = micros();
  }
}

void triggerOffCallback()
{
  if (triggerRunning)
  {
    Serial.println("Trigger off");
    triggerRunning = false;
    frameTimer.end();
    camOffCallback();
  } 
}


void setup() {
  // Set up onboard LED (off)
  pinMode(PIN_LED, OUTPUT);  
  digitalWrite(PIN_LED, LOW); 

  // Set up pullup (on)
  pinMode(PIN_TRIG_PU1, OUTPUT);
  digitalWrite(PIN_TRIG_PU1, HIGH);

  TeensyDelay::begin();
  TeensyDelay::addDelayChannel(camOffCallback);    //setup channel 0


  // Set up serial
  Serial.begin(115200);

  // Set up serial commands
  SCmd.addCommand("TRIGGER_ON", triggerOnCallback);
  SCmd.addCommand("TRIGGER_OFF", triggerOffCallback);
  SCmd.addCommand("FRAMERATE", setFrameRateCallback);
  SCmd.addCommand("EXPOSURE", setExposureTimeCallback);
  SCmd.addCommand("INFO", infoCallback);
  SCmd.addDefaultHandler(unknownCallback);
}

void loop() {
  // turns cameras off in case exposure time >= 32
  if(!timerExposure & ((micros() - 1000. * exposure_time) >= camOnMicros))
  {
    timerExposure = true;
    camOffCallback();
  }
  
  SCmd.readSerial();
}
