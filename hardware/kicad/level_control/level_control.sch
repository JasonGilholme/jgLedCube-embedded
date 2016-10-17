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
LIBS:heatsink
LIBS:groundLogicBoard-cache
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
L 74HC595 U1
U 1 1 56373D7C
P 4350 3800
F 0 "U1" H 4500 4400 70  0000 C CNN
F 1 "74HC595" H 4350 3200 70  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 4350 3800 60  0001 C CNN
F 3 "" H 4350 3800 60  0000 C CNN
	1    4350 3800
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56373F84
P 5350 3450
F 0 "R1" V 5430 3450 50  0000 C CNN
F 1 "10k" V 5350 3450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5280 3450 30  0001 C CNN
F 3 "" H 5350 3450 30  0000 C CNN
	1    5350 3450
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 56374049
P 5350 3650
F 0 "R2" V 5430 3650 50  0000 C CNN
F 1 "10k" V 5350 3650 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5280 3650 30  0001 C CNN
F 3 "" H 5350 3650 30  0000 C CNN
	1    5350 3650
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 56374066
P 5350 3850
F 0 "R3" V 5430 3850 50  0000 C CNN
F 1 "10k" V 5350 3850 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5280 3850 30  0001 C CNN
F 3 "" H 5350 3850 30  0000 C CNN
	1    5350 3850
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 56374086
P 5350 4050
F 0 "R4" V 5430 4050 50  0000 C CNN
F 1 "10k" V 5350 4050 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5280 4050 30  0001 C CNN
F 3 "" H 5350 4050 30  0000 C CNN
	1    5350 4050
	0    1    1    0   
$EndComp
$Comp
L BUZ11 Q1
U 1 1 563741E7
P 6300 3300
F 0 "Q1" H 6550 3375 50  0000 L CNN
F 1 "BUZ11" H 6550 3300 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical_LargePads" H 6550 3225 50  0000 L CIN
F 3 "" H 6300 3300 50  0000 L CNN
	1    6300 3300
	1    0    0    -1  
$EndComp
$Comp
L BUZ11 Q2
U 1 1 563742A5
P 6750 3500
F 0 "Q2" H 7000 3575 50  0000 L CNN
F 1 "BUZ11" H 7000 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical_LargePads" H 7000 3425 50  0000 L CIN
F 3 "" H 6750 3500 50  0000 L CNN
	1    6750 3500
	1    0    0    -1  
$EndComp
$Comp
L BUZ11 Q3
U 1 1 563742F8
P 7200 3700
F 0 "Q3" H 7450 3775 50  0000 L CNN
F 1 "BUZ11" H 7450 3700 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical_LargePads" H 7450 3625 50  0000 L CIN
F 3 "" H 7200 3700 50  0000 L CNN
	1    7200 3700
	1    0    0    -1  
$EndComp
$Comp
L BUZ11 Q4
U 1 1 56374354
P 7650 3900
F 0 "Q4" H 7900 3975 50  0000 L CNN
F 1 "BUZ11" H 7900 3900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical_LargePads" H 7900 3825 50  0000 L CIN
F 3 "" H 7650 3900 50  0000 L CNN
	1    7650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3450 5200 3450
Wire Wire Line
	5050 3650 5200 3650
Wire Wire Line
	5050 3850 5200 3850
Wire Wire Line
	5050 4050 5200 4050
Wire Wire Line
	5500 3450 5600 3450
Wire Wire Line
	5600 3450 5600 4600
Wire Wire Line
	5500 3650 5600 3650
Connection ~ 5600 3650
Wire Wire Line
	5500 3850 5600 3850
Connection ~ 5600 3850
Wire Wire Line
	5500 4050 5600 4050
Connection ~ 5600 4050
Wire Wire Line
	5150 3450 5150 3350
Wire Wire Line
	5150 3350 6100 3350
Connection ~ 5150 3450
Wire Wire Line
	5150 3650 5150 3550
Wire Wire Line
	5150 3550 6550 3550
Connection ~ 5150 3650
Wire Wire Line
	5150 3850 5150 3750
Wire Wire Line
	5150 3750 7000 3750
Connection ~ 5150 3850
Wire Wire Line
	5150 4050 5150 3950
Wire Wire Line
	5150 3950 7450 3950
Connection ~ 5150 4050
Wire Wire Line
	6400 4600 6400 3500
Connection ~ 5600 4600
Wire Wire Line
	6850 4600 6850 3700
Connection ~ 6400 4600
Wire Wire Line
	7300 4600 7300 3900
Connection ~ 6850 4600
Wire Wire Line
	7750 4600 7750 4100
Connection ~ 7300 4600
Wire Wire Line
	6400 3100 6400 2850
Wire Wire Line
	6850 3300 6850 2850
Wire Wire Line
	7300 3500 7300 2850
Wire Wire Line
	7750 3700 7750 2850
Wire Wire Line
	2900 3100 2900 4750
Wire Wire Line
	3000 3100 3000 4750
Wire Wire Line
	3100 3100 3100 4750
Wire Wire Line
	3650 3950 2900 3950
Connection ~ 2900 3950
Wire Wire Line
	3650 3550 3100 3550
Connection ~ 3100 3550
Wire Wire Line
	3650 3850 3000 3850
Connection ~ 3000 3850
$Comp
L CONN_01X01 P1
U 1 1 56372E80
P 6400 2650
F 0 "P1" H 6400 2750 50  0000 C CNN
F 1 "LEVEL_1" V 6500 2650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01" H 6400 2650 60  0001 C CNN
F 3 "" H 6400 2650 60  0000 C CNN
	1    6400 2650
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 56372F07
P 6850 2650
F 0 "P2" H 6850 2750 50  0000 C CNN
F 1 "LEVEL_2" V 6950 2650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01" H 6850 2650 60  0001 C CNN
F 3 "" H 6850 2650 60  0000 C CNN
	1    6850 2650
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P3
U 1 1 56372F50
P 7300 2650
F 0 "P3" H 7300 2750 50  0000 C CNN
F 1 "LEVEL_3" V 7400 2650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01" H 7300 2650 60  0001 C CNN
F 3 "" H 7300 2650 60  0000 C CNN
	1    7300 2650
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 56372FAC
P 7750 2650
F 0 "P4" H 7750 2750 50  0000 C CNN
F 1 "LEVEL_4" V 7850 2650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01" H 7750 2650 60  0001 C CNN
F 3 "" H 7750 2650 60  0000 C CNN
	1    7750 2650
	0    -1   -1   0   
$EndComp
NoConn ~ 5050 3350
NoConn ~ 5050 3550
NoConn ~ 5050 3750
NoConn ~ 5050 3950
Wire Wire Line
	3650 3350 2800 3350
Wire Wire Line
	2800 3350 2800 3100
Wire Wire Line
	5050 4250 5050 4500
Wire Wire Line
	5050 4500 2800 4500
Wire Wire Line
	2800 4500 2800 4750
$Comp
L HEATSINK_JASE HS1
U 1 1 563F5956
P 5900 1900
F 0 "HS1" H 5900 2000 60  0000 C CNN
F 1 "HEATSINK_JASE" H 5900 1900 60  0000 C CNN
F 2 "kicadFootprints:HeatsinkWithExposedCopper" H 5900 1900 60  0001 C CNN
F 3 "" H 5900 1900 60  0000 C CNN
	1    5900 1900
	1    0    0    -1  
$EndComp
$Comp
L HEATSINK_JASE HS2
U 1 1 563F59D3
P 6700 1900
F 0 "HS2" H 6700 2000 60  0000 C CNN
F 1 "HEATSINK_JASE" H 6700 1900 60  0000 C CNN
F 2 "kicadFootprints:HeatsinkWithExposedCopper" H 6700 1900 60  0001 C CNN
F 3 "" H 6700 1900 60  0000 C CNN
	1    6700 1900
	1    0    0    -1  
$EndComp
$Comp
L HEATSINK_JASE HS3
U 1 1 563F5A34
P 7450 1900
F 0 "HS3" H 7450 2000 60  0000 C CNN
F 1 "HEATSINK_JASE" H 7450 1900 60  0000 C CNN
F 2 "kicadFootprints:HeatsinkWithExposedCopper" H 7450 1900 60  0001 C CNN
F 3 "" H 7450 1900 60  0000 C CNN
	1    7450 1900
	1    0    0    -1  
$EndComp
$Comp
L HEATSINK_JASE HS4
U 1 1 563F5A96
P 8200 1900
F 0 "HS4" H 8200 2000 60  0000 C CNN
F 1 "HEATSINK_JASE" H 8200 1900 60  0000 C CNN
F 2 "kicadFootprints:HeatsinkWithExposedCopper" H 8200 1900 60  0001 C CNN
F 3 "" H 8200 1900 60  0000 C CNN
	1    8200 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5642D28F
P 4050 4900
F 0 "#PWR01" H 4050 4650 50  0001 C CNN
F 1 "GND" H 4050 4750 50  0000 C CNN
F 2 "" H 4050 4900 60  0000 C CNN
F 3 "" H 4050 4900 60  0000 C CNN
	1    4050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4350 4050 4900
Wire Wire Line
	4050 4600 7750 4600
Connection ~ 4050 4600
$Comp
L CONN_01X04 P6
U 1 1 5642EE7A
P 2950 4950
F 0 "P6" H 2950 5200 50  0000 C CNN
F 1 "CONN_01X04" V 3050 4950 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 2950 4950 60  0001 C CNN
F 3 "" H 2950 4950 60  0000 C CNN
	1    2950 4950
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X04 P5
U 1 1 5642FDA1
P 2950 2900
F 0 "P5" H 2950 3150 50  0000 C CNN
F 1 "CONN_01X04" V 3050 2900 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 2950 2900 60  0001 C CNN
F 3 "" H 2950 2900 60  0000 C CNN
	1    2950 2900
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR02
U 1 1 56430B8E
P 3650 3650
F 0 "#PWR02" H 3650 3500 50  0001 C CNN
F 1 "+5V" H 3650 3790 50  0000 C CNN
F 2 "" H 3650 3650 60  0000 C CNN
F 3 "" H 3650 3650 60  0000 C CNN
	1    3650 3650
	0    -1   -1   0   
$EndComp
$Comp
L CONN_02X02 P7
U 1 1 56431B81
P 3700 6100
F 0 "P7" H 3700 6250 50  0000 C CNN
F 1 "CONN_02X02" H 3700 5950 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x02" H 3700 4900 60  0001 C CNN
F 3 "" H 3700 4900 60  0000 C CNN
	1    3700 6100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 56431FF4
P 3450 6050
F 0 "#PWR03" H 3450 5900 50  0001 C CNN
F 1 "+5V" H 3450 6190 50  0000 C CNN
F 2 "" H 3450 6050 60  0000 C CNN
F 3 "" H 3450 6050 60  0000 C CNN
	1    3450 6050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 56432056
P 3950 6050
F 0 "#PWR04" H 3950 5900 50  0001 C CNN
F 1 "+5V" H 3950 6190 50  0000 C CNN
F 2 "" H 3950 6050 60  0000 C CNN
F 3 "" H 3950 6050 60  0000 C CNN
	1    3950 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5643218D
P 3450 6150
F 0 "#PWR05" H 3450 5900 50  0001 C CNN
F 1 "GND" H 3450 6000 50  0000 C CNN
F 2 "" H 3450 6150 60  0000 C CNN
F 3 "" H 3450 6150 60  0000 C CNN
	1    3450 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 564321D4
P 3950 6150
F 0 "#PWR06" H 3950 5900 50  0001 C CNN
F 1 "GND" H 3950 6000 50  0000 C CNN
F 2 "" H 3950 6150 60  0000 C CNN
F 3 "" H 3950 6150 60  0000 C CNN
	1    3950 6150
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X02 P9
U 1 1 564327BC
P 4450 6100
F 0 "P9" H 4450 6250 50  0000 C CNN
F 1 "CONN_02X02" H 4450 5950 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x02" H 4450 4900 60  0001 C CNN
F 3 "" H 4450 4900 60  0000 C CNN
	1    4450 6100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 564327C2
P 4200 6050
F 0 "#PWR07" H 4200 5900 50  0001 C CNN
F 1 "+5V" H 4200 6190 50  0000 C CNN
F 2 "" H 4200 6050 60  0000 C CNN
F 3 "" H 4200 6050 60  0000 C CNN
	1    4200 6050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 564327C8
P 4700 6050
F 0 "#PWR08" H 4700 5900 50  0001 C CNN
F 1 "+5V" H 4700 6190 50  0000 C CNN
F 2 "" H 4700 6050 60  0000 C CNN
F 3 "" H 4700 6050 60  0000 C CNN
	1    4700 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 564327CE
P 4200 6150
F 0 "#PWR09" H 4200 5900 50  0001 C CNN
F 1 "GND" H 4200 6000 50  0000 C CNN
F 2 "" H 4200 6150 60  0000 C CNN
F 3 "" H 4200 6150 60  0000 C CNN
	1    4200 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 564327D4
P 4700 6150
F 0 "#PWR010" H 4700 5900 50  0001 C CNN
F 1 "GND" H 4700 6000 50  0000 C CNN
F 2 "" H 4700 6150 60  0000 C CNN
F 3 "" H 4700 6150 60  0000 C CNN
	1    4700 6150
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X02 P8
U 1 1 5643299C
P 3700 6750
F 0 "P8" H 3700 6900 50  0000 C CNN
F 1 "CONN_02X02" H 3700 6600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x02" H 3700 5550 60  0001 C CNN
F 3 "" H 3700 5550 60  0000 C CNN
	1    3700 6750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 564329A2
P 3450 6700
F 0 "#PWR011" H 3450 6550 50  0001 C CNN
F 1 "+5V" H 3450 6840 50  0000 C CNN
F 2 "" H 3450 6700 60  0000 C CNN
F 3 "" H 3450 6700 60  0000 C CNN
	1    3450 6700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 564329A8
P 3950 6700
F 0 "#PWR012" H 3950 6550 50  0001 C CNN
F 1 "+5V" H 3950 6840 50  0000 C CNN
F 2 "" H 3950 6700 60  0000 C CNN
F 3 "" H 3950 6700 60  0000 C CNN
	1    3950 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 564329AE
P 3450 6800
F 0 "#PWR013" H 3450 6550 50  0001 C CNN
F 1 "GND" H 3450 6650 50  0000 C CNN
F 2 "" H 3450 6800 60  0000 C CNN
F 3 "" H 3450 6800 60  0000 C CNN
	1    3450 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 564329B4
P 3950 6800
F 0 "#PWR014" H 3950 6550 50  0001 C CNN
F 1 "GND" H 3950 6650 50  0000 C CNN
F 2 "" H 3950 6800 60  0000 C CNN
F 3 "" H 3950 6800 60  0000 C CNN
	1    3950 6800
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X02 P10
U 1 1 564329BA
P 4450 6750
F 0 "P10" H 4450 6900 50  0000 C CNN
F 1 "CONN_02X02" H 4450 6600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x02" H 4450 5550 60  0001 C CNN
F 3 "" H 4450 5550 60  0000 C CNN
	1    4450 6750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 564329C0
P 4200 6700
F 0 "#PWR015" H 4200 6550 50  0001 C CNN
F 1 "+5V" H 4200 6840 50  0000 C CNN
F 2 "" H 4200 6700 60  0000 C CNN
F 3 "" H 4200 6700 60  0000 C CNN
	1    4200 6700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 564329C6
P 4700 6700
F 0 "#PWR016" H 4700 6550 50  0001 C CNN
F 1 "+5V" H 4700 6840 50  0000 C CNN
F 2 "" H 4700 6700 60  0000 C CNN
F 3 "" H 4700 6700 60  0000 C CNN
	1    4700 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 564329CC
P 4200 6800
F 0 "#PWR017" H 4200 6550 50  0001 C CNN
F 1 "GND" H 4200 6650 50  0000 C CNN
F 2 "" H 4200 6800 60  0000 C CNN
F 3 "" H 4200 6800 60  0000 C CNN
	1    4200 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 564329D2
P 4700 6800
F 0 "#PWR018" H 4700 6550 50  0001 C CNN
F 1 "GND" H 4700 6650 50  0000 C CNN
F 2 "" H 4700 6800 60  0000 C CNN
F 3 "" H 4700 6800 60  0000 C CNN
	1    4700 6800
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 564D32F9
P 4200 2850
F 0 "C1" H 4225 2950 50  0000 L CNN
F 1 "0.1uF" H 4225 2750 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 4238 2700 30  0001 C CNN
F 3 "" H 4200 2850 60  0000 C CNN
	1    4200 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR019
U 1 1 564D42D5
P 4350 3000
F 0 "#PWR019" H 4350 2750 50  0001 C CNN
F 1 "GND" H 4350 2850 50  0000 C CNN
F 2 "" H 4350 3000 60  0000 C CNN
F 3 "" H 4350 3000 60  0000 C CNN
	1    4350 3000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 564D4511
P 4050 2650
F 0 "#PWR020" H 4050 2500 50  0001 C CNN
F 1 "+5V" H 4050 2790 50  0000 C CNN
F 2 "" H 4050 2650 60  0000 C CNN
F 3 "" H 4050 2650 60  0000 C CNN
	1    4050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2650 4050 3250
Connection ~ 4050 2850
Wire Wire Line
	4350 2850 4350 3000
$EndSCHEMATC
