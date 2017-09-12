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
Sheet 8 10
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
L BNC P7
U 1 1 59A9A587
P 1700 900
AR Path="/59A988EA/59A9A587" Ref="P7"  Part="1" 
AR Path="/59B431E3/59A9A587" Ref="P9"  Part="1" 
AR Path="/59B46FD6/59A9A587" Ref="P11"  Part="1" 
F 0 "P11" H 1710 1020 50  0000 C CNN
F 1 "BNC" V 1810 840 50  0000 C CNN
F 2 "Connectors_TE-Connectivity:BNC_Socket_TYCO-AMP_LargePads" H 1700 900 50  0001 C CNN
F 3 "" H 1700 900 50  0000 C CNN
	1    1700 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 59A9A58E
P 1700 1100
AR Path="/59A988EA/59A9A58E" Ref="#PWR026"  Part="1" 
AR Path="/59B431E3/59A9A58E" Ref="#PWR052"  Part="1" 
AR Path="/59B46FD6/59A9A58E" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 1700 850 50  0001 C CNN
F 1 "GND" H 1700 950 50  0000 C CNN
F 2 "" H 1700 1100 50  0000 C CNN
F 3 "" H 1700 1100 50  0000 C CNN
	1    1700 1100
	1    0    0    -1  
$EndComp
Text Label 1050 900  0    60   ~ 0
TRIG_CON1
Wire Wire Line
	1550 900  1050 900 
Text HLabel 2550 1000 0    60   Input ~ 0
TRIG_PU1
Wire Wire Line
	3300 1000 3800 1000
Text Label 3800 1000 2    60   ~ 0
TRIG_CON1
Wire Wire Line
	2550 1000 2600 1000
$Comp
L ISO1540 U3
U 1 1 59B40E58
P 5500 1000
AR Path="/59A988EA/59B40E58" Ref="U3"  Part="1" 
AR Path="/59B431E3/59B40E58" Ref="U6"  Part="1" 
AR Path="/59B46FD6/59B40E58" Ref="U9"  Part="1" 
F 0 "U9" H 5500 1200 60  0000 C CNN
F 1 "ISO1540" H 5500 800 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8-1EP_3.9x4.9mm_Pitch1.27mm" H 5500 1000 60  0001 C CNN
F 3 "" H 5500 1000 60  0001 C CNN
	1    5500 1000
	1    0    0    -1  
$EndComp
$Sheet
S 2600 900  700  200 
U 59B40F2D
F0 "PullupCircuit1" 60
F1 "PullupCircuit.sch" 60
F2 "PU" O R 3300 1000 60 
F3 "PU_SW" I L 2600 1000 60 
$EndSheet
$Comp
L +5V #PWR027
U 1 1 59B41346
P 6100 900
AR Path="/59A988EA/59B41346" Ref="#PWR027"  Part="1" 
AR Path="/59B431E3/59B41346" Ref="#PWR053"  Part="1" 
AR Path="/59B46FD6/59B41346" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 6100 750 50  0001 C CNN
F 1 "+5V" H 6100 1040 50  0000 C CNN
F 2 "" H 6100 900 50  0001 C CNN
F 3 "" H 6100 900 50  0001 C CNN
	1    6100 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 900  5000 900 
$Comp
L GND #PWR028
U 1 1 59B4138C
P 6100 1100
AR Path="/59A988EA/59B4138C" Ref="#PWR028"  Part="1" 
AR Path="/59B431E3/59B4138C" Ref="#PWR054"  Part="1" 
AR Path="/59B46FD6/59B4138C" Ref="#PWR080"  Part="1" 
F 0 "#PWR080" H 6100 850 50  0001 C CNN
F 1 "GND" H 6100 950 50  0000 C CNN
F 2 "" H 6100 1100 50  0001 C CNN
F 3 "" H 6100 1100 50  0001 C CNN
	1    6100 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 59B4140C
P 4900 1100
AR Path="/59A988EA/59B4140C" Ref="#PWR029"  Part="1" 
AR Path="/59B431E3/59B4140C" Ref="#PWR055"  Part="1" 
AR Path="/59B46FD6/59B4140C" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 4900 850 50  0001 C CNN
F 1 "GND" H 4900 950 50  0000 C CNN
F 2 "" H 4900 1100 50  0001 C CNN
F 3 "" H 4900 1100 50  0001 C CNN
	1    4900 1100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR030
U 1 1 59B41431
P 4900 900
AR Path="/59A988EA/59B41431" Ref="#PWR030"  Part="1" 
AR Path="/59B431E3/59B41431" Ref="#PWR056"  Part="1" 
AR Path="/59B46FD6/59B41431" Ref="#PWR082"  Part="1" 
F 0 "#PWR082" H 4900 750 50  0001 C CNN
F 1 "+3.3V" H 4900 1040 50  0000 C CNN
F 2 "" H 4900 900 50  0001 C CNN
F 3 "" H 4900 900 50  0001 C CNN
	1    4900 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1100 4900 1100
Wire Wire Line
	6100 1100 6000 1100
Wire Wire Line
	6000 900  6100 900 
Text HLabel 4700 1000 0    60   Input ~ 0
TRIG_IO1
$Comp
L R R12
U 1 1 59B4156A
P 4700 1250
AR Path="/59A988EA/59B4156A" Ref="R12"  Part="1" 
AR Path="/59B431E3/59B4156A" Ref="R20"  Part="1" 
AR Path="/59B46FD6/59B4156A" Ref="R28"  Part="1" 
F 0 "R28" V 4780 1250 50  0000 C CNN
F 1 "2k" V 4700 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4630 1250 50  0001 C CNN
F 3 "" H 4700 1250 50  0001 C CNN
	1    4700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1100 4700 1000
Wire Wire Line
	4700 1000 5000 1000
Wire Wire Line
	6000 1000 6800 1000
Text Label 6800 1000 2    60   ~ 0
TRIG_CON1
$Comp
L BNC P8
U 1 1 59B419CB
P 1700 2050
AR Path="/59A988EA/59B419CB" Ref="P8"  Part="1" 
AR Path="/59B431E3/59B419CB" Ref="P10"  Part="1" 
AR Path="/59B46FD6/59B419CB" Ref="P12"  Part="1" 
F 0 "P12" H 1710 2170 50  0000 C CNN
F 1 "BNC" V 1810 1990 50  0000 C CNN
F 2 "Connectors_TE-Connectivity:BNC_Socket_TYCO-AMP_LargePads" H 1700 2050 50  0001 C CNN
F 3 "" H 1700 2050 50  0000 C CNN
	1    1700 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 59B419D1
P 1700 2250
AR Path="/59A988EA/59B419D1" Ref="#PWR031"  Part="1" 
AR Path="/59B431E3/59B419D1" Ref="#PWR057"  Part="1" 
AR Path="/59B46FD6/59B419D1" Ref="#PWR083"  Part="1" 
F 0 "#PWR083" H 1700 2000 50  0001 C CNN
F 1 "GND" H 1700 2100 50  0000 C CNN
F 2 "" H 1700 2250 50  0000 C CNN
F 3 "" H 1700 2250 50  0000 C CNN
	1    1700 2250
	1    0    0    -1  
$EndComp
Text Label 1050 2050 0    60   ~ 0
TRIG_CON2
Wire Wire Line
	1550 2050 1050 2050
Text HLabel 2550 2150 0    60   Input ~ 0
TRIG_PU2
Wire Wire Line
	3300 2150 3800 2150
Text Label 3800 2150 2    60   ~ 0
TRIG_CON2
Wire Wire Line
	2550 2150 2600 2150
$Sheet
S 2600 2050 700  200 
U 59B419E1
F0 "PullupCircuit2" 60
F1 "PullupCircuit.sch" 60
F2 "PU" O R 3300 2150 60 
F3 "PU_SW" I L 2600 2150 60 
$EndSheet
$Comp
L +5V #PWR032
U 1 1 59B419E7
P 6100 2050
AR Path="/59A988EA/59B419E7" Ref="#PWR032"  Part="1" 
AR Path="/59B431E3/59B419E7" Ref="#PWR058"  Part="1" 
AR Path="/59B46FD6/59B419E7" Ref="#PWR084"  Part="1" 
F 0 "#PWR084" H 6100 1900 50  0001 C CNN
F 1 "+5V" H 6100 2190 50  0000 C CNN
F 2 "" H 6100 2050 50  0001 C CNN
F 3 "" H 6100 2050 50  0001 C CNN
	1    6100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2050 5000 2050
$Comp
L GND #PWR033
U 1 1 59B419EE
P 6100 2250
AR Path="/59A988EA/59B419EE" Ref="#PWR033"  Part="1" 
AR Path="/59B431E3/59B419EE" Ref="#PWR059"  Part="1" 
AR Path="/59B46FD6/59B419EE" Ref="#PWR085"  Part="1" 
F 0 "#PWR085" H 6100 2000 50  0001 C CNN
F 1 "GND" H 6100 2100 50  0000 C CNN
F 2 "" H 6100 2250 50  0001 C CNN
F 3 "" H 6100 2250 50  0001 C CNN
	1    6100 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 59B419F4
P 4900 2250
AR Path="/59A988EA/59B419F4" Ref="#PWR034"  Part="1" 
AR Path="/59B431E3/59B419F4" Ref="#PWR060"  Part="1" 
AR Path="/59B46FD6/59B419F4" Ref="#PWR086"  Part="1" 
F 0 "#PWR086" H 4900 2000 50  0001 C CNN
F 1 "GND" H 4900 2100 50  0000 C CNN
F 2 "" H 4900 2250 50  0001 C CNN
F 3 "" H 4900 2250 50  0001 C CNN
	1    4900 2250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR035
U 1 1 59B419FA
P 4900 2050
AR Path="/59A988EA/59B419FA" Ref="#PWR035"  Part="1" 
AR Path="/59B431E3/59B419FA" Ref="#PWR061"  Part="1" 
AR Path="/59B46FD6/59B419FA" Ref="#PWR087"  Part="1" 
F 0 "#PWR087" H 4900 1900 50  0001 C CNN
F 1 "+3.3V" H 4900 2190 50  0000 C CNN
F 2 "" H 4900 2050 50  0001 C CNN
F 3 "" H 4900 2050 50  0001 C CNN
	1    4900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2250 4900 2250
Wire Wire Line
	6100 2250 6000 2250
Wire Wire Line
	6000 2050 6100 2050
Text HLabel 4700 2150 0    60   Input ~ 0
TRIG_IO2
$Comp
L R R13
U 1 1 59B41A04
P 4700 2400
AR Path="/59A988EA/59B41A04" Ref="R13"  Part="1" 
AR Path="/59B431E3/59B41A04" Ref="R21"  Part="1" 
AR Path="/59B46FD6/59B41A04" Ref="R29"  Part="1" 
F 0 "R29" V 4780 2400 50  0000 C CNN
F 1 "2k" V 4700 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4630 2400 50  0001 C CNN
F 3 "" H 4700 2400 50  0001 C CNN
	1    4700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2250 4700 2150
Wire Wire Line
	4700 2150 5000 2150
Wire Wire Line
	6000 2150 6800 2150
Text Label 6800 2150 2    60   ~ 0
TRIG_CON2
$Comp
L ISO1540 U3
U 2 1 59B41AB2
P 5500 2150
AR Path="/59A988EA/59B41AB2" Ref="U3"  Part="2" 
AR Path="/59B431E3/59B41AB2" Ref="U6"  Part="2" 
AR Path="/59B46FD6/59B41AB2" Ref="U9"  Part="2" 
F 0 "U9" H 5500 2350 60  0000 C CNN
F 1 "ISO1540" H 5500 1950 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8-1EP_3.9x4.9mm_Pitch1.27mm" H 5500 2150 60  0001 C CNN
F 3 "" H 5500 2150 60  0001 C CNN
	2    5500 2150
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 59B41E6C
P 7400 1000
AR Path="/59A988EA/59B41E6C" Ref="C7"  Part="1" 
AR Path="/59B431E3/59B41E6C" Ref="C11"  Part="1" 
AR Path="/59B46FD6/59B41E6C" Ref="C15"  Part="1" 
F 0 "C15" H 7425 1100 50  0000 L CNN
F 1 "100n" H 7425 900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7438 850 50  0001 C CNN
F 3 "" H 7400 1000 50  0001 C CNN
	1    7400 1000
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 59B41E72
P 7100 1000
AR Path="/59A988EA/59B41E72" Ref="C5"  Part="1" 
AR Path="/59B431E3/59B41E72" Ref="C9"  Part="1" 
AR Path="/59B46FD6/59B41E72" Ref="C13"  Part="1" 
F 0 "C13" H 7125 1100 50  0000 L CNN
F 1 "100n" H 7125 900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7138 850 50  0001 C CNN
F 3 "" H 7100 1000 50  0001 C CNN
	1    7100 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 59B41E78
P 7100 1250
AR Path="/59A988EA/59B41E78" Ref="#PWR040"  Part="1" 
AR Path="/59B431E3/59B41E78" Ref="#PWR066"  Part="1" 
AR Path="/59B46FD6/59B41E78" Ref="#PWR092"  Part="1" 
F 0 "#PWR092" H 7100 1000 50  0001 C CNN
F 1 "GND" H 7100 1100 50  0000 C CNN
F 2 "" H 7100 1250 50  0001 C CNN
F 3 "" H 7100 1250 50  0001 C CNN
	1    7100 1250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR041
U 1 1 59B41E7E
P 7400 750
AR Path="/59A988EA/59B41E7E" Ref="#PWR041"  Part="1" 
AR Path="/59B431E3/59B41E7E" Ref="#PWR067"  Part="1" 
AR Path="/59B46FD6/59B41E7E" Ref="#PWR093"  Part="1" 
F 0 "#PWR093" H 7400 600 50  0001 C CNN
F 1 "+5V" H 7400 890 50  0000 C CNN
F 2 "" H 7400 750 50  0001 C CNN
F 3 "" H 7400 750 50  0001 C CNN
	1    7400 750 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR042
U 1 1 59B41E84
P 7100 750
AR Path="/59A988EA/59B41E84" Ref="#PWR042"  Part="1" 
AR Path="/59B431E3/59B41E84" Ref="#PWR068"  Part="1" 
AR Path="/59B46FD6/59B41E84" Ref="#PWR094"  Part="1" 
F 0 "#PWR094" H 7100 600 50  0001 C CNN
F 1 "+3.3V" H 7100 890 50  0000 C CNN
F 2 "" H 7100 750 50  0001 C CNN
F 3 "" H 7100 750 50  0001 C CNN
	1    7100 750 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 59B41E8A
P 7400 1250
AR Path="/59A988EA/59B41E8A" Ref="#PWR043"  Part="1" 
AR Path="/59B431E3/59B41E8A" Ref="#PWR069"  Part="1" 
AR Path="/59B46FD6/59B41E8A" Ref="#PWR095"  Part="1" 
F 0 "#PWR095" H 7400 1000 50  0001 C CNN
F 1 "GND" H 7400 1100 50  0000 C CNN
F 2 "" H 7400 1250 50  0001 C CNN
F 3 "" H 7400 1250 50  0001 C CNN
	1    7400 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1250 7100 1150
Wire Wire Line
	7400 1250 7400 1150
Wire Wire Line
	7400 850  7400 750 
Wire Wire Line
	7100 850  7100 750 
$EndSCHEMATC
