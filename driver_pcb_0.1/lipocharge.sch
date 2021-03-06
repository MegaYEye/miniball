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
LIBS:mcp73831
LIBS:lipocharge-cache
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
L AVR-ISP-6 CON1
U 1 1 5898F050
P 3300 5450
F 0 "CON1" H 3195 5690 50  0000 C CNN
F 1 "AVR-ISP-6" H 3035 5220 50  0000 L BNN
F 2 "avr:pin_array_3x2" V 2780 5490 50  0001 C CNN
F 3 "" H 3275 5450 50  0000 C CNN
	1    3300 5450
	1    0    0    -1  
$EndComp
$Comp
L ATTINY85-S IC1
U 1 1 5898F0F4
P 6850 5450
F 0 "IC1" H 5700 5850 50  0000 C CNN
F 1 "ATTINY85-S" H 7850 5050 50  0000 C CNN
F 2 "soic8:SO8E" H 7800 5450 50  0000 C CIN
F 3 "" H 6850 5450 50  0000 C CNN
	1    6850 5450
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GSD Q1
U 1 1 5898F25B
P 6050 2800
F 0 "Q1" V 6300 2750 50  0000 L CNN
F 1 "AO2401-P Mosfet" V 6400 2500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6250 2900 50  0001 C CNN
F 3 "" H 6050 2800 50  0000 C CNN
	1    6050 2800
	0    1    1    0   
$EndComp
$Comp
L MCP73831 U1
U 1 1 5898F60F
P 3400 2950
F 0 "U1" H 3400 2500 60  0000 C CNN
F 1 "MCP73831" H 3400 2950 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3400 2950 60  0001 C CNN
F 3 "" H 3400 2950 60  0001 C CNN
	1    3400 2950
	-1   0    0    1   
$EndComp
$Comp
L D_Schottky D1
U 1 1 5898F7E4
P 6350 2600
F 0 "D1" H 6350 2700 50  0000 C CNN
F 1 "D_Schottky" H 6350 2500 50  0000 C CNN
F 2 "Diodes_SMD:SOD-323_HandSoldering" H 6350 2600 50  0001 C CNN
F 3 "" H 6350 2600 50  0000 C CNN
	1    6350 2600
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 5898F893
P 1900 2650
F 0 "P2" H 1900 2800 50  0000 C CNN
F 1 "CHARGER" V 2000 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 1900 2650 50  0001 C CNN
F 3 "" H 1900 2650 50  0000 C CNN
	1    1900 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 5898F9DF
P 5350 3150
F 0 "P3" H 5350 3300 50  0000 C CNN
F 1 "BATT" V 5450 3150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 5350 3150 50  0001 C CNN
F 3 "" H 5350 3150 50  0000 C CNN
	1    5350 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 5898FABF
P 8500 3200
F 0 "P1" H 8500 3400 50  0000 C CNN
F 1 "LEDBALL" V 8600 3200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 8500 3200 50  0001 C CNN
F 3 "" H 8500 3200 50  0000 C CNN
	1    8500 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5898FFAB
P 4400 3700
F 0 "#PWR01" H 4400 3450 50  0001 C CNN
F 1 "GND" H 4400 3550 50  0000 C CNN
F 2 "" H 4400 3700 50  0000 C CNN
F 3 "" H 4400 3700 50  0000 C CNN
	1    4400 3700
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58990110
P 2450 3500
F 0 "R1" V 2530 3500 50  0000 C CNN
F 1 "15K" V 2450 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2450 3700 50  0001 C CNN
F 3 "" H 2450 3500 50  0000 C CNN
	1    2450 3500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 58990201
P 2150 3800
F 0 "#PWR02" H 2150 3550 50  0001 C CNN
F 1 "GND" H 2150 3650 50  0000 C CNN
F 2 "" H 2150 3800 50  0000 C CNN
F 3 "" H 2150 3800 50  0000 C CNN
	1    2150 3800
	1    0    0    -1  
$EndComp
Text Label 5150 5200 0    60   ~ 0
MOSI
Text Label 3800 5450 0    60   ~ 0
MOSI
Text Label 5150 5300 0    60   ~ 0
MISO
Text Label 5150 5400 0    60   ~ 0
SCK
Text Label 5150 5700 0    60   ~ 0
RST
Text Label 2550 5350 0    60   ~ 0
MISO
Text Label 2550 5450 0    60   ~ 0
SCK
Text Label 2550 5550 0    60   ~ 0
RST
$Comp
L GND #PWR03
U 1 1 58990694
P 3800 5750
F 0 "#PWR03" H 3800 5500 50  0001 C CNN
F 1 "GND" H 3800 5600 50  0000 C CNN
F 2 "" H 3800 5750 50  0000 C CNN
F 3 "" H 3800 5750 50  0000 C CNN
	1    3800 5750
	1    0    0    -1  
$EndComp
Text HLabel 1500 2250 0    60   Input ~ 0
VIN
Text HLabel 3800 5200 2    60   Input ~ 0
VIN
Text HLabel 5000 3100 0    60   Input ~ 0
VBAT
Text HLabel 8350 5200 2    60   Input ~ 0
VCC
$Comp
L GND #PWR04
U 1 1 58990985
P 8350 5800
F 0 "#PWR04" H 8350 5550 50  0001 C CNN
F 1 "GND" H 8350 5650 50  0000 C CNN
F 2 "" H 8350 5800 50  0000 C CNN
F 3 "" H 8350 5800 50  0000 C CNN
	1    8350 5800
	1    0    0    -1  
$EndComp
Text Label 5150 5500 0    60   ~ 0
PWRSW
Text Label 5150 5600 0    60   ~ 0
DOUT
$Comp
L C C1
U 1 1 58990F90
P 2150 3500
F 0 "C1" H 2175 3600 50  0000 L CNN
F 1 "4u7" H 2175 3400 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2188 3350 50  0001 C CNN
F 3 "" H 2150 3500 50  0000 C CNN
	1    2150 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5899105A
P 2450 3800
F 0 "#PWR05" H 2450 3550 50  0001 C CNN
F 1 "GND" H 2450 3650 50  0000 C CNN
F 2 "" H 2450 3800 50  0000 C CNN
F 3 "" H 2450 3800 50  0000 C CNN
	1    2450 3800
	1    0    0    -1  
$EndComp
Text HLabel 6550 3100 0    60   Input ~ 0
VCC
$Comp
L Q_PMOS_GSD Q2
U 1 1 58991991
P 7150 2800
F 0 "Q2" V 7400 2750 50  0000 L CNN
F 1 "AO2401-P Mosfet" V 7500 2500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7350 2900 50  0001 C CNN
F 3 "" H 7150 2800 50  0000 C CNN
	1    7150 2800
	0    1    1    0   
$EndComp
Text HLabel 8000 3100 0    60   Input ~ 0
VLED
Text Label 6800 2450 0    60   ~ 0
PWRSW
Text Label 8000 2450 0    60   ~ 0
DOUT
$Comp
L GND #PWR06
U 1 1 589920B3
P 7600 3700
F 0 "#PWR06" H 7600 3450 50  0001 C CNN
F 1 "GND" H 7600 3550 50  0000 C CNN
F 2 "" H 7600 3700 50  0000 C CNN
F 3 "" H 7600 3700 50  0000 C CNN
	1    7600 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5899220A
P 4600 3700
F 0 "#PWR07" H 4600 3450 50  0001 C CNN
F 1 "GND" H 4600 3550 50  0000 C CNN
F 2 "" H 4600 3700 50  0000 C CNN
F 3 "" H 4600 3700 50  0000 C CNN
	1    4600 3700
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 58992AB6
P 7600 3350
F 0 "C2" H 7625 3450 50  0000 L CNN
F 1 "4u7" H 7625 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7638 3200 50  0001 C CNN
F 3 "" H 7600 3350 50  0000 C CNN
	1    7600 3350
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58992D26
P 4600 3450
F 0 "C3" H 4625 3550 50  0000 L CNN
F 1 "4u7" H 4625 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4638 3300 50  0001 C CNN
F 3 "" H 4600 3450 50  0000 C CNN
	1    4600 3450
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 589913D7
P 8900 2600
F 0 "R3" V 8980 2600 50  0000 C CNN
F 1 "56K" V 8900 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8830 2600 50  0001 C CNN
F 3 "" H 8900 2600 50  0000 C CNN
	1    8900 2600
	-1   0    0    1   
$EndComp
$Comp
L D D3
U 1 1 589B77EE
P 8900 3200
F 0 "D3" H 8900 3300 50  0000 C CNN
F 1 "D" H 8900 3100 50  0000 C CNN
F 2 "Diodes_SMD:D_0603" H 8850 3400 50  0001 C CNN
F 3 "" H 8900 3200 50  0000 C CNN
	1    8900 3200
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 589CE986
P 4900 5300
F 0 "R2" V 4980 5300 50  0000 C CNN
F 1 "0" V 4900 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4650 5300 50  0001 C CNN
F 3 "" H 4900 5300 50  0000 C CNN
	1    4900 5300
	0    1    1    0   
$EndComp
Text Label 3850 3500 0    60   ~ 0
STAT
Text Label 4500 5300 0    60   ~ 0
STAT
Text Label 2450 3200 0    60   ~ 0
PROG
$Comp
L GND #PWR08
U 1 1 589D04FE
P 5100 3750
F 0 "#PWR08" H 5100 3500 50  0001 C CNN
F 1 "GND" H 5100 3600 50  0000 C CNN
F 2 "" H 5100 3750 50  0000 C CNN
F 3 "" H 5100 3750 50  0000 C CNN
	1    5100 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 589D14B4
P 8900 3700
F 0 "#PWR09" H 8900 3450 50  0001 C CNN
F 1 "GND" H 8900 3550 50  0000 C CNN
F 2 "" H 8900 3700 50  0000 C CNN
F 3 "" H 8900 3700 50  0000 C CNN
	1    8900 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 589D29E3
P 1700 3800
F 0 "#PWR010" H 1700 3550 50  0001 C CNN
F 1 "GND" H 1700 3650 50  0000 C CNN
F 2 "" H 1700 3800 50  0000 C CNN
F 3 "" H 1700 3800 50  0000 C CNN
	1    1700 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 589D2C62
P 8100 3700
F 0 "#PWR011" H 8100 3450 50  0001 C CNN
F 1 "GND" H 8100 3550 50  0000 C CNN
F 2 "" H 8100 3700 50  0000 C CNN
F 3 "" H 8100 3700 50  0000 C CNN
	1    8100 3700
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 589D7C16
P 6800 3400
F 0 "C4" H 6825 3500 50  0000 L CNN
F 1 "100n" H 6825 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6838 3250 50  0001 C CNN
F 3 "" H 6800 3400 50  0000 C CNN
	1    6800 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 589D7CB6
P 6800 3700
F 0 "#PWR012" H 6800 3450 50  0001 C CNN
F 1 "GND" H 6800 3550 50  0000 C CNN
F 2 "" H 6800 3700 50  0000 C CNN
F 3 "" H 6800 3700 50  0000 C CNN
	1    6800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3700 4400 3050
Wire Wire Line
	5500 5200 5150 5200
Wire Wire Line
	3400 5450 3800 5450
Wire Wire Line
	5150 5400 5500 5400
Wire Wire Line
	5150 5700 5500 5700
Wire Wire Line
	2550 5350 3150 5350
Wire Wire Line
	2550 5450 3150 5450
Wire Wire Line
	2550 5550 3150 5550
Wire Wire Line
	3800 5750 3800 5550
Wire Wire Line
	3800 5550 3400 5550
Wire Wire Line
	3400 5350 3800 5350
Wire Wire Line
	3800 5350 3800 5200
Wire Wire Line
	4150 2900 5850 2900
Wire Wire Line
	8200 5200 8350 5200
Wire Wire Line
	8200 5700 8350 5700
Wire Wire Line
	8350 5700 8350 5800
Wire Wire Line
	5150 5500 5500 5500
Wire Wire Line
	5150 5600 5500 5600
Wire Wire Line
	5050 5300 5500 5300
Wire Wire Line
	4500 5300 4750 5300
Wire Wire Line
	4150 3200 4150 3500
Wire Wire Line
	2450 3200 2700 3200
Wire Wire Line
	2450 3800 2450 3650
Wire Wire Line
	2150 3800 2150 3650
Wire Wire Line
	2700 2250 2700 2900
Wire Wire Line
	2150 2250 2150 3350
Connection ~ 2150 2250
Wire Wire Line
	4600 3700 4600 3600
Wire Wire Line
	5100 3750 5100 3200
Wire Wire Line
	4400 3050 4150 3050
Wire Wire Line
	4600 2900 4600 3300
Wire Wire Line
	5000 3100 5150 3100
Wire Wire Line
	5100 2900 5100 3100
Connection ~ 4600 2900
Connection ~ 5100 3100
Wire Wire Line
	5100 3200 5150 3200
Connection ~ 5100 2900
Wire Wire Line
	6050 2250 6050 2600
Connection ~ 2700 2250
Wire Wire Line
	6350 2250 6350 2450
Connection ~ 6050 2250
Wire Wire Line
	6350 2750 6350 2900
Connection ~ 6350 2900
Connection ~ 6350 2250
Wire Wire Line
	8900 2250 8900 2450
Wire Wire Line
	8900 3700 8900 3350
Wire Wire Line
	8900 3050 8900 2750
Wire Wire Line
	1500 2250 8900 2250
Wire Wire Line
	7600 3700 7600 3500
Wire Wire Line
	1700 2250 1700 2600
Connection ~ 1700 2250
Wire Wire Line
	1700 2700 1700 3800
Wire Wire Line
	2450 3350 2450 3200
Wire Wire Line
	4150 3500 3850 3500
Wire Wire Line
	6800 2450 7150 2450
Wire Wire Line
	7150 2450 7150 2600
Wire Wire Line
	6250 2900 6950 2900
Connection ~ 6650 2900
Wire Wire Line
	7350 2900 8100 2900
Wire Wire Line
	7600 2900 7600 3200
Wire Wire Line
	8100 2900 8100 3100
Wire Wire Line
	8000 3100 8300 3100
Connection ~ 7600 2900
Connection ~ 8100 3100
Wire Wire Line
	8100 3300 8300 3300
Wire Wire Line
	8100 3300 8100 3700
Wire Wire Line
	8000 2450 8200 2450
Wire Wire Line
	8200 2450 8200 3200
Wire Wire Line
	8200 3200 8300 3200
Wire Wire Line
	5100 5300 5100 5450
Wire Wire Line
	5100 5450 4700 5450
Wire Wire Line
	4700 5450 4700 5300
Connection ~ 4700 5300
Connection ~ 5100 5300
Wire Wire Line
	6800 3250 6800 2900
Connection ~ 6800 2900
Wire Wire Line
	6800 3550 6800 3700
Wire Wire Line
	6650 2900 6650 3100
Wire Wire Line
	6650 3100 6550 3100
$EndSCHEMATC
