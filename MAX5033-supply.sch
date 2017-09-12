EESchema Schematic File Version 2
LIBS:dmc2700
LIBS:iso1540
LIBS:74lvc
LIBS:custom
LIBS:ledflashcontroller-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ledflashcontroller-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 11
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR024
U 1 1 59A9F99E
P 6450 4100
F 0 "#PWR024" H 6450 3850 50  0001 C CNN
F 1 "GND" H 6450 3950 50  0000 C CNN
F 2 "" H 6450 4100 50  0000 C CNN
F 3 "" H 6450 4100 50  0000 C CNN
	1    6450 4100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR025
U 1 1 59A9F9A4
P 6550 3700
F 0 "#PWR025" H 6550 3450 50  0001 C CNN
F 1 "GND" H 6550 3550 50  0000 C CNN
F 2 "" H 6550 3700 50  0000 C CNN
F 3 "" H 6550 3700 50  0000 C CNN
	1    6550 3700
	-1   0    0    1   
$EndComp
$Comp
L R R11
U 1 1 59A9F9AA
P 6800 4150
F 0 "R11" V 6880 4150 50  0000 C CNN
F 1 "1M" V 6800 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6730 4150 50  0001 C CNN
F 3 "" H 6800 4150 50  0000 C CNN
	1    6800 4150
	-1   0    0    1   
$EndComp
$Comp
L R R10
U 1 1 59A9F9B1
P 6400 4250
F 0 "R10" V 6480 4250 50  0000 C CNN
F 1 "384k" V 6400 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6330 4250 50  0001 C CNN
F 3 "" H 6400 4250 50  0000 C CNN
	1    6400 4250
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59A9F9B8
P 5500 3450
F 0 "C3" H 5525 3550 50  0000 L CNN
F 1 "0.1µF" H 5525 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5538 3300 50  0001 C CNN
F 3 "" H 5500 3450 50  0000 C CNN
	1    5500 3450
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 59A9F9BF
P 4600 3850
F 0 "C1" H 4625 3950 50  0000 L CNN
F 1 "0.1µF" H 4625 3750 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4638 3700 50  0001 C CNN
F 3 "" H 4600 3850 50  0000 C CNN
	1    4600 3850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR026
U 1 1 59A9F9C6
P 4600 3700
F 0 "#PWR026" H 4600 3450 50  0001 C CNN
F 1 "GND" H 4600 3550 50  0000 C CNN
F 2 "" H 4600 3700 50  0000 C CNN
F 3 "" H 4600 3700 50  0000 C CNN
	1    4600 3700
	-1   0    0    1   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 59A9F9CC
P 5500 3150
F 0 "L1" V 5450 3150 50  0000 C CNN
F 1 "220µH" V 5600 3150 50  0000 C CNN
F 2 "Choke_SMD:Choke_SMD_Wuerth-WE-PD-Typ-LS_Handsoldering" H 5500 3150 50  0001 C CNN
F 3 "" H 5500 3150 50  0000 C CNN
	1    5500 3150
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D2
U 1 1 59A9F9D9
P 6550 3300
F 0 "D2" H 6550 3400 50  0000 C CNN
F 1 "30BQ060" H 6550 3200 50  0000 C CNN
F 2 "Diodes_SMD:D_SMC_Handsoldering" H 6550 3300 50  0001 C CNN
F 3 "" H 6550 3300 50  0000 C CNN
	1    6550 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 59A9F9E0
P 6800 3300
F 0 "#PWR027" H 6800 3050 50  0001 C CNN
F 1 "GND" H 6800 3150 50  0000 C CNN
F 2 "" H 6800 3300 50  0000 C CNN
F 3 "" H 6800 3300 50  0000 C CNN
	1    6800 3300
	0    -1   -1   0   
$EndComp
$Comp
L CP1 C2
U 1 1 59A9F9E6
P 5050 2900
F 0 "C2" H 5075 3000 50  0000 L CNN
F 1 "33µF" H 5075 2800 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5050 2900 50  0001 C CNN
F 3 "" H 5050 2900 50  0000 C CNN
	1    5050 2900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR028
U 1 1 59A9F9ED
P 4900 2900
F 0 "#PWR028" H 4900 2650 50  0001 C CNN
F 1 "GND" H 4900 2750 50  0000 C CNN
F 2 "" H 4900 2900 50  0000 C CNN
F 3 "" H 4900 2900 50  0000 C CNN
	1    4900 2900
	0    1    1    0   
$EndComp
$Comp
L CP C4
U 1 1 59A9F9F3
P 6550 3850
F 0 "C4" H 6575 3950 50  0000 L CNN
F 1 "47µF" H 6575 3750 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6588 3700 50  0001 C CNN
F 3 "" H 6550 3850 50  0000 C CNN
	1    6550 3850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR029
U 1 1 59A9F9FA
P 4800 4100
F 0 "#PWR029" H 4800 3850 50  0001 C CNN
F 1 "GND" H 4800 3950 50  0000 C CNN
F 2 "" H 4800 4100 50  0000 C CNN
F 3 "" H 4800 4100 50  0000 C CNN
	1    4800 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 4000 4600 4000
Wire Wire Line
	4300 4200 4800 4200
Wire Wire Line
	6700 3300 6800 3300
Wire Wire Line
	6300 4100 6450 4100
Connection ~ 6400 4100
Wire Wire Line
	6300 4000 6900 4000
Connection ~ 6800 4000
Connection ~ 6550 4000
Wire Wire Line
	6300 4200 6300 4400
Wire Wire Line
	6300 4400 6800 4400
Wire Wire Line
	6800 4400 6800 4300
Connection ~ 6400 4400
Wire Wire Line
	5200 2700 5200 3150
Connection ~ 5200 2900
Wire Wire Line
	4800 3900 4800 3450
Wire Wire Line
	4800 3450 5350 3450
Wire Wire Line
	5650 3450 6300 3450
Wire Wire Line
	6300 3300 6400 3300
Connection ~ 6300 3450
Wire Wire Line
	5800 3150 6300 3150
Connection ~ 6300 3300
Wire Wire Line
	5200 3150 4300 3150
Wire Wire Line
	6300 3150 6300 3900
Wire Wire Line
	4300 3150 4300 4200
Text HLabel 6900 4000 2    60   Input ~ 0
V_IN
Text HLabel 5200 2700 1    60   Input ~ 0
V_OUT
$Comp
L MAX5033 U2
U 1 1 59B3C0E9
P 5550 4050
F 0 "U2" H 5550 3950 50  0000 C CNN
F 1 "MAX5033" H 5550 4150 50  0000 C CNN
F 2 "Housings_SOIC:SO-8_5.3x6.2mm_Pitch1.27mm" H 5550 4050 50  0001 C CNN
F 3 "DOCUMENTATION" H 5550 4050 50  0001 C CNN
	1    5550 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC