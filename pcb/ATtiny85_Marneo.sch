EESchema Schematic File Version 2
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
LIBS:ATtiny85_Marneo-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L ATTINY85-P IC1
U 1 1 59599500
P 5150 2350
F 0 "IC1" H 4000 2750 50  0000 C CNN
F 1 "ATTINY85-P" H 6150 1950 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 6150 2350 50  0000 C CIN
F 3 "" H 5150 2350 50  0000 C CNN
	1    5150 2350
	1    0    0    -1  
$EndComp
Text GLabel 2450 1450 0    60   Input ~ 0
VCC
Text GLabel 3150 3250 0    60   Input ~ 0
GND
Text GLabel 2450 2200 0    60   Input ~ 0
SDA
Text GLabel 2450 2500 0    60   Input ~ 0
SCL
$Comp
L CONN_01X04 P1
U 1 1 5959954C
P 3250 1250
F 0 "P1" H 3250 1500 50  0000 C CNN
F 1 "I2C" V 3350 1250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 3250 1250 50  0001 C CNN
F 3 "" H 3250 1250 50  0000 C CNN
	1    3250 1250
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C1
U 1 1 59599661
P 6800 2350
F 0 "C1" H 6810 2420 50  0000 L CNN
F 1 "100PF" H 6810 2270 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 6800 2350 50  0001 C CNN
F 3 "" H 6800 2350 50  0000 C CNN
	1    6800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2100 6800 2100
Wire Wire Line
	6800 1750 6800 2250
Wire Wire Line
	6500 2600 6800 2600
Wire Wire Line
	6800 2450 6800 3600
Wire Wire Line
	2450 1450 3100 1450
Wire Wire Line
	3200 1450 3200 3850
Wire Wire Line
	3300 2200 2450 2200
Wire Wire Line
	3300 1450 3300 2200
Wire Wire Line
	3400 2500 2450 2500
Wire Wire Line
	3400 1450 3400 2500
Wire Wire Line
	3800 2100 3300 2100
Connection ~ 3300 2100
Wire Wire Line
	3800 2300 3400 2300
Connection ~ 3400 2300
$Comp
L CONN_01X03 P2
U 1 1 59599710
P 4600 3750
F 0 "P2" H 4600 3950 50  0000 C CNN
F 1 "NEO" V 4700 3750 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 4600 3750 50  0001 C CNN
F 3 "" H 4600 3750 50  0000 C CNN
	1    4600 3750
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 595997BF
P 3550 3600
F 0 "R3" V 3630 3600 50  0000 C CNN
F 1 "470R" V 3550 3600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 3480 3600 50  0001 C CNN
F 3 "" H 3550 3600 50  0000 C CNN
	1    3550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3750 4400 3750
Wire Wire Line
	3550 3450 3550 2200
Wire Wire Line
	3550 2200 3800 2200
Text GLabel 4050 4300 0    60   Input ~ 0
DOUT
Wire Wire Line
	4150 3750 4150 4300
Wire Wire Line
	4150 4300 4050 4300
Connection ~ 4150 3750
Wire Wire Line
	3150 3250 7250 3250
Connection ~ 6800 2600
Connection ~ 3200 3250
$Comp
L R R1
U 1 1 59599963
P 2650 1800
F 0 "R1" V 2730 1800 50  0000 C CNN
F 1 "4K7" V 2650 1800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2580 1800 50  0001 C CNN
F 3 "" H 2650 1800 50  0000 C CNN
	1    2650 1800
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5959998A
P 2900 1800
F 0 "R2" V 2980 1800 50  0000 C CNN
F 1 "4K7" V 2900 1800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2830 1800 50  0001 C CNN
F 3 "" H 2900 1800 50  0000 C CNN
	1    2900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1000 2650 1650
Connection ~ 2650 1450
Wire Wire Line
	2900 1650 2900 1450
Connection ~ 2900 1450
Wire Wire Line
	2650 1950 2650 2200
Connection ~ 2650 2200
Wire Wire Line
	2900 1950 2900 2500
Connection ~ 2900 2500
Wire Wire Line
	3200 3850 4400 3850
Wire Wire Line
	3100 1450 3100 1750
Wire Wire Line
	3100 1750 6800 1750
Connection ~ 6800 2100
Wire Wire Line
	4400 3650 3700 3650
Wire Wire Line
	3700 3650 3700 1750
Connection ~ 3700 1750
$Comp
L VCC #PWR01
U 1 1 59599DB8
P 2650 1000
F 0 "#PWR01" H 2650 850 50  0001 C CNN
F 1 "VCC" H 2650 1150 50  0000 C CNN
F 2 "" H 2650 1000 50  0000 C CNN
F 3 "" H 2650 1000 50  0000 C CNN
	1    2650 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59599E09
P 6800 3600
F 0 "#PWR02" H 6800 3350 50  0001 C CNN
F 1 "GND" H 6800 3450 50  0000 C CNN
F 2 "" H 6800 3600 50  0000 C CNN
F 3 "" H 6800 3600 50  0000 C CNN
	1    6800 3600
	1    0    0    -1  
$EndComp
Connection ~ 6800 3250
$Comp
L PWR_FLAG #FLG03
U 1 1 59599EE7
P 2350 1050
F 0 "#FLG03" H 2350 1145 50  0001 C CNN
F 1 "PWR_FLAG" H 2350 1230 50  0000 C CNN
F 2 "" H 2350 1050 50  0000 C CNN
F 3 "" H 2350 1050 50  0000 C CNN
	1    2350 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1050 2650 1050
Connection ~ 2650 1050
$Comp
L PWR_FLAG #FLG04
U 1 1 59599F3A
P 7250 3250
F 0 "#FLG04" H 7250 3345 50  0001 C CNN
F 1 "PWR_FLAG" H 7250 3430 50  0000 C CNN
F 2 "" H 7250 3250 50  0000 C CNN
F 3 "" H 7250 3250 50  0000 C CNN
	1    7250 3250
	1    0    0    -1  
$EndComp
NoConn ~ 3800 2400
NoConn ~ 3800 2500
NoConn ~ 3800 2600
NoConn ~ 5000 3400
$Comp
L CP C2
U 1 1 5959A310
P 4150 3450
F 0 "C2" H 4175 3550 50  0000 L CNN
F 1 "10uF" H 4175 3350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2" H 4188 3300 50  0001 C CNN
F 3 "" H 4150 3450 50  0000 C CNN
	1    4150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3300 4150 3250
Connection ~ 4150 3250
Wire Wire Line
	4150 3600 4150 3650
Connection ~ 4150 3650
$EndSCHEMATC
