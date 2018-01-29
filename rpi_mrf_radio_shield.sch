EESchema Schematic File Version 4
EELAYER 26 0
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
Wire Wire Line
	3700 5000 3800 5000
Wire Wire Line
	6450 2200 6500 2200
$Comp
L Connector_Generic:Conn_01x06_Female J1
U 1 1 5A6106B2
P 1500 4450
F 0 "J1" H 1527 4426 50  0000 L CNN
F 1 "Conn_01x06_Female" H 1527 4335 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 1500 4450 50  0001 C CNN
F 3 "~" H 1500 4450 50  0001 C CNN
	1    1500 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06_Female J2
U 1 1 5A610736
P 2550 4600
F 0 "J2" H 2577 4576 50  0000 L CNN
F 1 "Conn_01x06_Female" H 2577 4485 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 2550 4600 50  0001 C CNN
F 3 "~" H 2550 4600 50  0001 C CNN
	1    2550 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 4250 1150 4250
Wire Wire Line
	1300 4350 1150 4350
Wire Wire Line
	1300 4450 1150 4450
Wire Wire Line
	1300 4550 1150 4550
Wire Wire Line
	1300 4650 1150 4650
Wire Wire Line
	1300 4750 1150 4750
Text GLabel 1150 4350 0    50   Input ~ 0
RST
Text GLabel 1150 4450 0    50   Input ~ 0
WAKE
Text GLabel 1150 4550 0    50   Input ~ 0
INT
Text GLabel 1150 4650 0    50   Input ~ 0
MOSI
Text GLabel 1150 4750 0    50   Input ~ 0
SCK
Text GLabel 2750 4500 2    50   Input ~ 0
VCC
Text GLabel 2750 4800 2    50   Input ~ 0
MISO
Text GLabel 4300 4250 3    50   Input ~ 0
VCC
Text GLabel 2750 4700 2    50   Input ~ 0
CS
Text GLabel 4000 2100 3    50   Input ~ 0
CS
Text GLabel 7950 2200 2    50   Input ~ 0
CS
Text GLabel 3900 2100 3    50   Input ~ 0
MOSI
Text GLabel 3800 2100 3    50   Input ~ 0
MISO
Text GLabel 3700 2100 3    50   Input ~ 0
SCK
Text GLabel 3500 5000 1    50   Input ~ 0
VCC
Text GLabel 4800 2100 3    50   Input ~ 0
INT
Text GLabel 5000 2100 3    50   Input ~ 0
RST
Text GLabel 4900 2100 3    50   Input ~ 0
WAKE
$Comp
L Transistor_FET:MMBF170 Q1
U 1 1 5A6209E3
P 7600 4450
F 0 "Q1" H 7805 4496 50  0000 L CNN
F 1 "MMBF170" H 7805 4405 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23" H 7800 4375 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30104.pdf" H 7600 4450 50  0001 L CNN
	1    7600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4450 7300 4450
Connection ~ 7300 4450
Wire Wire Line
	7300 4450 7400 4450
Text GLabel 7700 3300 0    50   Input ~ 0
FET_D
Text GLabel 6550 4450 0    50   Input ~ 0
MCU_SW
Text GLabel 9300 3300 0    50   Input ~ 0
VCC
Wire Wire Line
	9300 3200 9300 3300
Text GLabel 5200 5000 1    50   Input ~ 0
MCU_SW
Text GLabel 4600 4250 3    50   Input ~ 0
SCK
Text GLabel 4500 4250 3    50   Input ~ 0
MISO
Text GLabel 4400 4250 3    50   Input ~ 0
MOSI
Text GLabel 4600 3450 1    50   Input ~ 0
CS
Wire Wire Line
	4400 4250 4400 4100
Text GLabel 4500 3450 1    50   Input ~ 0
WAKE
Text GLabel 4300 3450 1    50   Input ~ 0
RST
Text GLabel 4200 3450 1    50   Input ~ 0
INT
Text GLabel 4700 4250 3    50   Input ~ 0
FET_D
Text GLabel 4400 3450 1    50   Input ~ 0
FET_D
Text GLabel 6450 2200 0    50   Input ~ 0
VCC
Text GLabel 6200 3700 0    50   Input ~ 0
VCC
Wire Wire Line
	6200 3700 6250 3700
$Comp
L Device:R R1
U 1 1 5A65A2ED
P 7000 2200
F 0 "R1" V 6793 2200 50  0000 C CNN
F 1 "1.5k" V 6884 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6930 2200 50  0001 C CNN
F 3 "" H 7000 2200 50  0001 C CNN
	1    7000 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5A65BA69
P 6750 3700
F 0 "R2" V 6543 3700 50  0000 C CNN
F 1 "1.5k" V 6634 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6680 3700 50  0001 C CNN
F 3 "" H 6750 3700 50  0001 C CNN
	1    6750 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5A65CDBC
P 7300 4700
F 0 "R4" H 7230 4654 50  0000 R CNN
F 1 "47k" H 7230 4745 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7230 4700 50  0001 C CNN
F 3 "" H 7300 4700 50  0001 C CNN
	1    7300 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 4450 7300 4550
Wire Wire Line
	7300 4900 7300 4850
Wire Wire Line
	7700 4650 7700 4900
Wire Wire Line
	7300 4900 7700 4900
Connection ~ 7700 4900
Wire Wire Line
	7700 4900 7700 5400
$Comp
L Device:R R3
U 1 1 5A660F53
P 6900 4450
F 0 "R3" V 7107 4450 50  0000 C CNN
F 1 "8k" V 7016 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6830 4450 50  0001 C CNN
F 3 "" H 6900 4450 50  0001 C CNN
	1    6900 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 4450 6750 4450
$Comp
L Device:LED D_PWR1
U 1 1 5A663203
P 6400 3700
F 0 "D_PWR1" H 6392 3445 50  0000 C CNN
F 1 "LED" H 6392 3536 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 6400 3700 50  0001 C CNN
F 3 "~" H 6400 3700 50  0001 C CNN
	1    6400 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D_ACT1
U 1 1 5A6634B3
P 6650 2200
F 0 "D_ACT1" H 6642 1945 50  0000 C CNN
F 1 "LED" H 6642 2036 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 6650 2200 50  0001 C CNN
F 3 "~" H 6650 2200 50  0001 C CNN
	1    6650 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 2200 6850 2200
Wire Wire Line
	7150 2200 7250 2200
Wire Wire Line
	6600 3700 6550 3700
$Comp
L Device:Jumper JP1
U 1 1 5A66AF68
P 7550 2200
F 0 "JP1" H 7550 2464 50  0000 C CNN
F 1 "Jumper" H 7550 2373 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7550 2200 50  0001 C CNN
F 3 "" H 7550 2200 50  0001 C CNN
	1    7550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2200 7950 2200
$Comp
L Device:Jumper JP2
U 1 1 5A66C369
P 7300 3700
F 0 "JP2" H 7300 3964 50  0000 C CNN
F 1 "Jumper" H 7300 3873 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7300 3700 50  0001 C CNN
F 3 "" H 7300 3700 50  0001 C CNN
	1    7300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3300 7700 3700
Wire Wire Line
	7700 3700 7600 3700
Connection ~ 7700 3700
Wire Wire Line
	6900 3700 7000 3700
Text GLabel 2750 4300 2    50   Input ~ 0
FET_D
Text GLabel 2750 4400 2    50   Input ~ 0
FET_D
Text GLabel 1150 4250 0    50   Input ~ 0
FET_D
$Comp
L Connector_Generic:Conn_01x08_Male J3
U 1 1 5A64C74C
P 3500 5350
F 0 "J3" V 3428 5277 50  0000 C CNN
F 1 "Conn_01x08_Male" V 3337 5277 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 3500 5350 50  0001 C CNN
F 3 "~" H 3500 5350 50  0001 C CNN
	1    3500 5350
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x06_Male J6
U 1 1 5A6531E8
P 5200 5350
F 0 "J6" V 5353 4963 50  0000 R CNN
F 1 "Conn_01x06_Male" V 5262 4963 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 5200 5350 50  0001 C CNN
F 3 "~" H 5200 5350 50  0001 C CNN
	1    5200 5350
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x08_Male J5
U 1 1 5A6545BA
P 5200 1650
F 0 "J5" V 5035 1576 50  0000 C CNN
F 1 "Conn_01x08_Male" V 5126 1576 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 5200 1650 50  0001 C CNN
F 3 "~" H 5200 1650 50  0001 C CNN
	1    5200 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 1850 4800 2100
Wire Wire Line
	4900 1850 4900 2100
Wire Wire Line
	5000 1850 5000 2100
$Comp
L Connector_Generic:Conn_01x10_Male J4
U 1 1 5A659CFC
P 3800 1650
F 0 "J4" V 3635 1576 50  0000 C CNN
F 1 "Conn_01x10_Male" V 3726 1576 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10_Pitch2.54mm" H 3800 1650 50  0001 C CNN
F 3 "~" H 3800 1650 50  0001 C CNN
	1    3800 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 1850 4000 2100
Wire Wire Line
	3800 1850 3800 2100
Wire Wire Line
	3700 1850 3700 2100
Wire Wire Line
	4300 4100 4300 4250
Wire Wire Line
	4500 4100 4500 4250
Wire Wire Line
	4600 4100 4600 4250
Wire Wire Line
	4700 4100 4700 4250
Wire Wire Line
	3700 5150 3700 5000
Wire Wire Line
	3500 5150 3500 5000
Wire Wire Line
	3800 5150 3800 5000
Wire Wire Line
	4600 3450 4600 3600
Wire Wire Line
	4500 3450 4500 3600
Wire Wire Line
	4400 3450 4400 3600
Wire Wire Line
	4300 3450 4300 3600
Wire Wire Line
	4200 3450 4200 3600
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J7
U 1 1 5A670977
P 4400 3900
F 0 "J7" V 4496 3512 50  0000 R CNN
F 1 "Conn_02x06_Odd_Even" V 4405 3512 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 4400 3900 50  0001 C CNN
F 3 "~" H 4400 3900 50  0001 C CNN
	1    4400 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 2250 3600 1850
Wire Wire Line
	3900 1850 3900 2100
$Comp
L power:GND #PWR01
U 1 1 5A68180B
P 7700 5400
F 0 "#PWR01" H 7700 5150 50  0001 C CNN
F 1 "GND" H 7705 5227 50  0000 C CNN
F 2 "" H 7700 5400 50  0001 C CNN
F 3 "" H 7700 5400 50  0001 C CNN
	1    7700 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5A681C49
P 3600 2250
F 0 "#PWR02" H 3600 2000 50  0001 C CNN
F 1 "GND" H 3605 2077 50  0000 C CNN
F 2 "" H 3600 2250 50  0001 C CNN
F 3 "" H 3600 2250 50  0001 C CNN
	1    3600 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5A6820F2
P 4050 5000
F 0 "#PWR03" H 4050 4750 50  0001 C CNN
F 1 "GND" H 4055 4827 50  0000 C CNN
F 2 "" H 4050 5000 50  0001 C CNN
F 3 "" H 4050 5000 50  0001 C CNN
	1    4050 5000
	1    0    0    -1  
$EndComp
Connection ~ 3800 5000
$Comp
L Graphic:Logo_Open_Hardware_Small LOGO1
U 1 1 5A666486
P 950 7450
F 0 "LOGO1" H 950 7725 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 950 7225 50  0001 C CNN
F 2 "Symbols:OSHW-Logo_5.7x6mm_SilkScreen" H 950 7450 50  0001 C CNN
F 3 "~" H 950 7450 50  0001 C CNN
	1    950  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3700 7700 4250
Wire Wire Line
	6250 3700 6250 4000
Wire Wire Line
	6250 4000 7300 4000
Connection ~ 6250 3700
$Comp
L Device:R R5
U 1 1 5A66DCCB
P 7300 4200
F 0 "R5" H 7230 4154 50  0000 R CNN
F 1 "<inf>k" H 7230 4245 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7230 4200 50  0001 C CNN
F 3 "" H 7300 4200 50  0001 C CNN
	1    7300 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 4000 7300 4050
Wire Wire Line
	7300 4350 7300 4450
Wire Wire Line
	3800 5000 4050 5000
Wire Wire Line
	5200 5150 5200 5000
$Comp
L power:VCC #PWR?
U 1 1 5A6F0812
P 9300 3200
F 0 "#PWR?" H 9300 3050 50  0001 C CNN
F 1 "VCC" H 9317 3373 50  0000 C CNN
F 2 "" H 9300 3200 50  0001 C CNN
F 3 "" H 9300 3200 50  0001 C CNN
	1    9300 3200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
