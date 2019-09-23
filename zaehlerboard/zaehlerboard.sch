EESchema Schematic File Version 4
LIBS:zaehlerboard-cache
EELAYER 30 0
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
L Device:Q_Photo_NPN Q1
U 1 1 5D35C4B0
P 5650 2900
F 0 "Q1" H 5840 2946 50  0000 L CNN
F 1 "Q_Photo_NPN" H 5840 2855 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5850 3000 50  0001 C CNN
F 3 "~" H 5650 2900 50  0001 C CNN
	1    5650 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D35DF28
P 5750 3850
F 0 "#PWR0101" H 5750 3600 50  0001 C CNN
F 1 "GND" H 5755 3677 50  0000 C CNN
F 2 "" H 5750 3850 50  0001 C CNN
F 3 "" H 5750 3850 50  0001 C CNN
	1    5750 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D35E76D
P 4700 2650
F 0 "D1" V 4647 2728 50  0000 L CNN
F 1 "LED" V 4738 2728 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4700 2650 50  0001 C CNN
F 3 "~" H 4700 2650 50  0001 C CNN
	1    4700 2650
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:LM2904 U3
U 1 1 5D35F262
P 7450 3050
F 0 "U3" H 7450 2683 50  0000 C CNN
F 1 "LM293" H 7450 2774 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W10.16mm" H 7400 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 7500 3250 50  0001 C CNN
	1    7450 3050
	1    0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5D360FBF
P 5750 3350
F 0 "R2" H 5820 3396 50  0000 L CNN
F 1 "22k" H 5820 3305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5680 3350 50  0001 C CNN
F 3 "~" H 5750 3350 50  0001 C CNN
	1    5750 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D361568
P 4700 3350
F 0 "R1" H 4630 3304 50  0000 R CNN
F 1 "43" H 4630 3395 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4630 3350 50  0001 C CNN
F 3 "~" H 4700 3350 50  0001 C CNN
	1    4700 3350
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR0102
U 1 1 5D36197B
P 5750 2400
F 0 "#PWR0102" H 5750 2250 50  0001 C CNN
F 1 "VDD" H 5767 2573 50  0000 C CNN
F 2 "" H 5750 2400 50  0001 C CNN
F 3 "" H 5750 2400 50  0001 C CNN
	1    5750 2400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0103
U 1 1 5D3620C5
P 4700 2400
F 0 "#PWR0103" H 4700 2250 50  0001 C CNN
F 1 "VDD" H 4717 2573 50  0000 C CNN
F 2 "" H 4700 2400 50  0001 C CNN
F 3 "" H 4700 2400 50  0001 C CNN
	1    4700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2400 4700 2500
Wire Wire Line
	5750 2400 5750 2700
Wire Wire Line
	5750 3100 5750 3150
Wire Wire Line
	7150 3150 5750 3150
Connection ~ 5750 3150
Wire Wire Line
	5750 3150 5750 3200
Wire Wire Line
	7000 2950 7150 2950
$Comp
L power:VDD #PWR0104
U 1 1 5D37625A
P 6450 2400
F 0 "#PWR0104" H 6450 2250 50  0001 C CNN
F 1 "VDD" H 6467 2573 50  0000 C CNN
F 2 "" H 6450 2400 50  0001 C CNN
F 3 "" H 6450 2400 50  0001 C CNN
	1    6450 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D3768AA
P 7650 2550
F 0 "#PWR0105" H 7650 2300 50  0001 C CNN
F 1 "GND" V 7655 2422 50  0000 R CNN
F 2 "" H 7650 2550 50  0001 C CNN
F 3 "" H 7650 2550 50  0001 C CNN
	1    7650 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 2550 6450 2400
$Comp
L power:GND #PWR0107
U 1 1 5D37E686
P 4700 3850
F 0 "#PWR0107" H 4700 3600 50  0001 C CNN
F 1 "GND" H 4705 3677 50  0000 C CNN
F 2 "" H 4700 3850 50  0001 C CNN
F 3 "" H 4700 3850 50  0001 C CNN
	1    4700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3500 4700 3850
Wire Wire Line
	4700 3200 4700 2800
Wire Wire Line
	5750 3500 5750 3850
$Comp
L Regulator_Linear:MCP1700-3302E_TO92 U2
U 1 1 5D3977D9
P 3700 2050
F 0 "U2" H 3700 1800 50  0000 C CNN
F 1 "MCP1700-3.3" H 3700 1900 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92" H 3700 2300 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm1085.pdf" H 3700 2050 50  0001 C CNN
	1    3700 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D39ABD9
P 3700 2900
F 0 "#PWR02" H 3700 2650 50  0001 C CNN
F 1 "GND" H 3705 2727 50  0000 C CNN
F 2 "" H 3700 2900 50  0001 C CNN
F 3 "" H 3700 2900 50  0001 C CNN
	1    3700 2900
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR03
U 1 1 5D39B7A3
P 3250 1950
F 0 "#PWR03" H 3250 1800 50  0001 C CNN
F 1 "VDD" H 3267 2123 50  0000 C CNN
F 2 "" H 3250 1950 50  0001 C CNN
F 3 "" H 3250 1950 50  0001 C CNN
	1    3250 1950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5D39C377
P 4200 1950
F 0 "#PWR01" H 4200 1800 50  0001 C CNN
F 1 "VCC" H 4217 2123 50  0000 C CNN
F 2 "" H 4200 1950 50  0001 C CNN
F 3 "" H 4200 1950 50  0001 C CNN
	1    4200 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5D39FFBD
P 7000 2550
F 0 "RV1" V 6793 2550 50  0000 C CNN
F 1 "10k" V 6884 2550 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 7000 2550 50  0001 C CNN
F 3 "~" H 7000 2550 50  0001 C CNN
	1    7000 2550
	0    -1   1    0   
$EndComp
Wire Wire Line
	6450 2550 6850 2550
Wire Wire Line
	7750 3050 8350 3050
Connection ~ 6850 2550
Wire Wire Line
	6850 2550 6950 2550
Wire Wire Line
	7000 2700 7000 2950
NoConn ~ 7750 3650
Wire Wire Line
	7150 2550 7650 2550
$Comp
L Amplifier_Operational:LM2904 U3
U 3 1 5D890418
P 10150 2700
F 0 "U3" H 10108 2746 50  0000 L CNN
F 1 "LM293" H 10108 2655 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W10.16mm" H 10150 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 10150 2700 50  0001 C CNN
	3    10150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR04
U 1 1 5D893A2A
P 10050 2200
F 0 "#PWR04" H 10050 2050 50  0001 C CNN
F 1 "VDD" H 10067 2373 50  0000 C CNN
F 2 "" H 10050 2200 50  0001 C CNN
F 3 "" H 10050 2200 50  0001 C CNN
	1    10050 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D894387
P 10050 3150
F 0 "#PWR05" H 10050 2900 50  0001 C CNN
F 1 "GND" H 10055 2977 50  0000 C CNN
F 2 "" H 10050 3150 50  0001 C CNN
F 3 "" H 10050 3150 50  0001 C CNN
	1    10050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2400 10050 2200
Wire Wire Line
	10050 3150 10050 3000
$Comp
L Device:C C1
U 1 1 5D89E002
P 8350 3250
F 0 "C1" H 8465 3296 50  0000 L CNN
F 1 "100nF" H 8465 3205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 8388 3100 50  0001 C CNN
F 3 "~" H 8350 3250 50  0001 C CNN
	1    8350 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D89E950
P 8350 3700
F 0 "#PWR07" H 8350 3450 50  0001 C CNN
F 1 "GND" H 8355 3527 50  0000 C CNN
F 2 "" H 8350 3700 50  0001 C CNN
F 3 "" H 8350 3700 50  0001 C CNN
	1    8350 3700
	1    0    0    -1  
$EndComp
$Comp
L zaehlerboard:ESP1 U1
U 1 1 5D8A9C2D
P 9100 1100
F 0 "U1" H 8975 1515 50  0000 C CNN
F 1 "ESP1" H 8975 1424 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 8500 1400 50  0001 C CNN
F 3 "" H 8500 1400 50  0001 C CNN
	1    9100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR06
U 1 1 5D8AB1F6
P 8200 1350
F 0 "#PWR06" H 8200 1200 50  0001 C CNN
F 1 "VDD" V 8218 1477 50  0000 L CNN
F 2 "" H 8200 1350 50  0001 C CNN
F 3 "" H 8200 1350 50  0001 C CNN
	1    8200 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8200 1350 8300 1350
$Comp
L power:GND #PWR08
U 1 1 5D8AC3B5
P 9650 1050
F 0 "#PWR08" H 9650 800 50  0001 C CNN
F 1 "GND" V 9655 922 50  0000 R CNN
F 2 "" H 9650 1050 50  0001 C CNN
F 3 "" H 9650 1050 50  0001 C CNN
	1    9650 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 1150 8300 1150
Wire Wire Line
	8300 1150 8300 1250
Connection ~ 8300 1350
Wire Wire Line
	8300 1350 8500 1350
Wire Wire Line
	8500 1250 8300 1250
Connection ~ 8300 1250
Wire Wire Line
	8300 1250 8300 1350
Wire Wire Line
	8350 3050 8350 3100
Wire Wire Line
	8350 3400 8350 3700
Wire Wire Line
	8350 3050 8350 1700
Wire Wire Line
	8350 1700 9600 1700
Wire Wire Line
	9600 1700 9600 1350
Wire Wire Line
	9600 1350 9450 1350
Connection ~ 8350 3050
$Comp
L power:VDD #PWR09
U 1 1 5D8AE542
P 10300 1150
F 0 "#PWR09" H 10300 1000 50  0001 C CNN
F 1 "VDD" V 10317 1278 50  0000 L CNN
F 2 "" H 10300 1150 50  0001 C CNN
F 3 "" H 10300 1150 50  0001 C CNN
	1    10300 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D8B3482
P 10050 1150
F 0 "R3" V 9843 1150 50  0000 C CNN
F 1 "3k3" V 9934 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9980 1150 50  0001 C CNN
F 3 "~" H 10050 1150 50  0001 C CNN
	1    10050 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 1150 10300 1150
Wire Wire Line
	9450 1150 9650 1150
Wire Wire Line
	9450 1250 9650 1250
Wire Wire Line
	9650 1250 9650 1150
Connection ~ 9650 1150
Wire Wire Line
	9650 1150 9900 1150
Wire Wire Line
	9450 1050 9650 1050
Wire Wire Line
	3250 1950 3250 2050
Wire Wire Line
	3250 2050 3400 2050
Wire Wire Line
	4200 1950 4200 2050
Wire Wire Line
	4200 2050 4000 2050
Wire Wire Line
	3700 2350 3700 2900
$EndSCHEMATC
