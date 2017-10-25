EESchema Schematic File Version 2
LIBS:teensy36_no-center
LIBS:ldd-1000h
LIBS:maxim
LIBS:dmc2700
LIBS:iso1540
LIBS:74lvc
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
Sheet 3 10
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
L DMC2700 U3
U 1 1 59B3FFA1
P 5200 2550
AR Path="/59A988EA/59B40F2D/59B3FFA1" Ref="U3"  Part="1" 
AR Path="/59A988EA/59B419E1/59B3FFA1" Ref="U4"  Part="1" 
AR Path="/59B431E3/59B40F2D/59B3FFA1" Ref="U6"  Part="1" 
AR Path="/59B431E3/59B419E1/59B3FFA1" Ref="U7"  Part="1" 
AR Path="/59B46FD6/59B40F2D/59B3FFA1" Ref="U9"  Part="1" 
AR Path="/59B46FD6/59B419E1/59B3FFA1" Ref="U10"  Part="1" 
F 0 "U3" H 4990 2110 50  0000 L CNN
F 1 "DMC2700" H 4990 2935 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 5450 2475 50  0001 L CIN
F 3 "" H 5135 2320 50  0001 L CNN
	1    5200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2500 5700 2500
$Comp
L R R12
U 1 1 59B4002B
P 5800 2250
AR Path="/59A988EA/59B40F2D/59B4002B" Ref="R12"  Part="1" 
AR Path="/59A988EA/59B419E1/59B4002B" Ref="R15"  Part="1" 
AR Path="/59B431E3/59B40F2D/59B4002B" Ref="R20"  Part="1" 
AR Path="/59B431E3/59B419E1/59B4002B" Ref="R23"  Part="1" 
AR Path="/59B46FD6/59B40F2D/59B4002B" Ref="R28"  Part="1" 
AR Path="/59B46FD6/59B419E1/59B4002B" Ref="R31"  Part="1" 
F 0 "R12" V 5880 2250 50  0000 C CNN
F 1 "200R" V 5800 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5730 2250 50  0001 C CNN
F 3 "" H 5800 2250 50  0001 C CNN
	1    5800 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 2250 5650 2250
Text HLabel 6000 2250 2    60   Output ~ 0
PU
Wire Wire Line
	6000 2250 5950 2250
$Comp
L +5V #PWR049
U 1 1 59B40098
P 5700 2500
AR Path="/59A988EA/59B40F2D/59B40098" Ref="#PWR049"  Part="1" 
AR Path="/59A988EA/59B419E1/59B40098" Ref="#PWR053"  Part="1" 
AR Path="/59B431E3/59B40F2D/59B40098" Ref="#PWR073"  Part="1" 
AR Path="/59B431E3/59B419E1/59B40098" Ref="#PWR077"  Part="1" 
AR Path="/59B46FD6/59B40F2D/59B40098" Ref="#PWR097"  Part="1" 
AR Path="/59B46FD6/59B419E1/59B40098" Ref="#PWR0101"  Part="1" 
F 0 "#PWR049" H 5700 2350 50  0001 C CNN
F 1 "+5V" H 5700 2640 50  0000 C CNN
F 2 "" H 5700 2500 50  0001 C CNN
F 3 "" H 5700 2500 50  0001 C CNN
	1    5700 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR050
U 1 1 59B400B7
P 5650 2900
AR Path="/59A988EA/59B40F2D/59B400B7" Ref="#PWR050"  Part="1" 
AR Path="/59A988EA/59B419E1/59B400B7" Ref="#PWR054"  Part="1" 
AR Path="/59B431E3/59B40F2D/59B400B7" Ref="#PWR074"  Part="1" 
AR Path="/59B431E3/59B419E1/59B400B7" Ref="#PWR078"  Part="1" 
AR Path="/59B46FD6/59B40F2D/59B400B7" Ref="#PWR098"  Part="1" 
AR Path="/59B46FD6/59B419E1/59B400B7" Ref="#PWR0102"  Part="1" 
F 0 "#PWR050" H 5650 2650 50  0001 C CNN
F 1 "GND" H 5650 2750 50  0000 C CNN
F 2 "" H 5650 2900 50  0001 C CNN
F 3 "" H 5650 2900 50  0001 C CNN
	1    5650 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 2900 5600 2900
Wire Wire Line
	5600 2650 6300 2650
Wire Wire Line
	6300 2650 6300 2050
Wire Wire Line
	6300 2050 4750 2050
Wire Wire Line
	4750 2050 4750 2400
Wire Wire Line
	4700 2400 4800 2400
$Comp
L R R13
U 1 1 59B400E4
P 4550 2400
AR Path="/59A988EA/59B40F2D/59B400E4" Ref="R13"  Part="1" 
AR Path="/59A988EA/59B419E1/59B400E4" Ref="R16"  Part="1" 
AR Path="/59B431E3/59B40F2D/59B400E4" Ref="R21"  Part="1" 
AR Path="/59B431E3/59B419E1/59B400E4" Ref="R24"  Part="1" 
AR Path="/59B46FD6/59B40F2D/59B400E4" Ref="R29"  Part="1" 
AR Path="/59B46FD6/59B419E1/59B400E4" Ref="R32"  Part="1" 
F 0 "R13" V 4630 2400 50  0000 C CNN
F 1 "10k" V 4550 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4480 2400 50  0001 C CNN
F 3 "" H 4550 2400 50  0001 C CNN
	1    4550 2400
	0    1    1    0   
$EndComp
Connection ~ 4750 2400
$Comp
L +5V #PWR051
U 1 1 59B4011D
P 4350 2400
AR Path="/59A988EA/59B40F2D/59B4011D" Ref="#PWR051"  Part="1" 
AR Path="/59A988EA/59B419E1/59B4011D" Ref="#PWR055"  Part="1" 
AR Path="/59B431E3/59B40F2D/59B4011D" Ref="#PWR075"  Part="1" 
AR Path="/59B431E3/59B419E1/59B4011D" Ref="#PWR079"  Part="1" 
AR Path="/59B46FD6/59B40F2D/59B4011D" Ref="#PWR099"  Part="1" 
AR Path="/59B46FD6/59B419E1/59B4011D" Ref="#PWR0103"  Part="1" 
F 0 "#PWR051" H 4350 2250 50  0001 C CNN
F 1 "+5V" H 4350 2540 50  0000 C CNN
F 2 "" H 4350 2400 50  0001 C CNN
F 3 "" H 4350 2400 50  0001 C CNN
	1    4350 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 2400 4350 2400
$Comp
L R R14
U 1 1 59B4013F
P 4800 2950
AR Path="/59A988EA/59B40F2D/59B4013F" Ref="R14"  Part="1" 
AR Path="/59A988EA/59B419E1/59B4013F" Ref="R17"  Part="1" 
AR Path="/59B431E3/59B40F2D/59B4013F" Ref="R22"  Part="1" 
AR Path="/59B431E3/59B419E1/59B4013F" Ref="R25"  Part="1" 
AR Path="/59B46FD6/59B40F2D/59B4013F" Ref="R30"  Part="1" 
AR Path="/59B46FD6/59B419E1/59B4013F" Ref="R33"  Part="1" 
F 0 "R14" V 4880 2950 50  0000 C CNN
F 1 "10k" V 4800 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4730 2950 50  0001 C CNN
F 3 "" H 4800 2950 50  0001 C CNN
	1    4800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2750 4800 2800
Wire Wire Line
	4800 3100 4800 3150
$Comp
L GND #PWR052
U 1 1 59B401E2
P 4800 3150
AR Path="/59A988EA/59B40F2D/59B401E2" Ref="#PWR052"  Part="1" 
AR Path="/59A988EA/59B419E1/59B401E2" Ref="#PWR056"  Part="1" 
AR Path="/59B431E3/59B40F2D/59B401E2" Ref="#PWR076"  Part="1" 
AR Path="/59B431E3/59B419E1/59B401E2" Ref="#PWR080"  Part="1" 
AR Path="/59B46FD6/59B40F2D/59B401E2" Ref="#PWR0100"  Part="1" 
AR Path="/59B46FD6/59B419E1/59B401E2" Ref="#PWR0104"  Part="1" 
F 0 "#PWR052" H 4800 2900 50  0001 C CNN
F 1 "GND" H 4800 3000 50  0000 C CNN
F 2 "" H 4800 3150 50  0001 C CNN
F 3 "" H 4800 3150 50  0001 C CNN
	1    4800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2750 4750 2750
Text HLabel 4750 2750 0    60   Input ~ 0
PU_SW
$EndSCHEMATC
