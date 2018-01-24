#!/usr/bin/python3

import os
import serial
import serial.tools.list_ports as port_list
import threading
import time


def is_float(arg):
    try:
        float(arg)
    except ValueError:
        return False
    return True


def is_int(arg):
    try:
        int(arg)
    except ValueError:
        return False
    return True


class tennsy_communicator:
    def __init__(self):
        self.runWrite = True
        self.runRead = threading.Event()
        self.filePath_is_set = False
        self.filePath = "n/a"
        self.runTrigger = False
        self.framerate = 150  # Hz
        self.exposure = 2.5  # ms

        self.ser = self.teensyConnect()

        self.cmd = "FRAMERATE {:.0f}".format(self.framerate)
        self.cmd_split = self.cmd.split(" ")
        self.set_framerate()
        self.cmd = "EXPOSURE {:.1f}".format(self.exposure)
        self.cmd_split = self.cmd.split(" ")
        self.set_exposure()
        self.cmd = ""
        self.cmd_split = list()

        self.tWrite = threading.Thread(target=self.teensyWrite,
                                       daemon=False)
        self.tWrite.start()

    def teensyConnect(self):
        ports = list(port_list.comports())
        for p in ports:
            # windows
            p_description_split = p.description.split(' ')
            for i in p_description_split:
                if (i == "Teensy"):
                    port = p.device
                    break
            # linux
#            if (p.description == 'USB Serial'):
#                port = p.device
#                break
        ser = serial.Serial(port,
                            timeout=5.0)  # timeout should be equal to maximum frame period
        time.sleep(1.0)  # wait for Teensy
        print("Connected to {:s}".format(port))
        return ser

    def exit_program(self):
        if not(self.runTrigger):
            self.ser.close()
            self.runWrite = False
        else:
            print("Stop trigger signal first")

    def set_filePath(self):
        if not(self.runTrigger):
            if (len(self.cmd_split) > 1):
                self.folder_name, _ = os.path.split(self.cmd_split[1])
                if (os.path.isdir(self.folder_name)):
                    if not(os.path.isfile(self.cmd_split[1])):
                        self.filePath_is_set = True
                        self.filePath = self.cmd_split[1]
                        print("File path is set")
                        print("file path:\t{:s}".format(self.filePath))
                    else:
                        print("File already exists")
                else:
                    print("Not a valid file path")
            else:
                print("Invalid argument")
        else:
            print("Stop trigger signal first")

    def print_info(self):
        if (self.runTrigger):
            runTrigger_str = "On"
        else:
            runTrigger_str = "Off"
        print("--------------------------------------------------------------")
        print("STATUS:")
        print("--------------------------------------------------------------")
        print("trigger signal:\t{:s}".format(runTrigger_str))
        print("file path:\t{:s}".format(self.filePath))
        print("framerate:\t{:d} Hz".format(self.framerate))
        print("exposure time:\t{:.1f} ms".format(self.exposure))
        print("--------------------------------------------------------------")
        print("SUPPORTED COMMANDS:")
        print("--------------------------------------------------------------")
        print("EXIT:\t\tExit program")
        print("EXPOSURE ARG:\tSet exposure time to ARG")
        print("FILE ARG\tSet file path to record trigger signal to ARG")
        print("FRAMERATE ARG:\tSet framerate to ARG")
        print("INFO:\t\tPrint this text")
        print("TRIGGER_OFF:\tStop trigger signal")
        print("TRIGGER_ON:\tStart trigger signal")
        print("--------------------------------------------------------------")

    def turn_trigger_on(self):
        self.runTrigger = True
        if (self.filePath_is_set):
            self.file = open(self.filePath, "xb")
            time.sleep(1.0)  # wait for file
            self.runRead.set()
            self.tRead = threading.Thread(target=self.teensyRead,
                                          daemon=False)
            self.tRead.start()
        self.ser.write(self.cmd.encode())
        print("Trigger signal is on")
        print("framerate:\t{:d} Hz".format(self.framerate))
        print("exposure time:\t{:.1f} ms".format(self.exposure))

    def turn_trigger_off(self):
        self.runTrigger = False
        self.ser.write(self.cmd.encode())
        print("Trigger signal is off")
        if (self.filePath_is_set):
            print('Wait until file path is set back')
            time.sleep(1.0)  # wait for Teensy
            self.runRead.clear()
            self.tRead.join()  # wait for reading thread
            self.file.close()
            self.filePath = "n/a"
            self.filePath_is_set = False
            print("File path was set back to {:s}".format(self.filePath))

    def set_framerate(self):
        if not(self.runTrigger):
            cond1 = (len(self.cmd_split) > 1)
            if (cond1):
                cond2 = is_int(self.cmd_split[1])
            else:
                cond2 = False
            if (cond2):
                self.framerate = int(self.cmd_split[1])
                self.ser.write(self.cmd.encode())
                print("Framerate is set")
                print("framerate:\t{:d} Hz".format(self.framerate))
            else:
                print("Invalid argument")
        else:
            print("Stop trigger signal first")

    def set_exposure(self):
        if not(self.runTrigger):
            cond1 = (len(self.cmd_split) > 1)
            if (cond1):
                cond2 = is_float(self.cmd_split[1])
            else:
                cond2 = False
            if (cond2):
                self.exposure = float(self.cmd_split[1])
                self.ser.write(self.cmd.encode())
                print("Exposure time is set")
                print("exposure time:\t{:.1f} ms".format(self.exposure))
            else:
                print("Invalid argument")
        else:
            print("Stop trigger signal first")

    def teensyWrite(self):
        while(self.runWrite):
            self.cmd = input()
            self.cmd_split = self.cmd.split(" ")
            if (self.cmd == "EXIT"):
                self.exit_program()
            elif (self.cmd == "INFO"):
                self.print_info()
            elif (self.cmd == "TRIGGER_ON"):
                self.turn_trigger_on()
            elif (self.cmd == "TRIGGER_OFF"):
                self.turn_trigger_off()
            elif (self.cmd_split[0] == "FRAMERATE"):
                self.set_framerate()
            elif (self.cmd_split[0] == "EXPOSURE"):
                self.set_exposure()
            elif (self.cmd_split[0] == "FILE"):
                self.set_filePath()
            else:
                print("Unknown command (type 'INFO' for list of commands)")
            self.cmd = ""
            self.cmd_split = list()

    def teensyRead(self):
        while(self.runRead.is_set()):
            self.file.write(self.ser.readline())


if __name__ == "__main__":
    tennsy_communicator()
