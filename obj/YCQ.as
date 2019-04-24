opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 55553"

opt pagewidth 120

	opt pm

	processor	16F1938
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 46 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\MCUProject\YCQ\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\MCUProject\YCQ\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\MCUProject\YCQ\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\MCUProject\YCQ\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\MCUProject\YCQ\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\MCUProject\YCQ\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\MCUProject\YCQ\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\MCUProject\YCQ\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\MCUProject\YCQ\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\MCUProject\YCQ\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\MCUProject\YCQ\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\MCUProject\YCQ\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\MCUProject\YCQ\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\MCUProject\YCQ\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\MCUProject\YCQ\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\MCUProject\YCQ\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\MCUProject\YCQ\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\MCUProject\YCQ\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\MCUProject\YCQ\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\MCUProject\YCQ\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\MCUProject\YCQ\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\MCUProject\YCQ\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\MCUProject\YCQ\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\MCUProject\YCQ\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\MCUProject\YCQ\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\MCUProject\YCQ\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\MCUProject\YCQ\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\MCUProject\YCQ\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\MCUProject\YCQ\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\MCUProject\YCQ\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\MCUProject\YCQ\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\MCUProject\YCQ\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\MCUProject\YCQ\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\MCUProject\YCQ\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\MCUProject\YCQ\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\MCUProject\YCQ\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\MCUProject\YCQ\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\MCUProject\YCQ\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\MCUProject\YCQ\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\MCUProject\YCQ\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\MCUProject\YCQ\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\MCUProject\YCQ\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\MCUProject\YCQ\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\MCUProject\YCQ\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\MCUProject\YCQ\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\MCUProject\YCQ\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\MCUProject\YCQ\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\MCUProject\YCQ\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\MCUProject\YCQ\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\MCUProject\YCQ\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\MCUProject\YCQ\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\MCUProject\YCQ\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\MCUProject\YCQ\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\MCUProject\YCQ\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\MCUProject\YCQ\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\MCUProject\YCQ\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\MCUProject\YCQ\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\MCUProject\YCQ\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\MCUProject\YCQ\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\MCUProject\YCQ\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\MCUProject\YCQ\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\MCUProject\YCQ\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\MCUProject\YCQ\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\MCUProject\YCQ\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\MCUProject\YCQ\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\MCUProject\YCQ\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\MCUProject\YCQ\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\MCUProject\YCQ\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\MCUProject\YCQ\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\MCUProject\YCQ\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\MCUProject\YCQ\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\MCUProject\YCQ\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\MCUProject\YCQ\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\MCUProject\YCQ\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\MCUProject\YCQ\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\MCUProject\YCQ\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\MCUProject\YCQ\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\MCUProject\YCQ\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\MCUProject\YCQ\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\MCUProject\YCQ\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\MCUProject\YCQ\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\MCUProject\YCQ\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\MCUProject\YCQ\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\MCUProject\YCQ\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\MCUProject\YCQ\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\MCUProject\YCQ\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\MCUProject\YCQ\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\MCUProject\YCQ\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\MCUProject\YCQ\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\MCUProject\YCQ\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\MCUProject\YCQ\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\MCUProject\YCQ\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\MCUProject\YCQ\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\MCUProject\YCQ\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\MCUProject\YCQ\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\MCUProject\YCQ\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\MCUProject\YCQ\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\MCUProject\YCQ\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\MCUProject\YCQ\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\MCUProject\YCQ\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\MCUProject\YCQ\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\MCUProject\YCQ\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\MCUProject\YCQ\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\MCUProject\YCQ\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\MCUProject\YCQ\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\MCUProject\YCQ\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\MCUProject\YCQ\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\MCUProject\YCQ\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\MCUProject\YCQ\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\MCUProject\YCQ\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\MCUProject\YCQ\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\MCUProject\YCQ\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\MCUProject\YCQ\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\MCUProject\YCQ\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\MCUProject\YCQ\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\MCUProject\YCQ\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\MCUProject\YCQ\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\MCUProject\YCQ\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\MCUProject\YCQ\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\MCUProject\YCQ\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\MCUProject\YCQ\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\MCUProject\YCQ\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\MCUProject\YCQ\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\MCUProject\YCQ\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\MCUProject\YCQ\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\MCUProject\YCQ\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\MCUProject\YCQ\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\MCUProject\YCQ\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\MCUProject\YCQ\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\MCUProject\YCQ\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\MCUProject\YCQ\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\MCUProject\YCQ\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\MCUProject\YCQ\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\MCUProject\YCQ\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\MCUProject\YCQ\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\MCUProject\YCQ\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\MCUProject\YCQ\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\MCUProject\YCQ\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\MCUProject\YCQ\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\MCUProject\YCQ\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\MCUProject\YCQ\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\MCUProject\YCQ\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\MCUProject\YCQ\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\MCUProject\YCQ\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\MCUProject\YCQ\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\MCUProject\YCQ\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\MCUProject\YCQ\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\MCUProject\YCQ\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\MCUProject\YCQ\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\MCUProject\YCQ\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\MCUProject\YCQ\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\MCUProject\YCQ\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\MCUProject\YCQ\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\MCUProject\YCQ\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\MCUProject\YCQ\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\MCUProject\YCQ\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\MCUProject\YCQ\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\MCUProject\YCQ\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\MCUProject\YCQ\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\MCUProject\YCQ\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\MCUProject\YCQ\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\MCUProject\YCQ\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\MCUProject\YCQ\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\MCUProject\YCQ\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\MCUProject\YCQ\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\MCUProject\YCQ\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\MCUProject\YCQ\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,___ftdiv
	FNCALL	_main,_application_init
	FNCALL	_main,_crc16
	FNCALL	_main,_display_string_8x16
	FNCALL	_main,_driver_init
	FNCALL	_main,_handle_uart_rx_buf
	FNCALL	_main,_middle_init
	FNCALL	_main,_scan_key_value
	FNCALL	_main,_sprintf
	FNCALL	_main,_uart1_send_nbyte
	FNCALL	_sprintf,___awdiv
	FNCALL	_sprintf,___ftadd
	FNCALL	_sprintf,___ftge
	FNCALL	_sprintf,___ftmul
	FNCALL	_sprintf,___ftneg
	FNCALL	_sprintf,___ftsub
	FNCALL	_sprintf,___fttol
	FNCALL	_sprintf,___lldiv
	FNCALL	_sprintf,___llmod
	FNCALL	_sprintf,___lltoft
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,__div_to_l_
	FNCALL	_sprintf,__tdiv_to_l_
	FNCALL	_sprintf,_fround
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,_scale
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___awmod
	FNCALL	_scale,___ftmul
	FNCALL	_scale,___wmul
	FNCALL	_fround,___ftmul
	FNCALL	_fround,___lbdiv
	FNCALL	_fround,___lbmod
	FNCALL	_fround,___wmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___lltoft,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	_scan_key_value,_BEEP_SPEAK
	FNCALL	_scan_key_value,___ftadd
	FNCALL	_scan_key_value,___ftdiv
	FNCALL	_scan_key_value,___ftge
	FNCALL	_scan_key_value,___fttol
	FNCALL	_scan_key_value,___lbmod
	FNCALL	_scan_key_value,_crc16
	FNCALL	_scan_key_value,_disp_grap
	FNCALL	_scan_key_value,_uart1_send_nbyte
	FNCALL	_uart1_send_nbyte,_uart1_send_byte
	FNCALL	___ftadd,___ftpack
	FNCALL	_handle_uart_rx_buf,___awtoft
	FNCALL	_handle_uart_rx_buf,___lbtoft
	FNCALL	_handle_uart_rx_buf,_crc16
	FNCALL	_handle_uart_rx_buf,_delay_ms
	FNCALL	_handle_uart_rx_buf,_disp_grap
	FNCALL	_handle_uart_rx_buf,_display_string_8x16
	FNCALL	_display_string_8x16,_lcd_address
	FNCALL	_display_string_8x16,_transfer_data
	FNCALL	___lbtoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_driver_init,_init_beep
	FNCALL	_driver_init,_init_interrupt
	FNCALL	_driver_init,_init_key
	FNCALL	_driver_init,_init_lcd
	FNCALL	_driver_init,_init_led
	FNCALL	_driver_init,_init_osc
	FNCALL	_driver_init,_init_port
	FNCALL	_driver_init,_init_pwm
	FNCALL	_driver_init,_init_timer1
	FNCALL	_driver_init,_init_uart1
	FNCALL	_init_lcd,_clear_screen
	FNCALL	_init_lcd,_delay_us
	FNCALL	_init_lcd,_transfer_command
	FNCALL	_clear_screen,_lcd_address
	FNCALL	_clear_screen,_transfer_data
	FNCALL	_application_init,_BEEP_SPEAK
	FNCALL	_application_init,_delay_ms
	FNCALL	_application_init,_disp_grap
	FNCALL	_disp_grap,_lcd_address
	FNCALL	_disp_grap,_transfer_data
	FNCALL	_transfer_data,_delay_us
	FNCALL	_lcd_address,_transfer_command
	FNCALL	_transfer_command,_delay_us
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_light_pv
	global	_load_cc_I
	global	_load_percent
	global	_KEY_VALUE
	global	_display_lcd_flag
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\MCUProject\YCQ\src\key.c"
	line	62

;initializer for _light_pv
	retlw	0x0
	retlw	0x16
	retlw	0x44

	line	64

;initializer for _load_cc_I
	retlw	0x0
	retlw	0x4
	retlw	0x42

	line	66

;initializer for _load_percent
	retlw	0x0
	retlw	0x48
	retlw	0x42

	line	17

;initializer for _KEY_VALUE
	retlw	010h
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"D:\MCUProject\YCQ\src\interrupt.c"
	line	23

;initializer for _display_lcd_flag
	retlw	01h
	global	_ascii_table_8x16
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	global    __stringtab
__stringtab:
	retlw	0
psect	stringtext
	global    __end_of__stringtab
__end_of__stringtab:
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	18
_ascii_table_8x16:
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F8h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	033h
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	010h
	retlw	0Ch
	retlw	06h
	retlw	010h
	retlw	0Ch
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	040h
	retlw	0C0h
	retlw	078h
	retlw	040h
	retlw	0C0h
	retlw	078h
	retlw	040h
	retlw	0
	retlw	04h
	retlw	03Fh
	retlw	04h
	retlw	04h
	retlw	03Fh
	retlw	04h
	retlw	04h
	retlw	0
	retlw	0
	retlw	070h
	retlw	088h
	retlw	0FCh
	retlw	08h
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	018h
	retlw	020h
	retlw	0FFh
	retlw	021h
	retlw	01Eh
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	08h
	retlw	0F0h
	retlw	0
	retlw	0E0h
	retlw	018h
	retlw	0
	retlw	0
	retlw	0
	retlw	021h
	retlw	01Ch
	retlw	03h
	retlw	01Eh
	retlw	021h
	retlw	01Eh
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	08h
	retlw	088h
	retlw	070h
	retlw	0
	retlw	0
	retlw	0
	retlw	01Eh
	retlw	021h
	retlw	023h
	retlw	024h
	retlw	019h
	retlw	027h
	retlw	021h
	retlw	010h
	retlw	010h
	retlw	016h
	retlw	0Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	018h
	retlw	04h
	retlw	02h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	07h
	retlw	018h
	retlw	020h
	retlw	040h
	retlw	0
	retlw	0
	retlw	02h
	retlw	04h
	retlw	018h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	040h
	retlw	020h
	retlw	018h
	retlw	07h
	retlw	0
	retlw	0
	retlw	0
	retlw	040h
	retlw	040h
	retlw	080h
	retlw	0F0h
	retlw	080h
	retlw	040h
	retlw	040h
	retlw	0
	retlw	02h
	retlw	02h
	retlw	01h
	retlw	0Fh
	retlw	01h
	retlw	02h
	retlw	02h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01Fh
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0B0h
	retlw	070h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	060h
	retlw	018h
	retlw	04h
	retlw	0
	retlw	060h
	retlw	018h
	retlw	06h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	010h
	retlw	08h
	retlw	08h
	retlw	010h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0Fh
	retlw	010h
	retlw	020h
	retlw	020h
	retlw	010h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	010h
	retlw	010h
	retlw	0F8h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	0
	retlw	0
	retlw	0
	retlw	070h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	088h
	retlw	070h
	retlw	0
	retlw	0
	retlw	030h
	retlw	028h
	retlw	024h
	retlw	022h
	retlw	021h
	retlw	030h
	retlw	0
	retlw	0
	retlw	030h
	retlw	08h
	retlw	088h
	retlw	088h
	retlw	048h
	retlw	030h
	retlw	0
	retlw	0
	retlw	018h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	011h
	retlw	0Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	020h
	retlw	010h
	retlw	0F8h
	retlw	0
	retlw	0
	retlw	0
	retlw	07h
	retlw	04h
	retlw	024h
	retlw	024h
	retlw	03Fh
	retlw	024h
	retlw	0
	retlw	0
	retlw	0F8h
	retlw	08h
	retlw	088h
	retlw	088h
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0
	retlw	019h
	retlw	021h
	retlw	020h
	retlw	020h
	retlw	011h
	retlw	0Eh
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	010h
	retlw	088h
	retlw	088h
	retlw	018h
	retlw	0
	retlw	0
	retlw	0
	retlw	0Fh
	retlw	011h
	retlw	020h
	retlw	020h
	retlw	011h
	retlw	0Eh
	retlw	0
	retlw	0
	retlw	038h
	retlw	08h
	retlw	08h
	retlw	0C8h
	retlw	038h
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	070h
	retlw	088h
	retlw	08h
	retlw	08h
	retlw	088h
	retlw	070h
	retlw	0
	retlw	0
	retlw	01Ch
	retlw	022h
	retlw	021h
	retlw	021h
	retlw	022h
	retlw	01Ch
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	010h
	retlw	08h
	retlw	08h
	retlw	010h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0
	retlw	031h
	retlw	022h
	retlw	022h
	retlw	011h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	040h
	retlw	020h
	retlw	010h
	retlw	08h
	retlw	0
	retlw	0
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	020h
	retlw	0
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	0
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	0
	retlw	0
	retlw	08h
	retlw	010h
	retlw	020h
	retlw	040h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	010h
	retlw	08h
	retlw	04h
	retlw	02h
	retlw	01h
	retlw	0
	retlw	0
	retlw	070h
	retlw	048h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0F0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	036h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	030h
	retlw	0C8h
	retlw	028h
	retlw	0E8h
	retlw	010h
	retlw	0E0h
	retlw	0
	retlw	07h
	retlw	018h
	retlw	027h
	retlw	024h
	retlw	023h
	retlw	014h
	retlw	0Bh
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	038h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	03Ch
	retlw	023h
	retlw	02h
	retlw	02h
	retlw	027h
	retlw	038h
	retlw	020h
	retlw	08h
	retlw	0F8h
	retlw	088h
	retlw	088h
	retlw	088h
	retlw	070h
	retlw	0
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	011h
	retlw	0Eh
	retlw	0
	retlw	0C0h
	retlw	030h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	038h
	retlw	0
	retlw	07h
	retlw	018h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	010h
	retlw	08h
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	010h
	retlw	0E0h
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	010h
	retlw	0Fh
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	088h
	retlw	088h
	retlw	0E8h
	retlw	08h
	retlw	010h
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	023h
	retlw	020h
	retlw	018h
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	088h
	retlw	088h
	retlw	0E8h
	retlw	08h
	retlw	010h
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	0
	retlw	03h
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	030h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	038h
	retlw	0
	retlw	0
	retlw	07h
	retlw	018h
	retlw	020h
	retlw	020h
	retlw	022h
	retlw	01Eh
	retlw	02h
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	08h
	retlw	0
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	08h
	retlw	020h
	retlw	03Fh
	retlw	021h
	retlw	01h
	retlw	01h
	retlw	021h
	retlw	03Fh
	retlw	020h
	retlw	0
	retlw	08h
	retlw	08h
	retlw	0F8h
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	08h
	retlw	0F8h
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0C0h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	088h
	retlw	0C0h
	retlw	028h
	retlw	018h
	retlw	08h
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	01h
	retlw	026h
	retlw	038h
	retlw	020h
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	030h
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	0F8h
	retlw	0
	retlw	0F8h
	retlw	0F8h
	retlw	08h
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	0
	retlw	03Fh
	retlw	0
	retlw	03Fh
	retlw	020h
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	030h
	retlw	0C0h
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	08h
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	0
	retlw	07h
	retlw	018h
	retlw	03Fh
	retlw	0
	retlw	0E0h
	retlw	010h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	010h
	retlw	0E0h
	retlw	0
	retlw	0Fh
	retlw	010h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	010h
	retlw	0Fh
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0F0h
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	021h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	010h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	010h
	retlw	0E0h
	retlw	0
	retlw	0Fh
	retlw	018h
	retlw	024h
	retlw	024h
	retlw	038h
	retlw	050h
	retlw	04Fh
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	088h
	retlw	088h
	retlw	088h
	retlw	088h
	retlw	070h
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	0
	retlw	03h
	retlw	0Ch
	retlw	030h
	retlw	020h
	retlw	0
	retlw	070h
	retlw	088h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	038h
	retlw	0
	retlw	0
	retlw	038h
	retlw	020h
	retlw	021h
	retlw	021h
	retlw	022h
	retlw	01Ch
	retlw	0
	retlw	018h
	retlw	08h
	retlw	08h
	retlw	0F8h
	retlw	08h
	retlw	08h
	retlw	018h
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	08h
	retlw	0
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	08h
	retlw	0
	retlw	01Fh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	01Fh
	retlw	0
	retlw	08h
	retlw	078h
	retlw	088h
	retlw	0
	retlw	0
	retlw	0C8h
	retlw	038h
	retlw	08h
	retlw	0
	retlw	0
	retlw	07h
	retlw	038h
	retlw	0Eh
	retlw	01h
	retlw	0
	retlw	0
	retlw	0F8h
	retlw	08h
	retlw	0
	retlw	0F8h
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	0
	retlw	03h
	retlw	03Ch
	retlw	07h
	retlw	0
	retlw	07h
	retlw	03Ch
	retlw	03h
	retlw	0
	retlw	08h
	retlw	018h
	retlw	068h
	retlw	080h
	retlw	080h
	retlw	068h
	retlw	018h
	retlw	08h
	retlw	020h
	retlw	030h
	retlw	02Ch
	retlw	03h
	retlw	03h
	retlw	02Ch
	retlw	030h
	retlw	020h
	retlw	08h
	retlw	038h
	retlw	0C8h
	retlw	0
	retlw	0C8h
	retlw	038h
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	0
	retlw	0
	retlw	0
	retlw	010h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0C8h
	retlw	038h
	retlw	08h
	retlw	0
	retlw	020h
	retlw	038h
	retlw	026h
	retlw	021h
	retlw	020h
	retlw	020h
	retlw	018h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	0
	retlw	0
	retlw	0Ch
	retlw	030h
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	06h
	retlw	038h
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	0FEh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	04h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	02h
	retlw	02h
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	019h
	retlw	024h
	retlw	022h
	retlw	022h
	retlw	022h
	retlw	03Fh
	retlw	020h
	retlw	08h
	retlw	0F8h
	retlw	0
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03Fh
	retlw	011h
	retlw	020h
	retlw	020h
	retlw	011h
	retlw	0Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0Eh
	retlw	011h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	011h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	088h
	retlw	0F8h
	retlw	0
	retlw	0
	retlw	0Eh
	retlw	011h
	retlw	020h
	retlw	020h
	retlw	010h
	retlw	03Fh
	retlw	020h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	022h
	retlw	022h
	retlw	022h
	retlw	022h
	retlw	013h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	0F0h
	retlw	088h
	retlw	088h
	retlw	088h
	retlw	018h
	retlw	0
	retlw	020h
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	06Bh
	retlw	094h
	retlw	094h
	retlw	094h
	retlw	093h
	retlw	060h
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	021h
	retlw	0
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	0
	retlw	080h
	retlw	098h
	retlw	098h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	098h
	retlw	098h
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	08h
	retlw	0F8h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	024h
	retlw	02h
	retlw	02Dh
	retlw	030h
	retlw	020h
	retlw	0
	retlw	0
	retlw	08h
	retlw	08h
	retlw	0F8h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	0
	retlw	03Fh
	retlw	020h
	retlw	0
	retlw	03Fh
	retlw	080h
	retlw	080h
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	021h
	retlw	0
	retlw	0
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	01Fh
	retlw	0
	retlw	080h
	retlw	080h
	retlw	0
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0FFh
	retlw	0A1h
	retlw	020h
	retlw	020h
	retlw	011h
	retlw	0Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0Eh
	retlw	011h
	retlw	020h
	retlw	020h
	retlw	0A0h
	retlw	0FFh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	020h
	retlw	020h
	retlw	03Fh
	retlw	021h
	retlw	020h
	retlw	0
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	033h
	retlw	024h
	retlw	024h
	retlw	024h
	retlw	024h
	retlw	019h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	0E0h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	020h
	retlw	020h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	010h
	retlw	03Fh
	retlw	020h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	01h
	retlw	0Eh
	retlw	030h
	retlw	08h
	retlw	06h
	retlw	01h
	retlw	0
	retlw	080h
	retlw	080h
	retlw	0
	retlw	080h
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0Fh
	retlw	030h
	retlw	0Ch
	retlw	03h
	retlw	0Ch
	retlw	030h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	020h
	retlw	031h
	retlw	02Eh
	retlw	0Eh
	retlw	031h
	retlw	020h
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	081h
	retlw	08Eh
	retlw	070h
	retlw	018h
	retlw	06h
	retlw	01h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	021h
	retlw	030h
	retlw	02Ch
	retlw	022h
	retlw	021h
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	07Ch
	retlw	02h
	retlw	02h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03Fh
	retlw	040h
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	02h
	retlw	02h
	retlw	07Ch
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	040h
	retlw	040h
	retlw	03Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	06h
	retlw	01h
	retlw	01h
	retlw	02h
	retlw	02h
	retlw	04h
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global __end_of_ascii_table_8x16
__end_of_ascii_table_8x16:
	global	_CRCHi
psect	stringtext
	file	"D:\MCUProject\YCQ\src\Modbus.c"
	line	10
_CRCHi:
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	global __end_of_CRCHi
__end_of_CRCHi:
	global	_CRCLo
psect	stringtext
	file	"D:\MCUProject\YCQ\src\Modbus.c"
	line	40
_CRCLo:
	retlw	0
	retlw	0C0h
	retlw	0C1h
	retlw	01h
	retlw	0C3h
	retlw	03h
	retlw	02h
	retlw	0C2h
	retlw	0C6h
	retlw	06h
	retlw	07h
	retlw	0C7h
	retlw	05h
	retlw	0C5h
	retlw	0C4h
	retlw	04h
	retlw	0CCh
	retlw	0Ch
	retlw	0Dh
	retlw	0CDh
	retlw	0Fh
	retlw	0CFh
	retlw	0CEh
	retlw	0Eh
	retlw	0Ah
	retlw	0CAh
	retlw	0CBh
	retlw	0Bh
	retlw	0C9h
	retlw	09h
	retlw	08h
	retlw	0C8h
	retlw	0D8h
	retlw	018h
	retlw	019h
	retlw	0D9h
	retlw	01Bh
	retlw	0DBh
	retlw	0DAh
	retlw	01Ah
	retlw	01Eh
	retlw	0DEh
	retlw	0DFh
	retlw	01Fh
	retlw	0DDh
	retlw	01Dh
	retlw	01Ch
	retlw	0DCh
	retlw	014h
	retlw	0D4h
	retlw	0D5h
	retlw	015h
	retlw	0D7h
	retlw	017h
	retlw	016h
	retlw	0D6h
	retlw	0D2h
	retlw	012h
	retlw	013h
	retlw	0D3h
	retlw	011h
	retlw	0D1h
	retlw	0D0h
	retlw	010h
	retlw	0F0h
	retlw	030h
	retlw	031h
	retlw	0F1h
	retlw	033h
	retlw	0F3h
	retlw	0F2h
	retlw	032h
	retlw	036h
	retlw	0F6h
	retlw	0F7h
	retlw	037h
	retlw	0F5h
	retlw	035h
	retlw	034h
	retlw	0F4h
	retlw	03Ch
	retlw	0FCh
	retlw	0FDh
	retlw	03Dh
	retlw	0FFh
	retlw	03Fh
	retlw	03Eh
	retlw	0FEh
	retlw	0FAh
	retlw	03Ah
	retlw	03Bh
	retlw	0FBh
	retlw	039h
	retlw	0F9h
	retlw	0F8h
	retlw	038h
	retlw	028h
	retlw	0E8h
	retlw	0E9h
	retlw	029h
	retlw	0EBh
	retlw	02Bh
	retlw	02Ah
	retlw	0EAh
	retlw	0EEh
	retlw	02Eh
	retlw	02Fh
	retlw	0EFh
	retlw	02Dh
	retlw	0EDh
	retlw	0ECh
	retlw	02Ch
	retlw	0E4h
	retlw	024h
	retlw	025h
	retlw	0E5h
	retlw	027h
	retlw	0E7h
	retlw	0E6h
	retlw	026h
	retlw	022h
	retlw	0E2h
	retlw	0E3h
	retlw	023h
	retlw	0E1h
	retlw	021h
	retlw	020h
	retlw	0E0h
	retlw	0A0h
	retlw	060h
	retlw	061h
	retlw	0A1h
	retlw	063h
	retlw	0A3h
	retlw	0A2h
	retlw	062h
	retlw	066h
	retlw	0A6h
	retlw	0A7h
	retlw	067h
	retlw	0A5h
	retlw	065h
	retlw	064h
	retlw	0A4h
	retlw	06Ch
	retlw	0ACh
	retlw	0ADh
	retlw	06Dh
	retlw	0AFh
	retlw	06Fh
	retlw	06Eh
	retlw	0AEh
	retlw	0AAh
	retlw	06Ah
	retlw	06Bh
	retlw	0ABh
	retlw	069h
	retlw	0A9h
	retlw	0A8h
	retlw	068h
	retlw	078h
	retlw	0B8h
	retlw	0B9h
	retlw	079h
	retlw	0BBh
	retlw	07Bh
	retlw	07Ah
	retlw	0BAh
	retlw	0BEh
	retlw	07Eh
	retlw	07Fh
	retlw	0BFh
	retlw	07Dh
	retlw	0BDh
	retlw	0BCh
	retlw	07Ch
	retlw	0B4h
	retlw	074h
	retlw	075h
	retlw	0B5h
	retlw	077h
	retlw	0B7h
	retlw	0B6h
	retlw	076h
	retlw	072h
	retlw	0B2h
	retlw	0B3h
	retlw	073h
	retlw	0B1h
	retlw	071h
	retlw	070h
	retlw	0B0h
	retlw	050h
	retlw	090h
	retlw	091h
	retlw	051h
	retlw	093h
	retlw	053h
	retlw	052h
	retlw	092h
	retlw	096h
	retlw	056h
	retlw	057h
	retlw	097h
	retlw	055h
	retlw	095h
	retlw	094h
	retlw	054h
	retlw	09Ch
	retlw	05Ch
	retlw	05Dh
	retlw	09Dh
	retlw	05Fh
	retlw	09Fh
	retlw	09Eh
	retlw	05Eh
	retlw	05Ah
	retlw	09Ah
	retlw	09Bh
	retlw	05Bh
	retlw	099h
	retlw	059h
	retlw	058h
	retlw	098h
	retlw	088h
	retlw	048h
	retlw	049h
	retlw	089h
	retlw	04Bh
	retlw	08Bh
	retlw	08Ah
	retlw	04Ah
	retlw	04Eh
	retlw	08Eh
	retlw	08Fh
	retlw	04Fh
	retlw	08Dh
	retlw	04Dh
	retlw	04Ch
	retlw	08Ch
	retlw	044h
	retlw	084h
	retlw	085h
	retlw	045h
	retlw	087h
	retlw	047h
	retlw	046h
	retlw	086h
	retlw	082h
	retlw	042h
	retlw	043h
	retlw	083h
	retlw	041h
	retlw	081h
	retlw	080h
	retlw	040h
	global __end_of_CRCLo
__end_of_CRCLo:
	global	__npowers_
psect	stringtext
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\powers.c"
	line	39
__npowers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	retlw	0xd7
	retlw	0x23
	retlw	0x3c

	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0xb7
	retlw	0xd1
	retlw	0x38

	retlw	0xc6
	retlw	0x27
	retlw	0x37

	retlw	0x38
	retlw	0x86
	retlw	0x35

	retlw	0xc0
	retlw	0xd6
	retlw	0x33

	retlw	0xcc
	retlw	0x2b
	retlw	0x32

	retlw	0x70
	retlw	0x89
	retlw	0x30

	retlw	0xe7
	retlw	0xdb
	retlw	0x2e

	retlw	0xe5
	retlw	0x3c
	retlw	0x1e

	retlw	0x42
	retlw	0xa2
	retlw	0xd

	global __end_of__npowers_
__end_of__npowers_:
	global	__powers_
psect	stringtext
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\powers.c"
	line	7
__powers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x0
	retlw	0x20
	retlw	0x41

	retlw	0x0
	retlw	0xc8
	retlw	0x42

	retlw	0x0
	retlw	0x7a
	retlw	0x44

	retlw	0x40
	retlw	0x1c
	retlw	0x46

	retlw	0x50
	retlw	0xc3
	retlw	0x47

	retlw	0x24
	retlw	0x74
	retlw	0x49

	retlw	0x97
	retlw	0x18
	retlw	0x4b

	retlw	0xbc
	retlw	0xbe
	retlw	0x4c

	retlw	0x6b
	retlw	0x6e
	retlw	0x4e

	retlw	0x3
	retlw	0x15
	retlw	0x50

	retlw	0x79
	retlw	0xad
	retlw	0x60

	retlw	0xf3
	retlw	0x49
	retlw	0x71

	global __end_of__powers_
__end_of__powers_:
	global	_hexpowers
psect	stringtext
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	362
_hexpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	010h
	retlw	0
	retlw	0
	retlw	0

	retlw	0
	retlw	01h
	retlw	0
	retlw	0

	retlw	0
	retlw	010h
	retlw	0
	retlw	0

	retlw	0
	retlw	0
	retlw	01h
	retlw	0

	retlw	0
	retlw	0
	retlw	010h
	retlw	0

	retlw	0
	retlw	0
	retlw	0
	retlw	01h

	retlw	0
	retlw	0
	retlw	0
	retlw	010h

	global __end_of_hexpowers
__end_of_hexpowers:
	global	_ZH01
psect	stringtext
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	454
_ZH01:
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0C0h
	retlw	0E0h
	retlw	060h
	retlw	070h
	retlw	078h
	retlw	078h
	retlw	07Ch
	retlw	07Eh
	retlw	0FFh
	retlw	07Eh
	retlw	07Ch
	retlw	07Ch
	retlw	0F8h
	retlw	070h
	retlw	060h
	retlw	060h
	retlw	0C0h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	04h
	retlw	0Ch
	retlw	01Ch
	retlw	03Ch
	retlw	07Ch
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0F8h
	retlw	0F8h
	retlw	0F0h
	retlw	0E0h
	retlw	0C0h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	06h
	retlw	0Fh
	retlw	0Fh
	retlw	01Fh
	retlw	03Fh
	retlw	06Fh
	retlw	066h
	retlw	0E3h
	retlw	0E1h
	retlw	0E8h
	retlw	0ECh
	retlw	0E6h
	retlw	0FFh
	retlw	0EFh
	retlw	0E0h
	retlw	0E0h
	retlw	0FBh
	retlw	0E0h
	retlw	0E0h
	retlw	060h
	retlw	03Fh
	retlw	01Fh
	retlw	01Fh
	retlw	0Fh
	retlw	06h
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0C0h
	retlw	0E0h
	retlw	0F0h
	retlw	0F8h
	retlw	0F8h
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	0FCh
	retlw	07Ch
	retlw	03Ch
	retlw	01Ch
	retlw	0Ch
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	03h
	retlw	03h
	retlw	03h
	retlw	03h
	retlw	03h
	retlw	023h
	retlw	063h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E2h
	retlw	0E0h
	retlw	0E0h
	retlw	0E0h
	retlw	0C0h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	03h
	retlw	03h
	retlw	07h
	retlw	0Fh
	retlw	07h
	retlw	03h
	retlw	03h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0C0h
	retlw	0E0h
	retlw	0E0h
	retlw	0E0h
	retlw	0E0h
	retlw	0E2h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	0E3h
	retlw	023h
	retlw	023h
	retlw	03h
	retlw	03h
	retlw	03h
	retlw	03h
	retlw	03h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	03h
	retlw	07h
	retlw	0Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Eh
	retlw	01Ch
	retlw	018h
	retlw	010h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	010h
	retlw	018h
	retlw	018h
	retlw	01Ch
	retlw	01Eh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	0Fh
	retlw	07h
	retlw	03h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	03h
	retlw	07h
	retlw	0Fh
	retlw	01Fh
	retlw	03Fh
	retlw	07Fh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	07Fh
	retlw	03Fh
	retlw	01Fh
	retlw	0Fh
	retlw	07h
	retlw	03h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	04h
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	0CFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	0C6h
	retlw	086h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Bh
	retlw	0DBh
	retlw	0DBh
	retlw	0DBh
	retlw	01Bh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	01Bh
	retlw	0DBh
	retlw	0DBh
	retlw	0DBh
	retlw	0
	retlw	0EFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	03h
	retlw	03h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	063h
	retlw	063h
	retlw	063h
	retlw	063h
	retlw	063h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	063h
	retlw	063h
	retlw	063h
	retlw	063h
	retlw	063h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	0EFh
	retlw	0EFh
	retlw	0EFh
	retlw	08Ch
	retlw	08Ch
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	01h
	retlw	0FDh
	retlw	0FDh
	retlw	0FDh
	retlw	06Fh
	retlw	06Fh
	retlw	06Fh
	retlw	06Fh
	retlw	06Dh
	retlw	06Dh
	retlw	0FDh
	retlw	0FDh
	retlw	0FDh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	0FEh
	retlw	0FEh
	retlw	07Eh
	retlw	07Eh
	retlw	0
	retlw	07Eh
	retlw	0FEh
	retlw	0FEh
	retlw	0C0h
	retlw	0CEh
	retlw	0DEh
	retlw	0DEh
	retlw	0DEh
	retlw	0D8h
	retlw	0D8h
	retlw	018h
	retlw	0
	retlw	07Eh
	retlw	0FEh
	retlw	07Eh
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	07Fh
	retlw	07Fh
	retlw	03Fh
	retlw	0
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	0
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	0
	retlw	05Fh
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	060h
	retlw	060h
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0Ch
	retlw	0Ch
	retlw	0Ch
	retlw	0Ch
	retlw	0Ch
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	04Ch
	retlw	04Ch
	retlw	04Ch
	retlw	04Ch
	retlw	04Ch
	retlw	04Fh
	retlw	04Fh
	retlw	04Fh
	retlw	04Fh
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	040h
	retlw	0C1h
	retlw	0FDh
	retlw	0FDh
	retlw	07Dh
	retlw	05h
	retlw	0C0h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	040h
	retlw	0F3h
	retlw	0FBh
	retlw	07Bh
	retlw	0C3h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	03h
	retlw	01Bh
	retlw	0FBh
	retlw	0FBh
	retlw	0C3h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global __end_of_ZH01
__end_of_ZH01:
	global	_canshu01
psect	stringtext
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	521
_canshu01:
	retlw	0FFh
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	081h
	retlw	041h
	retlw	021h
	retlw	011h
	retlw	09h
	retlw	05h
	retlw	0FFh
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	021h
	retlw	021h
	retlw	0A9h
	retlw	06Dh
	retlw	02Bh
	retlw	039h
	retlw	029h
	retlw	0A9h
	retlw	029h
	retlw	06Dh
	retlw	0B9h
	retlw	021h
	retlw	021h
	retlw	01h
	retlw	01h
	retlw	095h
	retlw	059h
	retlw	031h
	retlw	0FFh
	retlw	031h
	retlw	059h
	retlw	095h
	retlw	081h
	retlw	061h
	retlw	09Fh
	retlw	011h
	retlw	0F1h
	retlw	011h
	retlw	01h
	retlw	01h
	retlw	041h
	retlw	043h
	retlw	0CDh
	retlw	01h
	retlw	081h
	retlw	041h
	retlw	03Dh
	retlw	05h
	retlw	05h
	retlw	05h
	retlw	03Dh
	retlw	041h
	retlw	041h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	05Fh
	retlw	053h
	retlw	053h
	retlw	05Fh
	retlw	053h
	retlw	0F3h
	retlw	053h
	retlw	05Fh
	retlw	053h
	retlw	053h
	retlw	05Fh
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	0FFh
	retlw	05h
	retlw	09h
	retlw	011h
	retlw	021h
	retlw	041h
	retlw	081h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	0FFh
	retlw	0FFh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	081h
	retlw	082h
	retlw	084h
	retlw	088h
	retlw	090h
	retlw	0BFh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0C1h
	retlw	0D1h
	retlw	0D2h
	retlw	0D2h
	retlw	0CAh
	retlw	0A9h
	retlw	0A9h
	retlw	0A4h
	retlw	092h
	retlw	090h
	retlw	088h
	retlw	081h
	retlw	081h
	retlw	080h
	retlw	080h
	retlw	0C2h
	retlw	0CAh
	retlw	0AFh
	retlw	0B2h
	retlw	092h
	retlw	0AEh
	retlw	0C0h
	retlw	080h
	retlw	0C0h
	retlw	0A7h
	retlw	098h
	retlw	0A7h
	retlw	0C0h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0BFh
	retlw	090h
	retlw	0C8h
	retlw	0C1h
	retlw	0A7h
	retlw	0A9h
	retlw	091h
	retlw	0A9h
	retlw	0A5h
	retlw	0C3h
	retlw	0C0h
	retlw	080h
	retlw	080h
	retlw	0C0h
	retlw	0C0h
	retlw	0FFh
	retlw	0C1h
	retlw	0C1h
	retlw	0C1h
	retlw	0F9h
	retlw	0C1h
	retlw	0C1h
	retlw	0C1h
	retlw	0FFh
	retlw	0C0h
	retlw	0C0h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0BFh
	retlw	090h
	retlw	088h
	retlw	084h
	retlw	082h
	retlw	081h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0FFh
	retlw	0
	retlw	040h
	retlw	040h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	088h
	retlw	090h
	retlw	0A0h
	retlw	080h
	retlw	080h
	retlw	0FCh
	retlw	080h
	retlw	080h
	retlw	0A0h
	retlw	090h
	retlw	088h
	retlw	080h
	retlw	0
	retlw	0
	retlw	020h
	retlw	020h
	retlw	0FCh
	retlw	020h
	retlw	0
	retlw	030h
	retlw	090h
	retlw	054h
	retlw	018h
	retlw	010h
	retlw	050h
	retlw	090h
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	0FCh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F8h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0E8h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	040h
	retlw	040h
	retlw	07Fh
	retlw	040h
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	060h
	retlw	0
	retlw	0
	retlw	080h
	retlw	040h
	retlw	030h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	084h
	retlw	084h
	retlw	0FFh
	retlw	02h
	retlw	0
	retlw	081h
	retlw	084h
	retlw	084h
	retlw	0FCh
	retlw	084h
	retlw	084h
	retlw	084h
	retlw	081h
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	07Fh
	retlw	089h
	retlw	089h
	retlw	089h
	retlw	089h
	retlw	08Fh
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	080h
	retlw	060h
	retlw	01Fh
	retlw	080h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	0FFh
	retlw	081h
	retlw	081h
	retlw	089h
	retlw	0B1h
	retlw	080h
	retlw	0
	retlw	0
	retlw	033h
	retlw	033h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	0D0h
	retlw	048h
	retlw	046h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	064h
	retlw	054h
	retlw	04Ch
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0A0h
	retlw	0A8h
	retlw	0E8h
	retlw	0BEh
	retlw	0A8h
	retlw	0A8h
	retlw	0A0h
	retlw	020h
	retlw	0FEh
	retlw	020h
	retlw	024h
	retlw	0A8h
	retlw	020h
	retlw	0
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	0FEh
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	0F0h
	retlw	0
	retlw	0
	retlw	0
	retlw	040h
	retlw	084h
	retlw	08h
	retlw	010h
	retlw	0
	retlw	088h
	retlw	0C8h
	retlw	0A8h
	retlw	09Ah
	retlw	08Ch
	retlw	0A8h
	retlw	0C8h
	retlw	088h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	028h
	retlw	024h
	retlw	022h
	retlw	021h
	retlw	030h
	retlw	0
	retlw	0
	retlw	030h
	retlw	030h
	retlw	0
	retlw	040h
	retlw	04Fh
	retlw	020h
	retlw	020h
	retlw	010h
	retlw	08h
	retlw	07h
	retlw	08h
	retlw	010h
	retlw	010h
	retlw	020h
	retlw	02Fh
	retlw	040h
	retlw	0
	retlw	0
	retlw	010h
	retlw	016h
	retlw	015h
	retlw	07Eh
	retlw	014h
	retlw	014h
	retlw	050h
	retlw	020h
	retlw	017h
	retlw	08h
	retlw	016h
	retlw	021h
	retlw	078h
	retlw	0
	retlw	0
	retlw	0
	retlw	0Fh
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	03Fh
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	047h
	retlw	070h
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	0Ch
	retlw	03h
	retlw	040h
	retlw	020h
	retlw	01Eh
	retlw	0
	retlw	03Eh
	retlw	0
	retlw	03Eh
	retlw	040h
	retlw	061h
	retlw	0
	retlw	0
	retlw	019h
	retlw	019h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	090h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	088h
	retlw	088h
	retlw	0BEh
	retlw	088h
	retlw	088h
	retlw	088h
	retlw	088h
	retlw	088h
	retlw	0BEh
	retlw	088h
	retlw	088h
	retlw	08h
	retlw	0
	retlw	0
	retlw	010h
	retlw	098h
	retlw	094h
	retlw	092h
	retlw	090h
	retlw	098h
	retlw	030h
	retlw	0
	retlw	03Eh
	retlw	048h
	retlw	048h
	retlw	044h
	retlw	074h
	retlw	0
	retlw	0
	retlw	0E8h
	retlw	09Eh
	retlw	0C8h
	retlw	088h
	retlw	020h
	retlw	090h
	retlw	0A8h
	retlw	0A4h
	retlw	0A2h
	retlw	024h
	retlw	028h
	retlw	010h
	retlw	0A0h
	retlw	0
	retlw	0
	retlw	0
	retlw	07Ch
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	0FEh
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	07Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	018h
	retlw	020h
	retlw	021h
	retlw	021h
	retlw	022h
	retlw	01Ch
	retlw	0
	retlw	0
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	010h
	retlw	010h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	0Ah
	retlw	0Ah
	retlw	04Ah
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	03Fh
	retlw	044h
	retlw	044h
	retlw	042h
	retlw	071h
	retlw	0
	retlw	0
	retlw	08h
	retlw	08h
	retlw	07Fh
	retlw	04h
	retlw	0
	retlw	07Fh
	retlw	0Ah
	retlw	04Ah
	retlw	07Fh
	retlw	0
	retlw	05Fh
	retlw	040h
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	03Eh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	07Eh
	retlw	0
	retlw	0
	retlw	019h
	retlw	019h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global __end_of_canshu01
__end_of_canshu01:
	global	_graphic01
psect	stringtext
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	727
_graphic01:
	retlw	0FFh
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	09h
	retlw	049h
	retlw	0C9h
	retlw	05Dh
	retlw	049h
	retlw	0C9h
	retlw	049h
	retlw	049h
	retlw	029h
	retlw	03Dh
	retlw	0E9h
	retlw	029h
	retlw	09h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	0F1h
	retlw	095h
	retlw	099h
	retlw	091h
	retlw	0F1h
	retlw	091h
	retlw	099h
	retlw	095h
	retlw	0F1h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	044h
	retlw	044h
	retlw	024h
	retlw	025h
	retlw	014h
	retlw	0Ch
	retlw	0FFh
	retlw	0Ch
	retlw	014h
	retlw	025h
	retlw	024h
	retlw	044h
	retlw	044h
	retlw	0
	retlw	0
	retlw	020h
	retlw	020h
	retlw	027h
	retlw	024h
	retlw	024h
	retlw	024h
	retlw	0FFh
	retlw	024h
	retlw	024h
	retlw	024h
	retlw	027h
	retlw	020h
	retlw	020h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	040h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	0
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	04h
	retlw	04h
	retlw	0FEh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	010h
	retlw	010h
	retlw	0F3h
	retlw	0
	retlw	08h
	retlw	088h
	retlw	048h
	retlw	038h
	retlw	08h
	retlw	048h
	retlw	088h
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0
	retlw	022h
	retlw	011h
	retlw	0F8h
	retlw	06h
	retlw	0
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0F8h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0
	retlw	081h
	retlw	046h
	retlw	020h
	retlw	0FFh
	retlw	0
	retlw	04h
	retlw	04h
	retlw	0E4h
	retlw	01Fh
	retlw	0E4h
	retlw	04h
	retlw	05h
	retlw	04h
	retlw	0
	retlw	0
	retlw	021h
	retlw	021h
	retlw	011h
	retlw	011h
	retlw	09h
	retlw	015h
	retlw	0A3h
	retlw	05h
	retlw	09h
	retlw	011h
	retlw	011h
	retlw	021h
	retlw	021h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	04h
	retlw	04h
	retlw	07h
	retlw	04h
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	06h
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	04h
	retlw	03h
	retlw	04h
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	0Bh
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	08h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0Fh
	retlw	08h
	retlw	04h
	retlw	03h
	retlw	0
	retlw	0
	retlw	0
	retlw	03h
	retlw	04h
	retlw	08h
	retlw	0
	retlw	0
	retlw	08h
	retlw	06h
	retlw	0
	retlw	07h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0Bh
	retlw	08h
	retlw	0Ch
	retlw	0
	retlw	01h
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0E0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	020h
	retlw	0A8h
	retlw	06Ch
	retlw	02Ah
	retlw	038h
	retlw	028h
	retlw	0A8h
	retlw	028h
	retlw	06Ch
	retlw	0B8h
	retlw	020h
	retlw	020h
	retlw	0
	retlw	0
	retlw	094h
	retlw	058h
	retlw	030h
	retlw	0FEh
	retlw	030h
	retlw	058h
	retlw	094h
	retlw	080h
	retlw	060h
	retlw	09Eh
	retlw	010h
	retlw	0F0h
	retlw	010h
	retlw	0
	retlw	0
	retlw	040h
	retlw	042h
	retlw	0CCh
	retlw	0
	retlw	080h
	retlw	040h
	retlw	03Ch
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	03Ch
	retlw	040h
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	05Eh
	retlw	052h
	retlw	052h
	retlw	05Eh
	retlw	052h
	retlw	0F2h
	retlw	052h
	retlw	05Eh
	retlw	052h
	retlw	052h
	retlw	05Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	040h
	retlw	020h
	retlw	020h
	retlw	010h
	retlw	08h
	retlw	010h
	retlw	020h
	retlw	020h
	retlw	040h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	028h
	retlw	024h
	retlw	022h
	retlw	021h
	retlw	030h
	retlw	0
	retlw	0
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	041h
	retlw	051h
	retlw	052h
	retlw	052h
	retlw	04Ah
	retlw	029h
	retlw	029h
	retlw	024h
	retlw	012h
	retlw	010h
	retlw	08h
	retlw	01h
	retlw	01h
	retlw	0
	retlw	0
	retlw	042h
	retlw	04Ah
	retlw	02Fh
	retlw	032h
	retlw	012h
	retlw	02Eh
	retlw	040h
	retlw	0
	retlw	040h
	retlw	027h
	retlw	018h
	retlw	027h
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03Fh
	retlw	010h
	retlw	048h
	retlw	041h
	retlw	027h
	retlw	029h
	retlw	011h
	retlw	029h
	retlw	025h
	retlw	043h
	retlw	040h
	retlw	0
	retlw	0
	retlw	040h
	retlw	040h
	retlw	07Fh
	retlw	041h
	retlw	041h
	retlw	041h
	retlw	079h
	retlw	041h
	retlw	041h
	retlw	041h
	retlw	07Fh
	retlw	040h
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03h
	retlw	0FFh
	retlw	03h
	retlw	03h
	retlw	0FFh
	retlw	03h
	retlw	03h
	retlw	07Bh
	retlw	0Bh
	retlw	07Bh
	retlw	03h
	retlw	03h
	retlw	0FFh
	retlw	03h
	retlw	03h
	retlw	0FFh
	retlw	03h
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	081h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0FFh
	global __end_of_graphic01
__end_of_graphic01:
	global	_zhuangtai01
psect	stringtext
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	588
_zhuangtai01:
	retlw	0FFh
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	081h
	retlw	041h
	retlw	021h
	retlw	011h
	retlw	09h
	retlw	0FDh
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	081h
	retlw	085h
	retlw	099h
	retlw	01h
	retlw	041h
	retlw	045h
	retlw	045h
	retlw	0C5h
	retlw	045h
	retlw	045h
	retlw	045h
	retlw	041h
	retlw	041h
	retlw	01h
	retlw	01h
	retlw	011h
	retlw	089h
	retlw	0C5h
	retlw	033h
	retlw	01h
	retlw	041h
	retlw	045h
	retlw	045h
	retlw	045h
	retlw	0C5h
	retlw	045h
	retlw	045h
	retlw	041h
	retlw	01h
	retlw	01h
	retlw	09h
	retlw	031h
	retlw	01h
	retlw	0FFh
	retlw	01h
	retlw	021h
	retlw	021h
	retlw	021h
	retlw	0FFh
	retlw	021h
	retlw	025h
	retlw	029h
	retlw	021h
	retlw	01h
	retlw	01h
	retlw	09h
	retlw	09h
	retlw	089h
	retlw	089h
	retlw	049h
	retlw	0A9h
	retlw	01Fh
	retlw	029h
	retlw	049h
	retlw	089h
	retlw	089h
	retlw	09h
	retlw	09h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	0FDh
	retlw	09h
	retlw	011h
	retlw	021h
	retlw	041h
	retlw	081h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	0FFh
	retlw	0FFh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	081h
	retlw	082h
	retlw	084h
	retlw	088h
	retlw	090h
	retlw	0A0h
	retlw	0FFh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0C0h
	retlw	0A0h
	retlw	09Fh
	retlw	0A0h
	retlw	0C8h
	retlw	0CCh
	retlw	0CAh
	retlw	0C9h
	retlw	0C8h
	retlw	0CAh
	retlw	0CCh
	retlw	0D8h
	retlw	0C0h
	retlw	080h
	retlw	080h
	retlw	081h
	retlw	080h
	retlw	0FFh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0C0h
	retlw	0C0h
	retlw	0FFh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	084h
	retlw	082h
	retlw	081h
	retlw	0FFh
	retlw	0C0h
	retlw	0A0h
	retlw	098h
	retlw	087h
	retlw	080h
	retlw	087h
	retlw	098h
	retlw	0A0h
	retlw	0C0h
	retlw	080h
	retlw	080h
	retlw	0C1h
	retlw	0B1h
	retlw	080h
	retlw	0B8h
	retlw	0C0h
	retlw	0C0h
	retlw	0C5h
	retlw	0D8h
	retlw	0C0h
	retlw	0E0h
	retlw	080h
	retlw	089h
	retlw	0B1h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0FFh
	retlw	0A0h
	retlw	090h
	retlw	088h
	retlw	084h
	retlw	082h
	retlw	081h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0FFh
	retlw	0
	retlw	020h
	retlw	020h
	retlw	0F0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	040h
	retlw	044h
	retlw	048h
	retlw	050h
	retlw	0C0h
	retlw	040h
	retlw	07Eh
	retlw	040h
	retlw	0C0h
	retlw	050h
	retlw	048h
	retlw	044h
	retlw	040h
	retlw	0
	retlw	0
	retlw	040h
	retlw	020h
	retlw	0F8h
	retlw	06h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	0FEh
	retlw	020h
	retlw	024h
	retlw	038h
	retlw	020h
	retlw	0
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	0FEh
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	0F0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FCh
	retlw	04h
	retlw	084h
	retlw	084h
	retlw	084h
	retlw	0F4h
	retlw	084h
	retlw	084h
	retlw	084h
	retlw	084h
	retlw	04h
	retlw	0
	retlw	0
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
	retlw	040h
	retlw	020h
	retlw	018h
	retlw	07h
	retlw	0
	retlw	0
	retlw	0
	retlw	03Fh
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	070h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	0
	retlw	040h
	retlw	020h
	retlw	018h
	retlw	07h
	retlw	0
	retlw	07h
	retlw	018h
	retlw	020h
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	0Fh
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	03Fh
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	047h
	retlw	070h
	retlw	0
	retlw	0
	retlw	040h
	retlw	030h
	retlw	0Fh
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	07Fh
	retlw	040h
	retlw	040h
	retlw	044h
	retlw	058h
	retlw	040h
	retlw	0
	retlw	0
	retlw	019h
	retlw	019h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	088h
	retlw	070h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F8h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	0FFh
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	0F8h
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	042h
	retlw	04h
	retlw	088h
	retlw	020h
	retlw	0FCh
	retlw	020h
	retlw	010h
	retlw	0FFh
	retlw	010h
	retlw	08h
	retlw	0FCh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F8h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	0FFh
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	0F8h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	02h
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	0FAh
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	02h
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	018h
	retlw	014h
	retlw	012h
	retlw	011h
	retlw	010h
	retlw	018h
	retlw	0
	retlw	0
	retlw	018h
	retlw	018h
	retlw	0
	retlw	0
	retlw	07h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	01Fh
	retlw	022h
	retlw	022h
	retlw	022h
	retlw	022h
	retlw	023h
	retlw	038h
	retlw	0
	retlw	0
	retlw	0
	retlw	018h
	retlw	06h
	retlw	01h
	retlw	0
	retlw	01Fh
	retlw	020h
	retlw	020h
	retlw	027h
	retlw	020h
	retlw	022h
	retlw	023h
	retlw	038h
	retlw	0
	retlw	0
	retlw	0
	retlw	07h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	01Fh
	retlw	022h
	retlw	022h
	retlw	022h
	retlw	022h
	retlw	023h
	retlw	038h
	retlw	0
	retlw	0
	retlw	020h
	retlw	018h
	retlw	07h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	022h
	retlw	02Ch
	retlw	020h
	retlw	0
	retlw	0
	retlw	0Ch
	retlw	0Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	08h
	retlw	088h
	retlw	088h
	retlw	048h
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	074h
	retlw	04Fh
	retlw	0E4h
	retlw	044h
	retlw	010h
	retlw	0C8h
	retlw	054h
	retlw	052h
	retlw	0D1h
	retlw	012h
	retlw	094h
	retlw	08h
	retlw	0D0h
	retlw	0
	retlw	0
	retlw	0
	retlw	03Eh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	0FFh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	03Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F8h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	0FFh
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	0F8h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	02h
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	0FAh
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	042h
	retlw	02h
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0Ch
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	011h
	retlw	0Eh
	retlw	0
	retlw	0
	retlw	018h
	retlw	018h
	retlw	0
	retlw	04h
	retlw	04h
	retlw	03Fh
	retlw	02h
	retlw	0
	retlw	03Fh
	retlw	05h
	retlw	025h
	retlw	03Fh
	retlw	0
	retlw	02Fh
	retlw	020h
	retlw	03Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	01Fh
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	03Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	07h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	01Fh
	retlw	022h
	retlw	022h
	retlw	022h
	retlw	022h
	retlw	023h
	retlw	038h
	retlw	0
	retlw	0
	retlw	020h
	retlw	018h
	retlw	07h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	03Fh
	retlw	020h
	retlw	020h
	retlw	022h
	retlw	02Ch
	retlw	020h
	retlw	0
	retlw	0
	retlw	0Ch
	retlw	0Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global __end_of_zhuangtai01
__end_of_zhuangtai01:
	global	_zhuangtai02
psect	stringtext
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	657
_zhuangtai02:
	retlw	0FFh
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	081h
	retlw	041h
	retlw	021h
	retlw	011h
	retlw	09h
	retlw	0FDh
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	081h
	retlw	085h
	retlw	099h
	retlw	01h
	retlw	041h
	retlw	045h
	retlw	045h
	retlw	0C5h
	retlw	045h
	retlw	045h
	retlw	045h
	retlw	041h
	retlw	041h
	retlw	01h
	retlw	01h
	retlw	011h
	retlw	089h
	retlw	0C5h
	retlw	033h
	retlw	01h
	retlw	041h
	retlw	045h
	retlw	045h
	retlw	045h
	retlw	0C5h
	retlw	045h
	retlw	045h
	retlw	041h
	retlw	01h
	retlw	01h
	retlw	09h
	retlw	031h
	retlw	01h
	retlw	0FFh
	retlw	01h
	retlw	021h
	retlw	021h
	retlw	021h
	retlw	0FFh
	retlw	021h
	retlw	025h
	retlw	029h
	retlw	021h
	retlw	01h
	retlw	01h
	retlw	09h
	retlw	09h
	retlw	089h
	retlw	089h
	retlw	049h
	retlw	0A9h
	retlw	01Fh
	retlw	029h
	retlw	049h
	retlw	089h
	retlw	089h
	retlw	09h
	retlw	09h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	0FDh
	retlw	09h
	retlw	011h
	retlw	021h
	retlw	041h
	retlw	081h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	0FFh
	retlw	0FFh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	081h
	retlw	082h
	retlw	084h
	retlw	088h
	retlw	090h
	retlw	0A0h
	retlw	0FFh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0C0h
	retlw	0A0h
	retlw	09Fh
	retlw	0A0h
	retlw	0C8h
	retlw	0CCh
	retlw	0CAh
	retlw	0C9h
	retlw	0C8h
	retlw	0CAh
	retlw	0CCh
	retlw	0D8h
	retlw	0C0h
	retlw	080h
	retlw	080h
	retlw	081h
	retlw	080h
	retlw	0FFh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0C0h
	retlw	0C0h
	retlw	0FFh
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	084h
	retlw	082h
	retlw	081h
	retlw	0FFh
	retlw	0C0h
	retlw	0A0h
	retlw	098h
	retlw	087h
	retlw	080h
	retlw	087h
	retlw	098h
	retlw	0A0h
	retlw	0C0h
	retlw	080h
	retlw	080h
	retlw	0C1h
	retlw	0B1h
	retlw	080h
	retlw	0B8h
	retlw	0C0h
	retlw	0C0h
	retlw	0C5h
	retlw	0D8h
	retlw	0C0h
	retlw	0E0h
	retlw	080h
	retlw	089h
	retlw	0B1h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0FFh
	retlw	0A0h
	retlw	090h
	retlw	088h
	retlw	084h
	retlw	082h
	retlw	081h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	060h
	retlw	0F0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	088h
	retlw	0C8h
	retlw	0A8h
	retlw	098h
	retlw	08Ah
	retlw	08Ch
	retlw	088h
	retlw	088h
	retlw	0A8h
	retlw	0C8h
	retlw	088h
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	0FEh
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	0F0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	0FEh
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	090h
	retlw	0F0h
	retlw	0
	retlw	0
	retlw	0
	retlw	040h
	retlw	084h
	retlw	08h
	retlw	010h
	retlw	0
	retlw	088h
	retlw	0C8h
	retlw	0A8h
	retlw	09Ah
	retlw	08Ch
	retlw	0A8h
	retlw	0C8h
	retlw	088h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	06h
	retlw	05h
	retlw	024h
	retlw	024h
	retlw	03Fh
	retlw	024h
	retlw	04h
	retlw	0
	retlw	030h
	retlw	0
	retlw	0
	retlw	040h
	retlw	040h
	retlw	020h
	retlw	010h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	03Fh
	retlw	040h
	retlw	040h
	retlw	041h
	retlw	070h
	retlw	0
	retlw	0
	retlw	0
	retlw	0Fh
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	03Fh
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	047h
	retlw	070h
	retlw	0
	retlw	0
	retlw	0
	retlw	0Fh
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	03Fh
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	047h
	retlw	070h
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	0Ch
	retlw	03h
	retlw	040h
	retlw	020h
	retlw	01Eh
	retlw	0
	retlw	03Eh
	retlw	0
	retlw	03Eh
	retlw	040h
	retlw	061h
	retlw	0
	retlw	0
	retlw	06Ch
	retlw	06Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F8h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	088h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	074h
	retlw	04Eh
	retlw	0E4h
	retlw	044h
	retlw	010h
	retlw	0C8h
	retlw	054h
	retlw	052h
	retlw	0D0h
	retlw	012h
	retlw	094h
	retlw	08h
	retlw	0D0h
	retlw	0
	retlw	0
	retlw	0
	retlw	03Eh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	0FEh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	03Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F8h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	0FEh
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	048h
	retlw	0F8h
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	042h
	retlw	04h
	retlw	088h
	retlw	0
	retlw	044h
	retlw	064h
	retlw	054h
	retlw	04Ch
	retlw	046h
	retlw	054h
	retlw	064h
	retlw	0C4h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0Ch
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	018h
	retlw	0
	retlw	0
	retlw	04h
	retlw	04h
	retlw	03Fh
	retlw	02h
	retlw	0
	retlw	03Fh
	retlw	05h
	retlw	025h
	retlw	03Fh
	retlw	0
	retlw	02Fh
	retlw	020h
	retlw	03Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	01Fh
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	03Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	07h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	01Fh
	retlw	022h
	retlw	022h
	retlw	022h
	retlw	022h
	retlw	023h
	retlw	038h
	retlw	0
	retlw	0
	retlw	0
	retlw	018h
	retlw	06h
	retlw	01h
	retlw	020h
	retlw	010h
	retlw	0Fh
	retlw	0
	retlw	01Fh
	retlw	0
	retlw	01Fh
	retlw	020h
	retlw	030h
	retlw	0
	retlw	0
	retlw	036h
	retlw	036h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	090h
	retlw	048h
	retlw	048h
	retlw	050h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	0FEh
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	02h
	retlw	0
	retlw	0
	retlw	0
	retlw	040h
	retlw	020h
	retlw	0F8h
	retlw	07h
	retlw	020h
	retlw	018h
	retlw	07h
	retlw	0FCh
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	04h
	retlw	0
	retlw	0
	retlw	08h
	retlw	0C8h
	retlw	0FFh
	retlw	048h
	retlw	080h
	retlw	0F4h
	retlw	05Fh
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	05Fh
	retlw	0F4h
	retlw	04h
	retlw	0
	retlw	0
	retlw	08h
	retlw	048h
	retlw	048h
	retlw	0C8h
	retlw	048h
	retlw	048h
	retlw	08h
	retlw	08h
	retlw	0FFh
	retlw	08h
	retlw	09h
	retlw	0Ah
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	07h
	retlw	08h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	018h
	retlw	0
	retlw	0
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	01Fh
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03Fh
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	0
	retlw	0
	retlw	01h
	retlw	0
	retlw	03Fh
	retlw	0
	retlw	024h
	retlw	025h
	retlw	015h
	retlw	0Dh
	retlw	07h
	retlw	0Dh
	retlw	015h
	retlw	025h
	retlw	024h
	retlw	0
	retlw	0
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	01Fh
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0
	retlw	01h
	retlw	06h
	retlw	08h
	retlw	010h
	retlw	03Ch
	retlw	0
	retlw	0
	retlw	036h
	retlw	036h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global __end_of_zhuangtai02
__end_of_zhuangtai02:
	global	_dpowers
psect	stringtext
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global __end_of_dpowers
__end_of_dpowers:
	global	_xinhao1
psect	stringtext
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	27
_xinhao1:
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global __end_of_xinhao1
__end_of_xinhao1:
	global	_xinhao2
psect	stringtext
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	33
_xinhao2:
	retlw	0C0h
	retlw	0
	retlw	0F0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global __end_of_xinhao2
__end_of_xinhao2:
	global	_xinhao3
psect	stringtext
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	38
_xinhao3:
	retlw	0C0h
	retlw	0
	retlw	0F0h
	retlw	0
	retlw	0FCh
	retlw	0
	retlw	0
	retlw	0
	global __end_of_xinhao3
__end_of_xinhao3:
	global	_xinhao4
psect	stringtext
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	44
_xinhao4:
	retlw	0C0h
	retlw	0
	retlw	0F0h
	retlw	0
	retlw	0FCh
	retlw	0
	retlw	0FFh
	retlw	0
	global __end_of_xinhao4
__end_of_xinhao4:
	global	_ascii_table_8x16
	global	_CRCHi
	global	_CRCLo
	global	__npowers_
	global	__powers_
	global	_hexpowers
	global	_ZH01
	global	_canshu01
	global	_graphic01
	global	_zhuangtai01
	global	_zhuangtai02
	global	_dpowers
	global	_xinhao1
	global	_xinhao2
	global	_xinhao3
	global	_xinhao4
	global	_uart1_receive_byte_count
	global	_crc_data
	global	_KEY_STATE
	global	_canshu_1_weizhi
	global	_canshu_2_weizhi
	global	_canshu_3_weizhi
	global	_menu_index_q
	global	_b_v
	global	_charge_I
	global	_load_I
	global	_load_v
	global	_p_v
	global	_display_lcd_time_count
	global	_poll_time_count
	global	_system_power_on_time_count
	global	_system_time_count
	global	_beep_delay_time_count
	global	_dat_flag
	global	_handle_scan_key_flag
	global	_key3_time_count
	global	_menu_index
	global	_poll_task_flag
	global	_poll_time_enable
	global	_rx_frame_kind
	global	_scan_key_time_count
	global	_set_status
	global	_system_run_time
	global	_tx_frame_kind
	global	_uart1_receive_flag
	global	_uart1_time_count
	global	_uart_send_byte_count
	global	_uart_send_delay_timer
	global	_uart_send_end_flag
	global	_uart_send_point
	global	_zhuangtai_cnt
	global	_work_mode
	global	_uart1_rx_buf
	global	_uart1_tx_buf
	global	_buf
	global	_PORTAbits
_PORTAbits	set	0xC
	global	_PORTBbits
_PORTBbits	set	0xD
	global	_PR2
_PR2	set	0x1B
	global	_T1CON
_T1CON	set	0x18
	global	_T1GCONbits
_T1GCONbits	set	0x19
	global	_T2CONbits
_T2CONbits	set	0x1C
	global	_TMR1H
_TMR1H	set	0x17
	global	_TMR1L
_TMR1L	set	0x16
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RCIF
_RCIF	set	0x8D
	global	_TMR1IF
_TMR1IF	set	0x88
	global	_TMR1ON
_TMR1ON	set	0xC0
	global	_TMR2IF
_TMR2IF	set	0x89
	global	_TMR2ON
_TMR2ON	set	0xE2
	global	_TXIF
_TXIF	set	0x8C
	global	_OSCCON
_OSCCON	set	0x99
	global	_TRISAbits
_TRISAbits	set	0x8C
	global	_TRISBbits
_TRISBbits	set	0x8D
	global	_TRISCbits
_TRISCbits	set	0x8E
	global	_WDTCONbits
_WDTCONbits	set	0x97
	global	_RCIE
_RCIE	set	0x48D
	global	_TMR1IE
_TMR1IE	set	0x488
	global	_TXIE
_TXIE	set	0x48C
	global	_LATAbits
_LATAbits	set	0x10C
	global	_LATCbits
_LATCbits	set	0x10E
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELB
_ANSELB	set	0x18D
	global	_BAUDCON
_BAUDCON	set	0x19F
	global	_RCREG
_RCREG	set	0x199
	global	_RCSTA
_RCSTA	set	0x19D
	global	_RCSTAbits
_RCSTAbits	set	0x19D
	global	_SP1BRGH
_SP1BRGH	set	0x19C
	global	_SP1BRGL
_SP1BRGL	set	0x19B
	global	_TXREG
_TXREG	set	0x19A
	global	_TXSTA
_TXSTA	set	0x19E
	global	_TXSTAbits
_TXSTAbits	set	0x19E
	global	_CCPTMRS1bits
_CCPTMRS1bits	set	0x29F
	global	_CCP5CONbits
_CCP5CONbits	set	0x31E
	global	_CCPR5L
_CCPR5L	set	0x31C
	global __stringdata
__stringdata:
	
STR_22:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	52	;'4'
	retlw	53	;'5'
	retlw	54	;'6'
	retlw	55	;'7'
	retlw	56	;'8'
	retlw	57	;'9'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	99	;'c'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	0
psect	stringtext
	
STR_20:	
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	67	;'C'
	retlw	82	;'R'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	33	;'!'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_19:	
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	83	;'S'
	retlw	97	;'a'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	33	;'!'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	114	;'r'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	61	;'='
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	100	;'d'
	retlw	37	;'%'
	retlw	37	;'%'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	10
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	102	;'f'
	retlw	37	;'%'
	retlw	37	;'%'
	retlw	10
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	37	;'%'
	retlw	53	;'5'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	102	;'f'
	retlw	65	;'A'
	retlw	10
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	37	;'%'
	retlw	53	;'5'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	102	;'f'
	retlw	86	;'V'
	retlw	10
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	120	;'x'
	retlw	10
	retlw	0
psect	stringtext
STR_2	equ	STR_1+0
STR_3	equ	STR_1+0
STR_7	equ	STR_1+0
STR_10	equ	STR_1+0
STR_14	equ	STR_1+0
STR_18	equ	STR_1+0
STR_5	equ	STR_4+0
STR_8	equ	STR_4+0
STR_11	equ	STR_4+0
STR_13	equ	STR_4+0
STR_17	equ	STR_4+0
STR_12	equ	STR_9+0
STR_15	equ	STR_9+0
STR_16	equ	STR_9+0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_WDTE$ON
__CFG_WDTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CLKOUTEN$OFF
__CFG_CLKOUTEN$OFF equ 0x0
global __CFG_PLLEN$ON
__CFG_PLLEN$ON equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_BORV$LO
__CFG_BORV$LO equ 0x0
global __CFG_VCAPEN$RA6
__CFG_VCAPEN$RA6 equ 0x0
global __CFG_LVP$ON
__CFG_LVP$ON equ 0x0
	file	"YCQ.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_uart1_receive_byte_count:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_crc_data:
       ds      2

_KEY_STATE:
       ds      1

_canshu_1_weizhi:
       ds      1

_canshu_2_weizhi:
       ds      1

_canshu_3_weizhi:
       ds      1

_menu_index_q:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\MCUProject\YCQ\src\key.c"
	line	62
_light_pv:
       ds      3

psect	dataBANK0
	file	"D:\MCUProject\YCQ\src\key.c"
	line	64
_load_cc_I:
       ds      3

psect	dataBANK0
	file	"D:\MCUProject\YCQ\src\key.c"
	line	66
_load_percent:
       ds      3

psect	dataBANK0
	file	"D:\MCUProject\YCQ\src\key.c"
	line	17
_KEY_VALUE:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_b_v:
       ds      3

_charge_I:
       ds      3

_load_I:
       ds      3

_load_v:
       ds      3

_p_v:
       ds      3

_display_lcd_time_count:
       ds      2

_poll_time_count:
       ds      2

_system_power_on_time_count:
       ds      2

_system_time_count:
       ds      2

_beep_delay_time_count:
       ds      1

_dat_flag:
       ds      1

_handle_scan_key_flag:
       ds      1

_key3_time_count:
       ds      1

_menu_index:
       ds      1

_poll_task_flag:
       ds      1

_poll_time_enable:
       ds      1

_rx_frame_kind:
       ds      1

_scan_key_time_count:
       ds      1

_set_status:
       ds      1

_system_run_time:
       ds      1

_tx_frame_kind:
       ds      1

_uart1_receive_flag:
       ds      1

_uart1_time_count:
       ds      1

_uart_send_byte_count:
       ds      1

_uart_send_delay_timer:
       ds      1

_uart_send_end_flag:
       ds      1

_uart_send_point:
       ds      1

_zhuangtai_cnt:
       ds      1

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"D:\MCUProject\YCQ\src\interrupt.c"
	line	23
_display_lcd_flag:
       ds      1

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_work_mode:
       ds      3

_uart1_rx_buf:
       ds      25

_uart1_tx_buf:
       ds      25

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_buf:
       ds      50

	file	"YCQ.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	07h
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	02Ah
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	035h
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
	movwf	fsr0h
	movlw	032h
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
	fcall	__pidataBANK0+7		;fetch initializer
	movwf	__pdataBANK0+7&07fh		
	fcall	__pidataBANK0+8		;fetch initializer
	movwf	__pdataBANK0+8&07fh		
	fcall	__pidataBANK0+9		;fetch initializer
	movwf	__pdataBANK0+9&07fh		
; Initialize objects allocated to BANK1
	global __pidataBANK1,__pdataBANK1
psect cinit,class=CODE,delta=2,merge=1
	movlb 1	; select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK4,class=BANK4,space=1,noexec
global __pcstackBANK4
__pcstackBANK4:
	global	_sprintf$1778
_sprintf$1778:	; 3 bytes @ 0x0
	ds	3
	global	_sprintf$1137
_sprintf$1137:	; 4 bytes @ 0x3
	ds	4
	global	sprintf@idx
sprintf@idx:	; 1 bytes @ 0x7
	ds	1
	global	sprintf@vd
sprintf@vd:	; 4 bytes @ 0x8
	ds	4
	global	sprintf@vd_1139
sprintf@vd_1139:	; 4 bytes @ 0xC
	ds	4
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x10
	ds	1
	global	sprintf@integ
sprintf@integ:	; 3 bytes @ 0x11
	ds	3
	global	sprintf@exp
sprintf@exp:	; 2 bytes @ 0x14
	ds	2
	global	sprintf@fval
sprintf@fval:	; 3 bytes @ 0x16
	ds	3
	global	sprintf@flag
sprintf@flag:	; 2 bytes @ 0x19
	ds	2
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x1B
	ds	2
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x1D
	ds	2
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x1F
	ds	4
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x23
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x24
	ds	1
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_sprintf:	; 0 bytes @ 0x0
	ds	6
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_beep:	; 0 bytes @ 0x0
?_init_timer1:	; 0 bytes @ 0x0
?_init_uart1:	; 0 bytes @ 0x0
?_init_pwm:	; 0 bytes @ 0x0
?_init_lcd:	; 0 bytes @ 0x0
?_init_key:	; 0 bytes @ 0x0
?_BEEP_SPEAK:	; 0 bytes @ 0x0
?_scan_key_value:	; 0 bytes @ 0x0
?_handle_uart_rx_buf:	; 0 bytes @ 0x0
?_transfer_command:	; 0 bytes @ 0x0
?_clear_screen:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_isr:	; 0 bytes @ 0x0
??_isr:	; 0 bytes @ 0x0
?_init_interrupt:	; 0 bytes @ 0x0
?_init_led:	; 0 bytes @ 0x0
?_init_osc:	; 0 bytes @ 0x0
?_init_port:	; 0 bytes @ 0x0
?_driver_init:	; 0 bytes @ 0x0
?_middle_init:	; 0 bytes @ 0x0
?_application_init:	; 0 bytes @ 0x0
?_uart1_send_byte:	; 0 bytes @ 0x0
?_transfer_data:	; 0 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	isr@r1_data
isr@r1_data:	; 1 bytes @ 0x0
	ds	1
??_init_beep:	; 0 bytes @ 0x1
??_init_timer1:	; 0 bytes @ 0x1
??_init_uart1:	; 0 bytes @ 0x1
??_init_pwm:	; 0 bytes @ 0x1
??_init_key:	; 0 bytes @ 0x1
??_BEEP_SPEAK:	; 0 bytes @ 0x1
??_isdigit:	; 0 bytes @ 0x1
?_delay_ms:	; 0 bytes @ 0x1
?_delay_us:	; 0 bytes @ 0x1
??_init_interrupt:	; 0 bytes @ 0x1
??_init_led:	; 0 bytes @ 0x1
??_init_osc:	; 0 bytes @ 0x1
??_init_port:	; 0 bytes @ 0x1
??_middle_init:	; 0 bytes @ 0x1
??_uart1_send_byte:	; 0 bytes @ 0x1
?___ftge:	; 1 bit 
?___lbmod:	; 1 bytes @ 0x1
	global	?_crc16
?_crc16:	; 2 bytes @ 0x1
	global	?___awmod
?___awmod:	; 2 bytes @ 0x1
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x1
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x1
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x1
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x1
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x1
	global	crc16@usDataLen
crc16@usDataLen:	; 1 bytes @ 0x1
	global	uart1_send_byte@data
uart1_send_byte@data:	; 1 bytes @ 0x1
	global	_isdigit$1324
_isdigit$1324:	; 1 bytes @ 0x1
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x1
	global	delay_ms@count
delay_ms@count:	; 2 bytes @ 0x1
	global	delay_us@count
delay_us@count:	; 2 bytes @ 0x1
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x1
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x1
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x1
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x1
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x1
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x1
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x1
	ds	1
?_uart1_send_nbyte:	; 0 bytes @ 0x2
??___lbmod:	; 0 bytes @ 0x2
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x2
	global	uart1_send_nbyte@size
uart1_send_nbyte@size:	; 4 bytes @ 0x2
	ds	1
??_delay_ms:	; 0 bytes @ 0x3
??_delay_us:	; 0 bytes @ 0x3
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x3
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x3
	global	delay_us@i
delay_us@i:	; 2 bytes @ 0x3
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x3
	ds	1
??_crc16:	; 0 bytes @ 0x4
??___ftneg:	; 0 bytes @ 0x4
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x4
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x4
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x4
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x4
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x4
	global	crc16@uIndex
crc16@uIndex:	; 4 bytes @ 0x4
	ds	1
??___awmod:	; 0 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x5
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x5
	global	delay_ms@j
delay_ms@j:	; 2 bytes @ 0x5
	global	delay_us@j
delay_us@j:	; 2 bytes @ 0x5
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x5
	ds	1
??_uart1_send_nbyte:	; 0 bytes @ 0x6
??___ftpack:	; 0 bytes @ 0x6
?___lbdiv:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x6
	ds	1
??_transfer_command:	; 0 bytes @ 0x7
??__tdiv_to_l_:	; 0 bytes @ 0x7
??_transfer_data:	; 0 bytes @ 0x7
??___ftge:	; 0 bytes @ 0x7
??___lbdiv:	; 0 bytes @ 0x7
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	transfer_command@data
transfer_command@data:	; 1 bytes @ 0x7
	global	transfer_data@data
transfer_data@data:	; 1 bytes @ 0x7
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
	global	crc16@uchCRCHi
crc16@uchCRCHi:	; 1 bytes @ 0x8
	global	transfer_command@i
transfer_command@i:	; 1 bytes @ 0x8
	global	transfer_data@i
transfer_data@i:	; 1 bytes @ 0x8
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x8
	ds	1
?_lcd_address:	; 0 bytes @ 0x9
??___ftdiv:	; 0 bytes @ 0x9
??___lbtoft:	; 0 bytes @ 0x9
??___lldiv:	; 0 bytes @ 0x9
??___llmod:	; 0 bytes @ 0x9
??___lltoft:	; 0 bytes @ 0x9
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x9
	global	crc16@uchCRCLo
crc16@uchCRCLo:	; 1 bytes @ 0x9
	global	lcd_address@column
lcd_address@column:	; 1 bytes @ 0x9
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x9
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x9
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x9
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x9
	ds	1
??_lcd_address:	; 0 bytes @ 0xA
	global	crc16@puchMsg
crc16@puchMsg:	; 1 bytes @ 0xA
	global	uart1_send_nbyte@data
uart1_send_nbyte@data:	; 1 bytes @ 0xA
	global	lcd_address@page
lcd_address@page:	; 1 bytes @ 0xA
	ds	1
??_init_lcd:	; 0 bytes @ 0xB
??_disp_grap:	; 0 bytes @ 0xB
??_clear_screen:	; 0 bytes @ 0xB
??_driver_init:	; 0 bytes @ 0xB
??_application_init:	; 0 bytes @ 0xB
??_fround:	; 0 bytes @ 0xB
??_scale:	; 0 bytes @ 0xB
??___awdiv:	; 0 bytes @ 0xB
??___ftsub:	; 0 bytes @ 0xB
??___wmul:	; 0 bytes @ 0xB
	ds	1
??_handle_uart_rx_buf:	; 0 bytes @ 0xC
??_main:	; 0 bytes @ 0xC
??___awtoft:	; 0 bytes @ 0xC
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_disp_grap:	; 0 bytes @ 0x0
?_display_string_8x16:	; 0 bytes @ 0x0
??__div_to_l_:	; 0 bytes @ 0x0
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x0
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x0
	global	clear_screen@j
clear_screen@j:	; 1 bytes @ 0x0
	global	display_string_8x16@column
display_string_8x16@column:	; 1 bytes @ 0x0
	global	disp_grap@column
disp_grap@column:	; 1 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x0
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x0
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x0
	ds	1
	global	clear_screen@i
clear_screen@i:	; 1 bytes @ 0x1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	global	display_string_8x16@text
display_string_8x16@text:	; 2 bytes @ 0x1
	global	disp_grap@dp
disp_grap@dp:	; 2 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	1
??_display_string_8x16:	; 0 bytes @ 0x3
	global	disp_grap@page
disp_grap@page:	; 1 bytes @ 0x3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	1
	global	?___wmul
?___wmul:	; 2 bytes @ 0x4
	global	disp_grap@j
disp_grap@j:	; 1 bytes @ 0x4
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x4
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x4
	ds	1
	global	?___llmod
?___llmod:	; 4 bytes @ 0x5
	global	disp_grap@i
disp_grap@i:	; 1 bytes @ 0x5
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x5
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x5
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x6
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x6
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x7
	ds	1
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x8
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x8
	ds	1
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x9
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xA
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0xA
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xA
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0xB
	ds	1
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0xC
	ds	1
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0xD
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xD
	ds	2
	global	display_string_8x16@page
display_string_8x16@page:	; 1 bytes @ 0xF
	ds	1
??___ftmul:	; 0 bytes @ 0x10
	global	display_string_8x16@j
display_string_8x16@j:	; 1 bytes @ 0x10
	ds	1
	global	display_string_8x16@dat
display_string_8x16@dat:	; 1 bytes @ 0x11
	ds	1
	global	display_string_8x16@k
display_string_8x16@k:	; 1 bytes @ 0x12
	ds	1
	global	display_string_8x16@n
display_string_8x16@n:	; 1 bytes @ 0x13
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x13
	ds	1
	global	display_string_8x16@i
display_string_8x16@i:	; 1 bytes @ 0x14
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x14
	ds	1
	global	handle_uart_rx_buf@crc_in
handle_uart_rx_buf@crc_in:	; 2 bytes @ 0x15
	ds	2
	global	handle_uart_rx_buf@i
handle_uart_rx_buf@i:	; 1 bytes @ 0x17
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x17
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x18
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x19
	global	?_scale
?_scale:	; 3 bytes @ 0x19
	ds	4
	global	_fround$1776
_fround$1776:	; 3 bytes @ 0x1D
	global	_scale$1777
_scale$1777:	; 3 bytes @ 0x1D
	ds	3
	global	scale@scl
scale@scl:	; 1 bytes @ 0x20
	global	_fround$1775
_fround$1775:	; 3 bytes @ 0x20
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x21
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x21
	ds	2
	global	fround@prec
fround@prec:	; 1 bytes @ 0x23
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x24
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x24
	ds	1
??___fttol:	; 0 bytes @ 0x25
	ds	2
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x27
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x28
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x29
	ds	1
??___ftadd:	; 0 bytes @ 0x2A
	ds	3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x2D
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x2D
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2E
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2F
	ds	1
??_scan_key_value:	; 0 bytes @ 0x30
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x30
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x30
	ds	3
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x33
	ds	3
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x36
	global	sprintf@f
sprintf@f:	; 2 bytes @ 0x36
	ds	1
	global	scan_key_value@key_temp
scan_key_value@key_temp:	; 2 bytes @ 0x37
	ds	4
;!
;!Data Sizes:
;!    Strings     95
;!    Constant    7334
;!    Data        11
;!    BSS         153
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      13
;!    BANK0            80     59      76
;!    BANK1            80      6      49
;!    BANK2            80      0      53
;!    BANK3            80      0      50
;!    BANK4            80     37      37
;!    BANK5            80      0       0
;!    BANK6            80      0       0
;!    BANK7            80      0       0
;!    BANK8            80      0       0
;!    BANK9            80      0       0
;!    BANK10           80      0       0
;!    BANK11           80      0       0
;!    BANK12           48      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@_val._cp	PTR const unsigned char  size(1) Largest target is 1
;!		 -> sprintf@c(BANK4[1]), 
;!
;!    sprintf@f	PTR const unsigned char  size(2) Largest target is 14
;!		 -> STR_21(CODE[14]), STR_18(CODE[8]), STR_17(CODE[8]), STR_16(CODE[8]), 
;!		 -> STR_15(CODE[8]), STR_14(CODE[8]), STR_13(CODE[8]), STR_12(CODE[8]), 
;!		 -> STR_11(CODE[8]), STR_10(CODE[8]), STR_9(CODE[8]), STR_8(CODE[8]), 
;!		 -> STR_7(CODE[8]), STR_6(CODE[6]), STR_5(CODE[8]), STR_4(CODE[8]), 
;!		 -> STR_3(CODE[8]), STR_2(CODE[8]), STR_1(CODE[8]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 50
;!		 -> buf(BANK3[50]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S1124$_cp	PTR const unsigned char  size(1) Largest target is 1
;!		 -> sprintf@c(BANK4[1]), 
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 1
;!		 -> sprintf@c(BANK4[1]), 
;!
;!    disp_grap@dp	PTR unsigned char  size(2) Largest target is 1024
;!		 -> zhuangtai02(CODE[1024]), zhuangtai01(CODE[1024]), canshu01(CODE[1024]), graphic01(CODE[1024]), 
;!		 -> ZH01(CODE[1024]), 
;!
;!    display_string_8x16@text	PTR unsigned char  size(2) Largest target is 50
;!		 -> STR_20(CODE[17]), STR_19(CODE[17]), buf(BANK3[50]), 
;!
;!    uart1_send_nbyte@data	PTR unsigned char  size(1) Largest target is 25
;!		 -> uart1_tx_buf(BANK2[25]), 
;!
;!    crc16@puchMsg	PTR volatile unsigned char  size(1) Largest target is 25
;!		 -> uart1_tx_buf(BANK2[25]), uart1_rx_buf(BANK2[25]), 
;!
;!    uart_send_point	PTR unsigned char  size(1) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___ftdiv
;!    _sprintf->___ftdiv
;!    _scale->___awdiv
;!    ___awdiv->___awmod
;!    ___wmul->___awdiv
;!    ___lbdiv->___lbmod
;!    ___ftmul->___awdiv
;!    ___lltoft->___ftpack
;!    ___llmod->___lldiv
;!    _scan_key_value->___ftdiv
;!    _uart1_send_nbyte->_uart1_send_byte
;!    ___fttol->___ftdiv
;!    _handle_uart_rx_buf->___awtoft
;!    _display_string_8x16->_lcd_address
;!    ___lbtoft->___ftpack
;!    ___awtoft->___ftpack
;!    _clear_screen->_lcd_address
;!    _disp_grap->_lcd_address
;!    _transfer_data->_delay_us
;!    _lcd_address->_transfer_command
;!    _transfer_command->_delay_us
;!    ___ftdiv->___ftpack
;!
;!Critical Paths under _isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sprintf
;!    _sprintf->___ftsub
;!    _scale->___ftmul
;!    _fround->___ftmul
;!    ___wmul->___awdiv
;!    ___ftmul->___wmul
;!    ___llmod->___lldiv
;!    ___ftsub->___ftadd
;!    _scan_key_value->___ftadd
;!    ___fttol->_scale
;!    ___ftadd->_fround
;!    _handle_uart_rx_buf->_display_string_8x16
;!    _init_lcd->_clear_screen
;!    _application_init->_disp_grap
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_sprintf
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    _main->_sprintf
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _isr in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _isr in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _isr in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _isr in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _isr in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _isr in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _isr in BANK12
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0  117362
;!                            ___ftdiv
;!                   _application_init
;!                              _crc16
;!                _display_string_8x16
;!                        _driver_init
;!                 _handle_uart_rx_buf
;!                        _middle_init
;!                     _scan_key_value
;!                            _sprintf
;!                   _uart1_send_nbyte
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             52    47      5   58950
;!                                             54 BANK0      5     0      5
;!                                              0 BANK1      6     6      0
;!                                              0 BANK4     37    37      0
;!                            ___awdiv
;!                            ___ftadd
;!                            ___ftdiv (ARG)
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                            ___lldiv
;!                            ___llmod
;!                           ___lltoft
;!                             ___wmul
;!                         __div_to_l_
;!                        __tdiv_to_l_
;!                             _fround
;!                            _isdigit
;!                              _scale
;! ---------------------------------------------------------------------------------
;! (2) _scale                                               11     7      4   10686
;!                                             25 BANK0      8     4      4
;!                            ___awdiv
;!                            ___awmod
;!                            ___ftmul
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              6     2      4    1213
;!                                              1 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4    1355
;!                                              7 COMMON     4     0      4
;!                                              0 BANK0      4     4      0
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              2     2      0      99
;!                                              1 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _fround                                              14    10      4    8832
;!                                             25 BANK0     11     7      4
;!                            ___ftmul
;!                            ___lbdiv
;!                            ___lbmod
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4    2956
;!                                              4 BANK0      6     2      4
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                            ___lbdiv (ARG)
;!                            ___lbmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lbdiv                                              4     3      1     436
;!                                              6 COMMON     4     3      1
;!                            ___lbmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             15     9      6    4465
;!                                             10 BANK0     15     9      6
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                           ___ftpack
;!                            ___lbdiv (ARG)
;!                            ___lbmod (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) __tdiv_to_l_                                         15     9      6     584
;!                                              1 COMMON     9     3      6
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (2) __div_to_l_                                          20    14      6     803
;!                                              1 COMMON     6     0      6
;!                                              0 BANK0     14    14      0
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             5     1      4    2324
;!                                              9 COMMON     1     1      0
;!                                              0 BANK0      4     0      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___llmod                                              9     1      8     752
;!                                              9 COMMON     1     1      0
;!                                              5 BANK0      8     0      8
;!                            ___lldiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             13     5      8     761
;!                                              1 COMMON     8     0      8
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (2) ___ftsub                                              6     0      6    6437
;!                                             48 BANK0      6     0      6
;!                            ___ftadd
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftneg                                              3     0      3     130
;!                                              1 COMMON     3     0      3
;! ---------------------------------------------------------------------------------
;! (1) _scan_key_value                                       9     9      0   22219
;!                                             48 BANK0      9     9      0
;!                         _BEEP_SPEAK
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___fttol
;!                            ___lbmod
;!                              _crc16
;!                          _disp_grap
;!                   _uart1_send_nbyte
;! ---------------------------------------------------------------------------------
;! (1) _uart1_send_nbyte                                     9     5      4     388
;!                                              2 COMMON     9     5      4
;!                    _uart1_send_byte
;! ---------------------------------------------------------------------------------
;! (2) _uart1_send_byte                                      1     1      0      22
;!                                              1 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             13     9      4     891
;!                                             33 BANK0     13     9      4
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                              _scale (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                               6     0      6    4618
;!                                              1 COMMON     6     0      6
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             12     6      6    6242
;!                                             36 BANK0     12     6      6
;!                           ___ftpack
;!                             _fround (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _middle_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _handle_uart_rx_buf                                   3     3      0   16048
;!                                             21 BANK0      3     3      0
;!                           ___awtoft
;!                           ___lbtoft
;!                              _crc16
;!                           _delay_ms
;!                          _disp_grap
;!                _display_string_8x16
;! ---------------------------------------------------------------------------------
;! (2) _display_string_8x16                                 21    18      3    5985
;!                                              0 BANK0     21    18      3
;!                        _lcd_address
;!                      _transfer_data
;! ---------------------------------------------------------------------------------
;! (2) _crc16                                               10     7      3     742
;!                                              1 COMMON    10     7      3
;! ---------------------------------------------------------------------------------
;! (2) ___lbtoft                                             5     1      4    2188
;!                                              9 COMMON     1     1      0
;!                                              0 BANK0      4     0      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___awtoft                                             4     1      3    2745
;!                                              9 COMMON     3     0      3
;!                                              0 BANK0      1     1      0
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) _driver_init                                          0     0      0    4319
;!                          _init_beep
;!                     _init_interrupt
;!                           _init_key
;!                           _init_lcd
;!                           _init_led
;!                           _init_osc
;!                          _init_port
;!                           _init_pwm
;!                        _init_timer1
;!                         _init_uart1
;! ---------------------------------------------------------------------------------
;! (2) _init_uart1                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_timer1                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_pwm                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_port                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_osc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_led                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_lcd                                             0     0      0    4319
;!                       _clear_screen
;!                           _delay_us
;!                   _transfer_command
;! ---------------------------------------------------------------------------------
;! (3) _clear_screen                                         2     2      0    2614
;!                                              0 BANK0      2     2      0
;!                        _lcd_address
;!                      _transfer_data
;! ---------------------------------------------------------------------------------
;! (2) _init_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_interrupt                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_beep                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _application_init                                     0     0      0    4184
;!                         _BEEP_SPEAK
;!                           _delay_ms
;!                          _disp_grap
;! ---------------------------------------------------------------------------------
;! (2) _disp_grap                                            6     3      3    3880
;!                                              0 BANK0      6     3      3
;!                        _lcd_address
;!                      _transfer_data
;! ---------------------------------------------------------------------------------
;! (3) _transfer_data                                        2     2      0     919
;!                                              7 COMMON     2     2      0
;!                           _delay_us
;! ---------------------------------------------------------------------------------
;! (3) _lcd_address                                          2     1      1    1528
;!                                              9 COMMON     2     1      1
;!                   _transfer_command
;! ---------------------------------------------------------------------------------
;! (4) _transfer_command                                     2     2      0     919
;!                                              7 COMMON     2     2      0
;!                           _delay_us
;! ---------------------------------------------------------------------------------
;! (4) _delay_us                                             6     4      2     786
;!                                              1 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (2) _delay_ms                                             6     4      2     304
;!                                              1 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (2) _BEEP_SPEAK                                           2     2      0       0
;! ---------------------------------------------------------------------------------
;! (3) ___lbmod                                              5     4      1     557
;!                                              1 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             15     9      6    4527
;!                                              9 COMMON     3     3      0
;!                                              0 BANK0     12     6      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    2157
;!                                              1 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    2157
;!                                              1 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _isr                                                  2     2      0      23
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___ftdiv
;!     ___ftpack
;!   _application_init
;!     _BEEP_SPEAK
;!     _delay_ms
;!     _disp_grap
;!       _lcd_address
;!         _transfer_command
;!           _delay_us
;!       _transfer_data
;!         _delay_us
;!   _crc16
;!   _display_string_8x16
;!     _lcd_address
;!       _transfer_command
;!         _delay_us
;!     _transfer_data
;!       _delay_us
;!   _driver_init
;!     _init_beep
;!     _init_interrupt
;!     _init_key
;!     _init_lcd
;!       _clear_screen
;!         _lcd_address
;!           _transfer_command
;!             _delay_us
;!         _transfer_data
;!           _delay_us
;!       _delay_us
;!       _transfer_command
;!         _delay_us
;!     _init_led
;!     _init_osc
;!     _init_port
;!     _init_pwm
;!     _init_timer1
;!     _init_uart1
;!   _handle_uart_rx_buf
;!     ___awtoft
;!       ___ftpack
;!     ___lbtoft
;!       ___ftpack
;!     _crc16
;!     _delay_ms
;!     _disp_grap
;!       _lcd_address
;!         _transfer_command
;!           _delay_us
;!       _transfer_data
;!         _delay_us
;!     _display_string_8x16
;!       _lcd_address
;!         _transfer_command
;!           _delay_us
;!       _transfer_data
;!         _delay_us
;!   _middle_init
;!   _scan_key_value
;!     _BEEP_SPEAK
;!     ___ftadd
;!       ___ftpack
;!       _fround (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___ftpack (ARG)
;!           ___lbdiv (ARG)
;!             ___lbmod (ARG)
;!           ___lbmod (ARG)
;!           ___wmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___lbdiv (ARG)
;!               ___lbmod (ARG)
;!             ___lbmod (ARG)
;!         ___lbdiv
;!           ___lbmod (ARG)
;!         ___lbmod
;!         ___wmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___lbdiv (ARG)
;!             ___lbmod (ARG)
;!           ___lbmod (ARG)
;!     ___ftdiv
;!       ___ftpack
;!     ___ftge
;!     ___fttol
;!       ___ftdiv (ARG)
;!         ___ftpack
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___ftpack (ARG)
;!         ___lbdiv (ARG)
;!           ___lbmod (ARG)
;!         ___lbmod (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___lbdiv (ARG)
;!             ___lbmod (ARG)
;!           ___lbmod (ARG)
;!       _scale (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___ftpack (ARG)
;!           ___lbdiv (ARG)
;!             ___lbmod (ARG)
;!           ___lbmod (ARG)
;!           ___wmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___lbdiv (ARG)
;!               ___lbmod (ARG)
;!             ___lbmod (ARG)
;!         ___wmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___lbdiv (ARG)
;!             ___lbmod (ARG)
;!           ___lbmod (ARG)
;!     ___lbmod
;!     _crc16
;!     _disp_grap
;!       _lcd_address
;!         _transfer_command
;!           _delay_us
;!       _transfer_data
;!         _delay_us
;!     _uart1_send_nbyte
;!       _uart1_send_byte
;!   _sprintf
;!     ___awdiv
;!       ___awmod (ARG)
;!     ___ftadd
;!       ___ftpack
;!       _fround (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___ftpack (ARG)
;!           ___lbdiv (ARG)
;!             ___lbmod (ARG)
;!           ___lbmod (ARG)
;!           ___wmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___lbdiv (ARG)
;!               ___lbmod (ARG)
;!             ___lbmod (ARG)
;!         ___lbdiv
;!           ___lbmod (ARG)
;!         ___lbmod
;!         ___wmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___lbdiv (ARG)
;!             ___lbmod (ARG)
;!           ___lbmod (ARG)
;!     ___ftdiv (ARG)
;!       ___ftpack
;!     ___ftge (ARG)
;!     ___ftmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___ftpack (ARG)
;!       ___lbdiv (ARG)
;!         ___lbmod (ARG)
;!       ___lbmod (ARG)
;!       ___wmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___lbdiv (ARG)
;!           ___lbmod (ARG)
;!         ___lbmod (ARG)
;!     ___ftneg (ARG)
;!     ___ftsub (ARG)
;!       ___ftadd
;!         ___ftpack
;!         _fround (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___ftpack (ARG)
;!             ___lbdiv (ARG)
;!               ___lbmod (ARG)
;!             ___lbmod (ARG)
;!             ___wmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___lbdiv (ARG)
;!                 ___lbmod (ARG)
;!               ___lbmod (ARG)
;!           ___lbdiv
;!             ___lbmod (ARG)
;!           ___lbmod
;!           ___wmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___lbdiv (ARG)
;!               ___lbmod (ARG)
;!             ___lbmod (ARG)
;!       ___lltoft (ARG)
;!         ___ftpack
;!     ___fttol (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___ftpack (ARG)
;!         ___lbdiv (ARG)
;!           ___lbmod (ARG)
;!         ___lbmod (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___lbdiv (ARG)
;!             ___lbmod (ARG)
;!           ___lbmod (ARG)
;!       _scale (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___ftpack (ARG)
;!           ___lbdiv (ARG)
;!             ___lbmod (ARG)
;!           ___lbmod (ARG)
;!           ___wmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___lbdiv (ARG)
;!               ___lbmod (ARG)
;!             ___lbmod (ARG)
;!         ___wmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___lbdiv (ARG)
;!             ___lbmod (ARG)
;!           ___lbmod (ARG)
;!     ___lldiv (ARG)
;!     ___llmod (ARG)
;!       ___lldiv (ARG)
;!     ___lltoft (ARG)
;!       ___ftpack
;!     ___wmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___lbdiv (ARG)
;!         ___lbmod (ARG)
;!       ___lbmod (ARG)
;!     __div_to_l_ (ARG)
;!     __tdiv_to_l_ (ARG)
;!     _fround (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___ftpack (ARG)
;!         ___lbdiv (ARG)
;!           ___lbmod (ARG)
;!         ___lbmod (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___lbdiv (ARG)
;!             ___lbmod (ARG)
;!           ___lbmod (ARG)
;!       ___lbdiv
;!         ___lbmod (ARG)
;!       ___lbmod
;!       ___wmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___lbdiv (ARG)
;!           ___lbmod (ARG)
;!         ___lbmod (ARG)
;!     _isdigit (ARG)
;!     _scale (ARG)
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___awmod
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___ftpack (ARG)
;!         ___lbdiv (ARG)
;!           ___lbmod (ARG)
;!         ___lbmod (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___lbdiv (ARG)
;!             ___lbmod (ARG)
;!           ___lbmod (ARG)
;!       ___wmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___lbdiv (ARG)
;!           ___lbmod (ARG)
;!         ___lbmod (ARG)
;!   _uart1_send_nbyte
;!     _uart1_send_byte
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             3F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      C       D       2       92.9%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     3B      4C       5       95.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BANK1               50      6      31       7       61.3%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BANK2               50      0      35       9       66.3%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BITBANK3            50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BANK3               50      0      32      11       62.5%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BITBANK4            50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BANK4               50     25      25      13       46.3%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITBANK5            50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BANK5               50      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITBANK6            50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BANK6               50      0       0      17        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITBANK7            50      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BANK7               50      0       0      19        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!ABS                  0      0     116      20        0.0%
;!BITBANK8            50      0       0      21        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BANK8               50      0       0      22        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITBANK9            50      0       0      23        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BANK9               50      0       0      24        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITBANK10           50      0       0      25        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BANK10              50      0       0      26        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITBANK11           50      0       0      27        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BANK11              50      0       0      28        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITBANK12           30      0       0      29        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BANK12              30      0       0      30        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!DATA                 0      0     116      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 281 in file "D:\MCUProject\YCQ\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  270[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___ftdiv
;;		_application_init
;;		_crc16
;;		_display_string_8x16
;;		_driver_init
;;		_handle_uart_rx_buf
;;		_middle_init
;;		_scan_key_value
;;		_sprintf
;;		_uart1_send_nbyte
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"D:\MCUProject\YCQ\src\main.c"
	line	281
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\MCUProject\YCQ\src\main.c"
	line	281
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 9
; Regs used in _main: [allreg]
	line	283
	
l9525:	
;main.c: 283: driver_init();
	fcall	_driver_init
	line	284
	
l9527:	
;main.c: 284: middle_init();
	fcall	_middle_init
	line	285
	
l9529:	
;main.c: 285: application_init();
	fcall	_application_init
	line	288
;main.c: 288: while(1)
	
l271:	
	line	291
# 291 "D:\MCUProject\YCQ\src\main.c"
clrwdt ;# 
psect	maintext
	line	293
	
l9531:	
;main.c: 293: if(handle_scan_key_flag==0x01)
	movlb 1	; select bank1
	decf	(_handle_scan_key_flag)^080h,w
	skipz
	goto	u6811
	goto	u6810
u6811:
	goto	l9537
u6810:
	line	295
	
l9533:	
;main.c: 294: {
;main.c: 295: scan_key_value();
	fcall	_scan_key_value
	line	297
	
l9535:	
;main.c: 297: handle_scan_key_flag=0x00;
	movlb 1	; select bank1
	clrf	(_handle_scan_key_flag)^080h
	line	300
	
l9537:	
;main.c: 298: }
;main.c: 300: if((poll_task_flag==0x01)&&(menu_index_q==0x01))
	decf	(_poll_task_flag)^080h,w
	skipz
	goto	u6821
	goto	u6820
u6821:
	goto	l9557
u6820:
	
l9539:	
	movlb 0	; select bank0
	decf	(_menu_index_q),w
	skipz
	goto	u6831
	goto	u6830
u6831:
	goto	l9557
u6830:
	line	302
	
l9541:	
;main.c: 301: {
;main.c: 302: tx_frame_kind=0x01;
	movlb 1	; select bank1
	clrf	(_tx_frame_kind)^080h
	incf	(_tx_frame_kind)^080h,f
	line	304
	
l9543:	
;main.c: 304: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 2	; select bank2
	movwf	(_uart1_tx_buf)^0100h
	line	306
;main.c: 306: uart1_tx_buf[1]=0xA1;
	movlw	(0A1h)
	movwf	0+(_uart1_tx_buf)^0100h+01h
	line	308
	
l9545:	
;main.c: 308: crc_data=crc16(&uart1_tx_buf[1],1);
	clrf	(crc16@usDataLen)
	incf	(crc16@usDataLen),f
	movlw	(_uart1_tx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movlb 0	; select bank0
	movwf	(_crc_data+1)
	movf	(0+(?_crc16)),w
	movwf	(_crc_data)
	line	310
	
l9547:	
;main.c: 310: uart1_tx_buf[2]=crc_data/256;
	movf	(_crc_data+1),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+02h
	line	312
	
l9549:	
;main.c: 312: uart1_tx_buf[3]=crc_data%256;
	movlb 0	; select bank0
	movf	(_crc_data),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+03h
	line	314
	
l9551:	
;main.c: 314: uart1_tx_buf[4]=0xAA;
	movlw	(0AAh)
	movwf	0+(_uart1_tx_buf)^0100h+04h
	line	316
	
l9553:	
;main.c: 316: uart1_send_nbyte(uart1_tx_buf,5);
	movlw	05h
	movwf	(uart1_send_nbyte@size)
	clrf	(uart1_send_nbyte@size+1)
	clrf	(uart1_send_nbyte@size+2)
	clrf	(uart1_send_nbyte@size+3)

	movlw	(_uart1_tx_buf)&0ffh
	fcall	_uart1_send_nbyte
	line	319
	
l9555:	
;main.c: 319: poll_task_flag=0x00;
	movlb 1	; select bank1
	clrf	(_poll_task_flag)^080h
	line	322
	
l9557:	
;main.c: 320: }
;main.c: 322: if(display_lcd_flag==0x01)
	movlb 1	; select bank1
	decf	(_display_lcd_flag)^080h,w
	skipz
	goto	u6841
	goto	u6840
u6841:
	goto	l9651
u6840:
	line	324
	
l9559:	
;main.c: 323: {
;main.c: 324: if(menu_index_q==0x01)
	movlb 0	; select bank0
	decf	(_menu_index_q),w
	skipz
	goto	u6851
	goto	u6850
u6851:
	goto	l9583
u6850:
	line	326
	
l9561:	
;main.c: 325: {
;main.c: 326: if(zhuangtai_cnt)
	movlb 1	; select bank1
	movf	(_zhuangtai_cnt)^080h,w
	skipz
	goto	u6860
	goto	l9573
u6860:
	line	328
	
l9563:	
;main.c: 327: {
;main.c: 328: sprintf(buf, "%5.2fV\n", p_v/100);
	movlw	low(STR_1|8000h)
	movlb 0	; select bank0
	movwf	(sprintf@f)
	movlw	high(STR_1|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_p_v)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_p_v+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_p_v+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	330
	
l9565:	
;main.c: 330: display_string_8x16(3,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(03h)
	fcall	_display_string_8x16
	line	332
	
l9567:	
;main.c: 332: sprintf(buf, "%5.2fV\n", b_v/100);
	movlw	low(STR_2|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_2|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_b_v)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_b_v+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_b_v+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	334
;main.c: 334: display_string_8x16(5,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(05h)
	fcall	_display_string_8x16
	line	336
	
l9569:	
;main.c: 336: sprintf(buf, "%5.2fV\n", load_v/100);
	movlw	low(STR_3|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_3|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_load_v)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_load_v+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_v+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	338
	
l9571:	
;main.c: 338: display_string_8x16(7,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(07h)
	fcall	_display_string_8x16
	line	339
;main.c: 339: }
	goto	l9649
	line	342
	
l9573:	
;main.c: 340: else
;main.c: 341: {
;main.c: 342: sprintf(buf, "%5.2fA\n", charge_I/100);
	movlw	low(STR_4|8000h)
	movlb 0	; select bank0
	movwf	(sprintf@f)
	movlw	high(STR_4|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_charge_I)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_charge_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_charge_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	344
	
l9575:	
;main.c: 344: display_string_8x16(3,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(03h)
	fcall	_display_string_8x16
	line	346
	
l9577:	
;main.c: 346: sprintf(buf, "%5.2fA\n", load_I/100);
	movlw	low(STR_5|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_5|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_load_I)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_load_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	348
;main.c: 348: display_string_8x16(5,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(05h)
	fcall	_display_string_8x16
	line	350
	
l9579:	
;main.c: 350: sprintf(buf, "%02x\n", work_mode);
	movlw	low(STR_6|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_6|8000h)
	movwf	((sprintf@f))+1
	movlb 2	; select bank2
	movf	(_work_mode)^0100h,w
	movlb 0	; select bank0
	movwf	0+(?_sprintf)+02h
	movlb 2	; select bank2
	movf	(_work_mode+1)^0100h,w
	movlb 0	; select bank0
	movwf	1+(?_sprintf)+02h
	movlb 2	; select bank2
	movf	(_work_mode+2)^0100h,w
	movlb 0	; select bank0
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	352
	
l9581:	
;main.c: 352: display_string_8x16(7,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(07h)
	fcall	_display_string_8x16
	goto	l9649
	line	353
	
l277:	
	line	354
;main.c: 353: }
;main.c: 354: }
	goto	l9649
	line	355
	
l9583:	
;main.c: 355: else if(menu_index_q==0x02)
	movf	(_menu_index_q),w
	xorlw	02h&0ffh
	skipz
	goto	u6871
	goto	u6870
u6871:
	goto	l9595
u6870:
	line	357
	
l9585:	
;main.c: 356: {
;main.c: 357: sprintf(buf, "%5.2fV\n", light_pv/100);
	movlw	low(STR_7|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_7|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movf	(_light_pv),w
	movwf	(___ftdiv@f1)
	movf	(_light_pv+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_light_pv+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	359
	
l9587:	
;main.c: 359: display_string_8x16(3,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(03h)
	fcall	_display_string_8x16
	line	361
	
l9589:	
;main.c: 361: sprintf(buf, "%5.2fA\n", load_cc_I/100);
	movlw	low(STR_8|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_8|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movf	(_load_cc_I),w
	movwf	(___ftdiv@f1)
	movf	(_load_cc_I+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	363
;main.c: 363: display_string_8x16(5,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(05h)
	fcall	_display_string_8x16
	line	365
	
l9591:	
;main.c: 365: sprintf(buf, "%3.f%%\n", load_percent);
	movlw	low(STR_9|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_9|8000h)
	movwf	((sprintf@f))+1
	movf	(_load_percent),w
	movwf	0+(?_sprintf)+02h
	movf	(_load_percent+1),w
	movwf	1+(?_sprintf)+02h
	movf	(_load_percent+2),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	367
	
l9593:	
;main.c: 367: display_string_8x16(7,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(07h)
	fcall	_display_string_8x16
	line	368
;main.c: 368: }
	goto	l9649
	line	369
	
l9595:	
;main.c: 369: else if(menu_index_q==0x03)
	movf	(_menu_index_q),w
	xorlw	03h&0ffh
	skipz
	goto	u6881
	goto	u6880
u6881:
	goto	l9613
u6880:
	line	371
	
l9597:	
;main.c: 370: {
;main.c: 371: sprintf(buf, "%5.2fV\n", light_pv/100);
	movlw	low(STR_10|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_10|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movf	(_light_pv),w
	movwf	(___ftdiv@f1)
	movf	(_light_pv+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_light_pv+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	373
	
l9599:	
;main.c: 373: display_string_8x16(3,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(03h)
	fcall	_display_string_8x16
	line	376
	
l9601:	
;main.c: 376: menu_index_q=0x02;
	movlw	(02h)
	movwf	(_menu_index_q)
	line	378
	
l9603:	
;main.c: 378: sprintf(buf, "%5.2fA\n", load_cc_I/100);
	movlw	low(STR_11|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_11|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movf	(_load_cc_I),w
	movwf	(___ftdiv@f1)
	movf	(_load_cc_I+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	380
	
l9605:	
;main.c: 380: display_string_8x16(5,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(05h)
	fcall	_display_string_8x16
	line	382
	
l9607:	
;main.c: 382: sprintf(buf, "%3.f%%\n", load_percent);
	movlw	low(STR_12|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_12|8000h)
	movwf	((sprintf@f))+1
	movf	(_load_percent),w
	movwf	0+(?_sprintf)+02h
	movf	(_load_percent+1),w
	movwf	1+(?_sprintf)+02h
	movf	(_load_percent+2),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	384
	
l9609:	
;main.c: 384: display_string_8x16(7,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(07h)
	fcall	_display_string_8x16
	line	386
	
l9611:	
;main.c: 386: menu_index_q=0x03;
	movlw	(03h)
	movwf	(_menu_index_q)
	line	389
;main.c: 389: }
	goto	l9649
	line	390
	
l9613:	
;main.c: 390: else if(menu_index_q==0x05)
	movf	(_menu_index_q),w
	xorlw	05h&0ffh
	skipz
	goto	u6891
	goto	u6890
u6891:
	goto	l9631
u6890:
	line	392
	
l9615:	
;main.c: 391: {
;main.c: 392: sprintf(buf, "%5.2fA\n", load_cc_I/100);
	movlw	low(STR_13|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_13|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movf	(_load_cc_I),w
	movwf	(___ftdiv@f1)
	movf	(_load_cc_I+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	394
	
l9617:	
;main.c: 394: display_string_8x16(5,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(05h)
	fcall	_display_string_8x16
	line	397
	
l9619:	
;main.c: 397: menu_index_q=0x02;
	movlw	(02h)
	movwf	(_menu_index_q)
	line	399
	
l9621:	
;main.c: 399: sprintf(buf, "%5.2fV\n", light_pv/100);
	movlw	low(STR_14|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_14|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movf	(_light_pv),w
	movwf	(___ftdiv@f1)
	movf	(_light_pv+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_light_pv+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	401
	
l9623:	
;main.c: 401: display_string_8x16(3,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(03h)
	fcall	_display_string_8x16
	line	403
	
l9625:	
;main.c: 403: sprintf(buf, "%3.f%%\n", load_percent);
	movlw	low(STR_15|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_15|8000h)
	movwf	((sprintf@f))+1
	movf	(_load_percent),w
	movwf	0+(?_sprintf)+02h
	movf	(_load_percent+1),w
	movwf	1+(?_sprintf)+02h
	movf	(_load_percent+2),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	405
	
l9627:	
;main.c: 405: display_string_8x16(7,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(07h)
	fcall	_display_string_8x16
	line	407
	
l9629:	
;main.c: 407: menu_index_q=0x05;
	movlw	(05h)
	movwf	(_menu_index_q)
	line	410
;main.c: 410: }
	goto	l9649
	line	411
	
l9631:	
;main.c: 411: else if(menu_index_q==0x07)
	movf	(_menu_index_q),w
	xorlw	07h&0ffh
	skipz
	goto	u6901
	goto	u6900
u6901:
	goto	l277
u6900:
	line	413
	
l9633:	
;main.c: 412: {
;main.c: 413: sprintf(buf, "%3.f%%\n", load_percent);
	movlw	low(STR_16|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_16|8000h)
	movwf	((sprintf@f))+1
	movf	(_load_percent),w
	movwf	0+(?_sprintf)+02h
	movf	(_load_percent+1),w
	movwf	1+(?_sprintf)+02h
	movf	(_load_percent+2),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	415
	
l9635:	
;main.c: 415: display_string_8x16(7,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(07h)
	fcall	_display_string_8x16
	line	419
	
l9637:	
;main.c: 419: menu_index_q=0x02;
	movlw	(02h)
	movwf	(_menu_index_q)
	line	421
	
l9639:	
;main.c: 421: sprintf(buf, "%5.2fA\n", load_cc_I/100);
	movlw	low(STR_17|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_17|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movf	(_load_cc_I),w
	movwf	(___ftdiv@f1)
	movf	(_load_cc_I+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	423
	
l9641:	
;main.c: 423: display_string_8x16(5,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(05h)
	fcall	_display_string_8x16
	line	425
	
l9643:	
;main.c: 425: sprintf(buf, "%5.2fV\n", light_pv/100);
	movlw	low(STR_18|8000h)
	movwf	(sprintf@f)
	movlw	high(STR_18|8000h)
	movwf	((sprintf@f))+1
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movf	(_light_pv),w
	movwf	(___ftdiv@f1)
	movf	(_light_pv+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_light_pv+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?_sprintf)+02h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?_sprintf)+02h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?_sprintf)+02h
	movlw	(_buf)&0ffh
	fcall	_sprintf
	line	427
	
l9645:	
;main.c: 427: display_string_8x16(3,75,buf);
	movlw	(04Bh)
	movlb 0	; select bank0
	movwf	(display_string_8x16@column)
	movlw	low(_buf)
	movwf	(display_string_8x16@text)
	movlw	high(_buf)
	movwf	(display_string_8x16@text+1)
	movlw	(03h)
	fcall	_display_string_8x16
	line	429
	
l9647:	
;main.c: 429: menu_index_q=0x07;
	movlw	(07h)
	movwf	(_menu_index_q)
	line	434
	
l9649:	
;main.c: 432: }
;main.c: 434: display_lcd_flag=0x00;
	movlb 1	; select bank1
	clrf	(_display_lcd_flag)^080h
	line	439
	
l9651:	
;main.c: 436: }
;main.c: 439: if (RCSTAbits.FERR || RCSTAbits.OERR)
	movlb 3	; select bank3
	btfsc	(413)^0180h,2	;volatile
	goto	u6911
	goto	u6910
u6911:
	goto	l288
u6910:
	
l9653:	
	btfss	(413)^0180h,1	;volatile
	goto	u6921
	goto	u6920
u6921:
	goto	l9655
u6920:
	
l288:	
	line	441
;main.c: 440: {
;main.c: 441: RCSTAbits.CREN = 0x00;
	bcf	(413)^0180h,4	;volatile
	line	442
;main.c: 442: RCSTAbits.SPEN = 0x00;
	bcf	(413)^0180h,7	;volatile
	line	443
;main.c: 443: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	444
;main.c: 444: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	445
;main.c: 445: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	446
;main.c: 446: RCSTAbits.CREN = 0x01;
	movlb 3	; select bank3
	bsf	(413)^0180h,4	;volatile
	line	447
;main.c: 447: RCSTAbits.SPEN = 0x01;
	bsf	(413)^0180h,7	;volatile
	line	450
	
l9655:	
;main.c: 448: }
;main.c: 450: if(uart1_receive_flag==TRUE)
	movlb 1	; select bank1
	decf	(_uart1_receive_flag)^080h,w
	skipz
	goto	u6931
	goto	u6930
u6931:
	goto	l271
u6930:
	line	452
	
l9657:	
;main.c: 451: {
;main.c: 452: handle_uart_rx_buf();
	fcall	_handle_uart_rx_buf
	line	454
	
l9659:	
;main.c: 454: if (RCSTAbits.FERR || RCSTAbits.OERR)
	movlb 3	; select bank3
	btfsc	(413)^0180h,2	;volatile
	goto	u6941
	goto	u6940
u6941:
	goto	l292
u6940:
	
l9661:	
	btfss	(413)^0180h,1	;volatile
	goto	u6951
	goto	u6950
u6951:
	goto	l9663
u6950:
	
l292:	
	line	456
;main.c: 455: {
;main.c: 456: RCSTAbits.CREN = 0x00;
	bcf	(413)^0180h,4	;volatile
	line	457
;main.c: 457: RCSTAbits.SPEN = 0x00;
	bcf	(413)^0180h,7	;volatile
	line	458
;main.c: 458: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	459
;main.c: 459: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	460
;main.c: 460: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	461
;main.c: 461: RCSTAbits.CREN = 0x01;
	movlb 3	; select bank3
	bsf	(413)^0180h,4	;volatile
	line	462
;main.c: 462: RCSTAbits.SPEN = 0x01;
	bsf	(413)^0180h,7	;volatile
	line	465
	
l9663:	
;main.c: 463: }
;main.c: 465: rx_frame_kind=0x00;
	movlb 1	; select bank1
	clrf	(_rx_frame_kind)^080h
	line	467
;main.c: 467: uart1_receive_byte_count=0x00;
	clrf	(_uart1_receive_byte_count)
	line	469
;main.c: 469: uart1_receive_flag=FALSE;
	clrf	(_uart1_receive_flag)^080h
	goto	l271
	global	start
	ljmp	start
	opt stack 0
	line	476
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> buf(50), 
;;  f               2   54[BANK0 ] PTR const unsigned char 
;;		 -> STR_21(14), STR_18(8), STR_17(8), STR_16(8), 
;;		 -> STR_15(8), STR_14(8), STR_13(8), STR_12(8), 
;;		 -> STR_11(8), STR_10(8), STR_9(8), STR_8(8), 
;;		 -> STR_7(8), STR_6(6), STR_5(8), STR_4(8), 
;;		 -> STR_3(8), STR_2(8), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  sp              1   35[BANK4 ] PTR unsigned char 
;;		 -> buf(50), 
;;  idx             1    7[BANK4 ] unsigned char 
;;  vd              4    8[BANK4 ] unsigned long 
;;  vd              4   12[BANK4 ] unsigned long 
;;  _val            4   31[BANK4 ] struct .
;;  fval            3   22[BANK4 ] struct .
;;  integ           3   17[BANK4 ] struct .
;;  ival            3    0        struct .
;;  prec            2   29[BANK4 ] int 
;;  width           2   27[BANK4 ] int 
;;  flag            2   25[BANK4 ] unsigned short 
;;  exp             2   20[BANK4 ] int 
;;  c               1   36[BANK4 ] char 
;;  ap              1   16[BANK4 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   54[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/4
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0      37       0       0       0       0       0       0       0       0
;;      Temps:          0       0       6       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       6       0       0      37       0       0       0       0       0       0       0       0
;;Total ram usage:       48 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awdiv
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		___lldiv
;;		___llmod
;;		___lltoft
;;		___wmul
;;		__div_to_l_
;;		__tdiv_to_l_
;;		_fround
;;		_isdigit
;;		_scale
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	492
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 11
; Regs used in _sprintf: [wreg-fsr1h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	movlb 4	; select bank4
	movwf	(sprintf@sp)^0200h
	line	542
	
l10125:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 504: int prec;
;doprnt.c: 508: unsigned short flag;
;doprnt.c: 515: char d;
;doprnt.c: 516: double fval, integ;
;doprnt.c: 517: int exp;
;doprnt.c: 518: double ival;
;doprnt.c: 519: union {
;doprnt.c: 520: unsigned long _val;
;doprnt.c: 521: struct {
;doprnt.c: 522: const char * _cp;
;doprnt.c: 523: unsigned _len;
;doprnt.c: 524: } _str;
;doprnt.c: 525: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+02h)&0ffh
	movwf	(sprintf@ap)^0200h
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l10513
	line	547
	
l10127:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c)^0200h,w
	xorlw	025h&0ffh
	skipnz
	goto	u7551
	goto	u7550
u7551:
	goto	l10133
u7550:
	line	550
	
l10129:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(sprintf@c)^0200h,w
	movwf	indf1
	
l10131:	
	incf	(sprintf@sp)^0200h,f
	line	551
;doprnt.c: 551: continue;
	goto	l10513
	line	555
	
l10133:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(sprintf@width)^0200h
	clrf	(sprintf@width+1)^0200h
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)^0200h
	clrf	(sprintf@flag+1)^0200h
	goto	l10139
	line	588
;doprnt.c: 588: case '0':
	
l984:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	movlb 4	; select bank4
	bsf	(sprintf@flag)^0200h+(2/8),(2)&7
	line	590
	
l10135:	
;doprnt.c: 590: f++;
	movlb 0	; select bank0
	incf	(sprintf@f),f
	skipnz
	incf	(sprintf@f+1),f
	line	560
;doprnt.c: 591: continue;
	
l10139:	
	movlb 0	; select bank0
	movf	(sprintf@f),w
	movwf	fsr0l
	movf	((sprintf@f+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l984
	goto	l10141
	opt asmopt_on

	line	606
	
l10141:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(sprintf@f),w
	movwf	fsr0l
	movf	((sprintf@f+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_isdigit
	btfss	status,0
	goto	u7561
	goto	u7560
u7561:
	goto	l10153
u7560:
	line	607
	
l10143:	
;doprnt.c: 607: width = 0;
	movlb 4	; select bank4
	clrf	(sprintf@width)^0200h
	clrf	(sprintf@width+1)^0200h
	line	609
	
l10145:	
;doprnt.c: 609: width *= 10;
	movlw	0Ah
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlb 4	; select bank4
	movf	(sprintf@width+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplicand+1)
	movlb 4	; select bank4
	movf	(sprintf@width)^0200h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplicand)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movlb 4	; select bank4
	movwf	(sprintf@width+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___wmul)),w
	movlb 4	; select bank4
	movwf	(sprintf@width)^0200h
	line	610
	
l10147:	
;doprnt.c: 610: width += *f++ - '0';
	movlb 0	; select bank0
	movf	(sprintf@f),w
	movwf	fsr0l
	movf	((sprintf@f+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	addlw	low(-48)
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_sprintf+0)^080h+0)+1
	movf	0+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	addwf	(sprintf@width)^0200h,f
	movlb 1	; select bank1
	movf	1+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	addwfc	(sprintf@width+1)^0200h,f
	
l10149:	
	movlb 0	; select bank0
	incf	(sprintf@f),f
	skipnz
	incf	(sprintf@f+1),f
	line	611
	
l10151:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(sprintf@f),w
	movwf	fsr0l
	movf	((sprintf@f+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_isdigit
	btfsc	status,0
	goto	u7571
	goto	u7570
u7571:
	goto	l10145
u7570:
	line	620
	
l10153:	
;doprnt.c: 617: }
;doprnt.c: 620: if(*f == '.') {
	movf	(sprintf@f),w
	movwf	fsr0l
	movf	((sprintf@f+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	xorlw	02Eh
	skipz
	goto	u7581
	goto	u7580
u7581:
	goto	l10167
u7580:
	line	621
	
l10155:	
;doprnt.c: 621: flag |= 0x4000;
	movlb 4	; select bank4
	bsf	(sprintf@flag)^0200h+(14/8),(14)&7
	line	622
	
l10157:	
;doprnt.c: 622: f++;
	movlb 0	; select bank0
	incf	(sprintf@f),f
	skipnz
	incf	(sprintf@f+1),f
	line	630
	
l10159:	
;doprnt.c: 629: {
;doprnt.c: 630: prec = 0;
	movlb 4	; select bank4
	clrf	(sprintf@prec)^0200h
	clrf	(sprintf@prec+1)^0200h
	line	631
;doprnt.c: 631: while(isdigit((unsigned)*f))
	goto	l10165
	line	632
	
l10161:	
;doprnt.c: 632: prec = prec*10 + *f++ - '0';
	movf	(sprintf@f),w
	movwf	fsr0l
	movf	((sprintf@f+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	movlb 4	; select bank4
	movf	(sprintf@prec+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier+1)
	movlb 4	; select bank4
	movf	(sprintf@prec)^0200h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	movlw	0Ah
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlb 1	; select bank1
	movf	0+(??_sprintf+0)^080h+0,w
	movlb 0	; select bank0
	addwf	(0+(?___wmul)),w
	movlb 1	; select bank1
	movwf	(??_sprintf+2)^080h+0
	movf	1+(??_sprintf+0)^080h+0,w
	movlb 0	; select bank0
	addwfc	(1+(?___wmul)),w
	movlb 1	; select bank1
	movwf	1+(??_sprintf+2)^080h+0
	movf	0+(??_sprintf+2)^080h+0,w
	addlw	low(0FFD0h)
	movlb 4	; select bank4
	movwf	(sprintf@prec)^0200h
	movlw	high(0FFD0h)
	movlb 1	; select bank1
	addwfc	1+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	movwf	1+(sprintf@prec)^0200h
	
l10163:	
	movlb 0	; select bank0
	incf	(sprintf@f),f
	skipnz
	incf	(sprintf@f+1),f
	line	631
	
l10165:	
	movlb 0	; select bank0
	movf	(sprintf@f),w
	movwf	fsr0l
	movf	((sprintf@f+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_isdigit
	btfsc	status,0
	goto	u7591
	goto	u7590
u7591:
	goto	l10161
u7590:
	goto	l10201
	line	635
	
l10167:	
;doprnt.c: 635: prec = 0;
	movlb 4	; select bank4
	clrf	(sprintf@prec)^0200h
	clrf	(sprintf@prec+1)^0200h
	line	637
	
l10169:	
;doprnt.c: 637: flag |= 0x1000;
	bsf	(sprintf@flag)^0200h+(12/8),(12)&7
	goto	l10201
	line	671
;doprnt.c: 671: case 'f':
	
l999:	
	line	672
;doprnt.c: 672: flag |= 0x400;
	bsf	(sprintf@flag)^0200h+(10/8),(10)&7
	line	673
;doprnt.c: 673: break;
	goto	l10203
	line	727
;doprnt.c: 727: case 'x':
	
l1003:	
	line	730
;doprnt.c: 730: flag |= 0x80;
	bsf	(sprintf@flag)^0200h+(7/8),(7)&7
	line	732
;doprnt.c: 732: break;
	goto	l10203
	line	762
	
l10171:	
;doprnt.c: 762: if(prec && prec < _val._str._len)
	movf	(sprintf@prec+1)^0200h,w
	iorwf	(sprintf@prec)^0200h,w
	skipnz
	goto	u7601
	goto	u7600
u7601:
	goto	l1005
u7600:
	
l10173:	
	movf	1+(sprintf@_val)^0200h+01h,w
	subwf	(sprintf@prec+1)^0200h,w
	skipz
	goto	u7615
	movf	0+(sprintf@_val)^0200h+01h,w
	subwf	(sprintf@prec)^0200h,w
u7615:
	skipnc
	goto	u7611
	goto	u7610
u7611:
	goto	l1005
u7610:
	line	763
	
l10175:	
;doprnt.c: 763: _val._str._len = prec;
	movf	(sprintf@prec+1)^0200h,w
	movwf	1+(sprintf@_val)^0200h+01h
	movf	(sprintf@prec)^0200h,w
	movwf	0+(sprintf@_val)^0200h+01h
	
l1005:	
	line	766
;doprnt.c: 766: if(width > _val._str._len)
	movf	(sprintf@width+1)^0200h,w
	subwf	1+(sprintf@_val)^0200h+01h,w
	skipz
	goto	u7625
	movf	(sprintf@width)^0200h,w
	subwf	0+(sprintf@_val)^0200h+01h,w
u7625:
	skipnc
	goto	u7621
	goto	u7620
u7621:
	goto	l10179
u7620:
	line	767
	
l10177:	
;doprnt.c: 767: width -= _val._str._len;
	movf	0+(sprintf@_val)^0200h+01h,w
	subwf	(sprintf@width)^0200h,f
	movf	1+(sprintf@_val)^0200h+01h,w
	subwfb	(sprintf@width+1)^0200h,f
	goto	l10185
	line	769
	
l10179:	
;doprnt.c: 768: else
;doprnt.c: 769: width = 0;
	clrf	(sprintf@width)^0200h
	clrf	(sprintf@width+1)^0200h
	goto	l10185
	line	774
	
l10181:	
;doprnt.c: 774: ((*sp++ = (' ')));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(020h)
	movwf	indf1
	
l10183:	
	incf	(sprintf@sp)^0200h,f
	line	773
	
l10185:	
	movlw	-1
	addwf	(sprintf@width)^0200h,f
	skipc
	decf	(sprintf@width+1)^0200h,f
	incf	((sprintf@width)^0200h),w
	skipnz
	incf	((sprintf@width+1)^0200h),w

	skipz
	goto	u7631
	goto	u7630
u7631:
	goto	l10181
u7630:
	goto	l10193
	line	777
	
l10187:	
;doprnt.c: 777: ((*sp++ = (*_val._str._cp++)));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(sprintf@_val)^0200h,w
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	
l10189:	
	incf	(sprintf@_val)^0200h,f
	
l10191:	
	incf	(sprintf@sp)^0200h,f
	line	776
	
l10193:	
	movlw	low(01h)
	subwf	0+(sprintf@_val)^0200h+01h,f
	movlw	high(01h)
	subwfb	1+(sprintf@_val)^0200h+01h,f
	incf	(0+(sprintf@_val)^0200h+01h),w
	skipnz
	incf	(1+(sprintf@_val)^0200h+01h),w

	skipz
	goto	u7641
	goto	u7640
u7641:
	goto	l10187
u7640:
	goto	l10513
	line	814
	
l10195:	
;doprnt.c: 814: _val._str._cp = (char *)&c;
	movlw	(sprintf@c)&0ffh
	movwf	(sprintf@_val)^0200h
	line	815
	
l10197:	
;doprnt.c: 815: _val._str._len = 1;
	clrf	0+(sprintf@_val)^0200h+01h
	incf	0+(sprintf@_val)^0200h+01h,f
	clrf	1+(sprintf@_val)^0200h+01h
	line	816
;doprnt.c: 816: goto dostring;
	goto	l10171
	line	644
	
l10201:	
	movlb 0	; select bank0
	movf	(sprintf@f+1),w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0+1
	movlb 0	; select bank0
	movf	(sprintf@f),w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	movlb 0	; select bank0
	incf	(sprintf@f),f
	skipnz
	incf	(sprintf@f+1),f
	movlb 1	; select bank1
	movf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0l
	movf	(1+(??_sprintf+0)^080h+0),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movlb 4	; select bank4
	movwf	(sprintf@c)^0200h
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 120
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte          248     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l10515
	xorlw	100^0	; case 100
	skipnz
	goto	l10203
	xorlw	102^100	; case 102
	skipnz
	goto	l999
	xorlw	105^102	; case 105
	skipnz
	goto	l10203
	xorlw	120^105	; case 120
	skipnz
	goto	l1003
	goto	l10195
	opt asmopt_on

	line	834
	
l10203:	
;doprnt.c: 834: if(flag & (0x700)) {
	movlw	low(0700h)
	andwf	(sprintf@flag)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	movlw	high(0700h)
	movlb 4	; select bank4
	andwf	(sprintf@flag+1)^0200h,w
	movlb 1	; select bank1
	movwf	1+(??_sprintf+0)^080h+0
	movf	1+(??_sprintf+0)^080h+0,w
	iorwf	0+(??_sprintf+0)^080h+0,w
	skipnz
	goto	u7651
	goto	u7650
u7651:
	goto	l1015
u7650:
	line	836
	
l10205:	
;doprnt.c: 836: if(flag & 0x1000)
	movlb 4	; select bank4
	btfss	(sprintf@flag+1)^0200h,(12)&7
	goto	u7661
	goto	u7660
u7661:
	goto	l10209
u7660:
	line	838
	
l10207:	
;doprnt.c: 838: prec = 6;
	movlw	06h
	movwf	(sprintf@prec)^0200h
	clrf	(sprintf@prec+1)^0200h
	line	839
	
l10209:	
;doprnt.c: 839: fval = (*(double *)__va_arg((*(double **)ap), (double)0));
	movf	(sprintf@ap)^0200h,w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(sprintf@fval)^0200h
	moviw	[1]fsr1
	movwf	(sprintf@fval+1)^0200h
	moviw	[2]fsr1
	movwf	(sprintf@fval+2)^0200h
	
l10211:	
	movlw	(03h)
	addwf	(sprintf@ap)^0200h,f
	line	840
	
l10213:	
;doprnt.c: 840: if(fval < 0.0) {
	movf	(sprintf@fval)^0200h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@fval+1)^0200h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@fval+2)^0200h,w
	movwf	(___ftge@ff1+2)
	clrf	(___ftge@ff2)
	clrf	(___ftge@ff2+1)
	clrf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u7671
	goto	u7670
u7671:
	goto	l10219
u7670:
	line	841
	
l10215:	
;doprnt.c: 841: fval = -fval;
	movlb 4	; select bank4
	movf	(sprintf@fval)^0200h,w
	movwf	(___ftneg@f1)
	movf	(sprintf@fval+1)^0200h,w
	movwf	(___ftneg@f1+1)
	movf	(sprintf@fval+2)^0200h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(sprintf@fval)^0200h
	movf	(1+(?___ftneg)),w
	movwf	(sprintf@fval+1)^0200h
	movf	(2+(?___ftneg)),w
	movwf	(sprintf@fval+2)^0200h
	line	842
	
l10217:	
;doprnt.c: 842: flag |= 0x03;
	movlw	03h
	iorwf	(sprintf@flag)^0200h,f
	line	844
	
l10219:	
;doprnt.c: 843: }
;doprnt.c: 844: exp = 0;
	movlb 4	; select bank4
	clrf	(sprintf@exp)^0200h
	clrf	(sprintf@exp+1)^0200h
	line	845
	
l10221:	
;doprnt.c: 845: if( fval!=0) {
	movf	(sprintf@fval+2)^0200h,w
	iorwf	(sprintf@fval+1)^0200h,w
	iorwf	(sprintf@fval)^0200h,w
	skipnz
	goto	u7681
	goto	u7680
u7681:
	goto	l10251
u7680:
	line	846
	
l10223:	
;doprnt.c: 846: (void)(*(&exp) = ((*(unsigned long *)&fval >> 15) & 255) - 126);
	movlw	low(sprintf@fval)
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 1	; select bank1
	movwf	((??_sprintf+0)^080h+0+0)
	moviw	[1]fsr1
	movwf	((??_sprintf+0)^080h+0+1)
	moviw	[2]fsr1
	movwf	((??_sprintf+0)^080h+0+2)
	moviw	[3]fsr1
	movwf	((??_sprintf+0)^080h+0+3)
	movlw	0Fh
u7695:
	lsrf	(??_sprintf+0)^080h+3,f
	rrf	(??_sprintf+0)^080h+2,f
	rrf	(??_sprintf+0)^080h+1,f
	rrf	(??_sprintf+0)^080h+0,f
u7690:
	decfsz	wreg,f
	goto	u7695
	movf	1+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	movwf	(sprintf@exp+1)^0200h
	movlb 1	; select bank1
	movf	0+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	movwf	(sprintf@exp)^0200h
	
l10225:	
	movlw	0FFh
	andwf	(sprintf@exp)^0200h,f
	clrf	(sprintf@exp+1)^0200h
	
l10227:	
	movlw	-126
	addwf	(sprintf@exp)^0200h,f
	skipc
	decf	(sprintf@exp+1)^0200h,f
	line	847
	
l10229:	
;doprnt.c: 847: exp--;
	movlw	-1
	addwf	(sprintf@exp)^0200h,f
	skipc
	decf	(sprintf@exp+1)^0200h,f
	line	848
	
l10231:	
;doprnt.c: 848: exp *= 3;
	movlw	03h
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlb 4	; select bank4
	movf	(sprintf@exp+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplicand+1)
	movlb 4	; select bank4
	movf	(sprintf@exp)^0200h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplicand)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movlb 4	; select bank4
	movwf	(sprintf@exp+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___wmul)),w
	movlb 4	; select bank4
	movwf	(sprintf@exp)^0200h
	line	849
	
l10233:	
;doprnt.c: 849: exp /= 10;
	movlw	0Ah
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	movf	(sprintf@exp+1)^0200h,w
	movwf	(___awdiv@dividend+1)
	movf	(sprintf@exp)^0200h,w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movlb 4	; select bank4
	movwf	(sprintf@exp+1)^0200h
	movf	(0+(?___awdiv)),w
	movwf	(sprintf@exp)^0200h
	line	850
	
l10235:	
;doprnt.c: 850: if(exp < 0)
	btfss	(sprintf@exp+1)^0200h,7
	goto	u7701
	goto	u7700
u7701:
	goto	l10239
u7700:
	line	851
	
l10237:	
;doprnt.c: 851: exp--;
	movlw	-1
	addwf	(sprintf@exp)^0200h,f
	skipc
	decf	(sprintf@exp+1)^0200h,f
	line	855
	
l10239:	
;doprnt.c: 855: integ = scale(-exp);
	decf	(sprintf@exp)^0200h,w
	xorlw	0ffh
	fcall	_scale
	movf	(0+(?_scale)),w
	movlb 4	; select bank4
	movwf	(sprintf@integ)^0200h
	movlb 0	; select bank0
	movf	(1+(?_scale)),w
	movlb 4	; select bank4
	movwf	(sprintf@integ+1)^0200h
	movlb 0	; select bank0
	movf	(2+(?_scale)),w
	movlb 4	; select bank4
	movwf	(sprintf@integ+2)^0200h
	line	856
	
l10241:	
;doprnt.c: 856: integ *= fval;
	movf	(sprintf@fval)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 4	; select bank4
	movf	(sprintf@fval+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 4	; select bank4
	movf	(sprintf@fval+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(sprintf@integ)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(sprintf@integ+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(sprintf@integ+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 4	; select bank4
	movwf	(sprintf@integ)^0200h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 4	; select bank4
	movwf	(sprintf@integ+1)^0200h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 4	; select bank4
	movwf	(sprintf@integ+2)^0200h
	line	857
	
l10243:	
;doprnt.c: 857: if(integ < 1.0)
	movf	(sprintf@integ)^0200h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@integ+1)^0200h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@integ+2)^0200h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x80
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u7711
	goto	u7710
u7711:
	goto	l10247
u7710:
	line	858
	
l10245:	
;doprnt.c: 858: exp--;
	movlw	-1
	movlb 4	; select bank4
	addwf	(sprintf@exp)^0200h,f
	skipc
	decf	(sprintf@exp+1)^0200h,f
	goto	l10251
	line	859
	
l10247:	
;doprnt.c: 859: else if(integ >= 10.0)
	movlb 4	; select bank4
	movf	(sprintf@integ)^0200h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@integ+1)^0200h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@integ+2)^0200h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7721
	goto	u7720
u7721:
	goto	l10251
u7720:
	line	860
	
l10249:	
;doprnt.c: 860: exp++;
	movlb 4	; select bank4
	incf	(sprintf@exp)^0200h,f
	skipnz
	incf	(sprintf@exp+1)^0200h,f
	line	1121
	
l10251:	
;doprnt.c: 861: }
;doprnt.c: 1121: if(prec <= 12)
	movlb 4	; select bank4
	movf	(sprintf@prec+1)^0200h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u7735
	movlw	low(0Dh)
	subwf	(sprintf@prec)^0200h,w
u7735:

	skipnc
	goto	u7731
	goto	u7730
u7731:
	goto	l10255
u7730:
	line	1122
	
l10253:	
;doprnt.c: 1122: fval += fround(prec);
	movlb 4	; select bank4
	movf	(sprintf@prec)^0200h,w
	fcall	_fround
	movf	(0+(?_fround)),w
	movwf	(___ftadd@f1)
	movf	(1+(?_fround)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?_fround)),w
	movwf	(___ftadd@f1+2)
	movlb 4	; select bank4
	movf	(sprintf@fval)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2)
	movlb 4	; select bank4
	movf	(sprintf@fval+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+1)
	movlb 4	; select bank4
	movf	(sprintf@fval+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movlb 4	; select bank4
	movwf	(sprintf@fval)^0200h
	movlb 0	; select bank0
	movf	(1+(?___ftadd)),w
	movlb 4	; select bank4
	movwf	(sprintf@fval+1)^0200h
	movlb 0	; select bank0
	movf	(2+(?___ftadd)),w
	movlb 4	; select bank4
	movwf	(sprintf@fval+2)^0200h
	line	1125
	
l10255:	
;doprnt.c: 1125: if((exp > 9)||(fval != 0 && (unsigned long)fval == 0 && exp > 1)) {
	movlb 4	; select bank4
	movf	(sprintf@exp+1)^0200h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u7745
	movlw	low(0Ah)
	subwf	(sprintf@exp)^0200h,w
u7745:

	skipnc
	goto	u7741
	goto	u7740
u7741:
	goto	l10263
u7740:
	
l10257:	
	movlb 4	; select bank4
	movf	(sprintf@fval+2)^0200h,w
	iorwf	(sprintf@fval+1)^0200h,w
	iorwf	(sprintf@fval)^0200h,w
	skipnz
	goto	u7751
	goto	u7750
u7751:
	goto	l10279
u7750:
	
l10259:	
	movf	(sprintf@fval)^0200h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 4	; select bank4
	movf	(sprintf@fval+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 4	; select bank4
	movf	(sprintf@fval+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u7761
	goto	u7760
u7761:
	goto	l10279
u7760:
	
l10261:	
	movlb 4	; select bank4
	movf	(sprintf@exp+1)^0200h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u7775
	movlw	low(02h)
	subwf	(sprintf@exp)^0200h,w
u7775:

	skipc
	goto	u7771
	goto	u7770
u7771:
	goto	l10279
u7770:
	line	1129
	
l10263:	
;doprnt.c: 1129: if(integ < 4.294967296){
	movlb 4	; select bank4
	movf	(sprintf@integ)^0200h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@integ+1)^0200h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@integ+2)^0200h,w
	movwf	(___ftge@ff1+2)
	movlw	0x70
	movwf	(___ftge@ff2)
	movlw	0x89
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u7781
	goto	u7780
u7781:
	goto	l10267
u7780:
	line	1130
	
l10265:	
;doprnt.c: 1130: exp -= (sizeof dpowers/sizeof dpowers[0])-1;
	movlw	-9
	movlb 4	; select bank4
	addwf	(sprintf@exp)^0200h,f
	skipc
	decf	(sprintf@exp+1)^0200h,f
	line	1131
;doprnt.c: 1131: }else{
	goto	l10269
	line	1132
	
l10267:	
;doprnt.c: 1132: exp -= (sizeof dpowers/sizeof dpowers[0])-2;
	movlw	-8
	movlb 4	; select bank4
	addwf	(sprintf@exp)^0200h,f
	skipc
	decf	(sprintf@exp+1)^0200h,f
	line	1134
	
l10269:	
;doprnt.c: 1133: }
;doprnt.c: 1134: integ = scale(exp);
	movf	(sprintf@exp)^0200h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	movlb 4	; select bank4
	movwf	(sprintf@integ)^0200h
	movlb 0	; select bank0
	movf	(1+(?_scale)),w
	movlb 4	; select bank4
	movwf	(sprintf@integ+1)^0200h
	movlb 0	; select bank0
	movf	(2+(?_scale)),w
	movlb 4	; select bank4
	movwf	(sprintf@integ+2)^0200h
	line	1135
;doprnt.c: 1135: _val._val = ((sizeof(double)== 3) ? _tdiv_to_l_(fval,integ) : _div_to_l_(fval,integ));
	
l10273:	
	movf	(sprintf@fval)^0200h,w
	movwf	(__tdiv_to_l_@f1)
	movf	(sprintf@fval+1)^0200h,w
	movwf	(__tdiv_to_l_@f1+1)
	movf	(sprintf@fval+2)^0200h,w
	movwf	(__tdiv_to_l_@f1+2)
	movf	(sprintf@integ)^0200h,w
	movwf	(__tdiv_to_l_@f2)
	movf	(sprintf@integ+1)^0200h,w
	movwf	(__tdiv_to_l_@f2+1)
	movf	(sprintf@integ+2)^0200h,w
	movwf	(__tdiv_to_l_@f2+2)
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	movlb 4	; select bank4
	movwf	(_sprintf$1137+3)^0200h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1137+2)^0200h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1137+1)^0200h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1137)^0200h

	
l10275:	
	movf	(_sprintf$1137+3)^0200h,w
	movwf	(sprintf@_val+3)^0200h
	movf	(_sprintf$1137+2)^0200h,w
	movwf	(sprintf@_val+2)^0200h
	movf	(_sprintf$1137+1)^0200h,w
	movwf	(sprintf@_val+1)^0200h
	movf	(_sprintf$1137)^0200h,w
	movwf	(sprintf@_val)^0200h

	line	1138
	
l10277:	
;doprnt.c: 1138: fval = 0.0;
	clrf	(sprintf@fval)^0200h
	clrf	(sprintf@fval+1)^0200h
	clrf	(sprintf@fval+2)^0200h
	line	1139
;doprnt.c: 1139: } else {
	goto	l10283
	line	1140
	
l10279:	
;doprnt.c: 1140: _val._val = (unsigned long)fval;
	movlb 4	; select bank4
	movf	(sprintf@fval)^0200h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 4	; select bank4
	movf	(sprintf@fval+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 4	; select bank4
	movf	(sprintf@fval+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	movlb 4	; select bank4
	movwf	(sprintf@_val+3)^0200h
	movlb 0	; select bank0
	movf	(2+(?___fttol)),w
	movlb 4	; select bank4
	movwf	(sprintf@_val+2)^0200h
	movlb 0	; select bank0
	movf	(1+(?___fttol)),w
	movlb 4	; select bank4
	movwf	(sprintf@_val+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___fttol)),w
	movlb 4	; select bank4
	movwf	(sprintf@_val)^0200h

	line	1141
;doprnt.c: 1141: fval -= (double)_val._val;
	movf	(sprintf@_val+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___lltoft@c+3)
	movlb 4	; select bank4
	movf	(sprintf@_val+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___lltoft@c+2)
	movlb 4	; select bank4
	movf	(sprintf@_val+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___lltoft@c+1)
	movlb 4	; select bank4
	movf	(sprintf@_val)^0200h,w
	movlb 0	; select bank0
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	movwf	(___ftsub@f2)
	movf	(1+(?___lltoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___lltoft)),w
	movwf	(___ftsub@f2+2)
	movlb 4	; select bank4
	movf	(sprintf@fval)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftsub@f1)
	movlb 4	; select bank4
	movf	(sprintf@fval+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftsub@f1+1)
	movlb 4	; select bank4
	movf	(sprintf@fval+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movlb 4	; select bank4
	movwf	(sprintf@fval)^0200h
	movlb 0	; select bank0
	movf	(1+(?___ftsub)),w
	movlb 4	; select bank4
	movwf	(sprintf@fval+1)^0200h
	movlb 0	; select bank0
	movf	(2+(?___ftsub)),w
	movlb 4	; select bank4
	movwf	(sprintf@fval+2)^0200h
	line	1142
	
l10281:	
;doprnt.c: 1142: exp = 0;
	clrf	(sprintf@exp)^0200h
	clrf	(sprintf@exp+1)^0200h
	line	1145
	
l10283:	
;doprnt.c: 1143: }
;doprnt.c: 1145: for(c = 1 ; c != (sizeof dpowers/sizeof dpowers[0]) ; c++)
	clrf	(sprintf@c)^0200h
	incf	(sprintf@c)^0200h,f
	
l10285:	
	movf	(sprintf@c)^0200h,w
	xorlw	0Ah&0ffh
	skipz
	goto	u7791
	goto	u7790
u7791:
	goto	l10289
u7790:
	goto	l10297
	line	1146
	
l10289:	
;doprnt.c: 1146: if(_val._val < dpowers[c])
	movf	(sprintf@c)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	movlw	low(_dpowers|8000h)
	addwf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0l
	movlw	high(_dpowers|8000h)
	addwfc	1+(??_sprintf+0)^080h+0,w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	((??_sprintf+2)^080h+0)
	moviw	[1]fsr0
	movwf	((??_sprintf+2)^080h+0+1)
	moviw	[2]fsr0
	movwf	((??_sprintf+2)^080h+0+2)
	moviw	[3]fsr0
	movwf	((??_sprintf+2)^080h+0+3)
	movf	3+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@_val+3)^0200h,w
	skipz
	goto	u7805
	movlb 1	; select bank1
	movf	2+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@_val+2)^0200h,w
	skipz
	goto	u7805
	movlb 1	; select bank1
	movf	1+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@_val+1)^0200h,w
	skipz
	goto	u7805
	movlb 1	; select bank1
	movf	0+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@_val)^0200h,w
u7805:
	skipnc
	goto	u7801
	goto	u7800
u7801:
	goto	l10293
u7800:
	goto	l10297
	line	1145
	
l10293:	
	incf	(sprintf@c)^0200h,f
	goto	l10285
	line	1151
	
l10297:	
;doprnt.c: 1151: width -= prec + c + exp;
	movf	(sprintf@c)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	btfsc	(??_sprintf+0)^080h+0,7
	decf	(??_sprintf+0)^080h+0+1,f
	movlb 4	; select bank4
	movf	(sprintf@prec)^0200h,w
	movlb 1	; select bank1
	addwf	0+(??_sprintf+0)^080h+0,w
	movwf	(??_sprintf+2)^080h+0
	movlb 4	; select bank4
	movf	(sprintf@prec+1)^0200h,w
	movlb 1	; select bank1
	addwfc	1+(??_sprintf+0)^080h+0,w
	movwf	1+(??_sprintf+2)^080h+0
	movlb 4	; select bank4
	movf	(sprintf@exp)^0200h,w
	movlb 1	; select bank1
	addwf	0+(??_sprintf+2)^080h+0,w
	movwf	(??_sprintf+4)^080h+0
	movlb 4	; select bank4
	movf	(sprintf@exp+1)^0200h,w
	movlb 1	; select bank1
	addwfc	1+(??_sprintf+2)^080h+0,w
	movwf	1+(??_sprintf+4)^080h+0
	movf	0+(??_sprintf+4)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@width)^0200h,f
	movlb 1	; select bank1
	movf	1+(??_sprintf+4)^080h+0,w
	movlb 4	; select bank4
	subwfb	(sprintf@width+1)^0200h,f
	line	1156
	
l10299:	
;doprnt.c: 1152: if(
;doprnt.c: 1156: prec)
	movf	(sprintf@prec+1)^0200h,w
	iorwf	(sprintf@prec)^0200h,w
	skipnz
	goto	u7811
	goto	u7810
u7811:
	goto	l10303
u7810:
	line	1157
	
l10301:	
;doprnt.c: 1157: width--;
	movlw	-1
	addwf	(sprintf@width)^0200h,f
	skipc
	decf	(sprintf@width+1)^0200h,f
	line	1158
	
l10303:	
;doprnt.c: 1158: if(flag & 0x03)
	movf	(sprintf@flag)^0200h,w
	andlw	03h
	btfsc	status,2
	goto	u7821
	goto	u7820
u7821:
	goto	l10307
u7820:
	line	1159
	
l10305:	
;doprnt.c: 1159: width--;
	movlw	-1
	addwf	(sprintf@width)^0200h,f
	skipc
	decf	(sprintf@width+1)^0200h,f
	line	1162
	
l10307:	
;doprnt.c: 1162: if(flag & 0x04) {
	btfss	(sprintf@flag)^0200h,(2)&7
	goto	u7831
	goto	u7830
u7831:
	goto	l10329
u7830:
	line	1166
	
l10309:	
;doprnt.c: 1166: if(flag & 0x03)
	movf	(sprintf@flag)^0200h,w
	andlw	03h
	btfsc	status,2
	goto	u7841
	goto	u7840
u7841:
	goto	l10321
u7840:
	line	1168
	
l10311:	
;doprnt.c: 1168: ((*sp++ = ('-')));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02Dh)
	movwf	indf1
	
l10313:	
	incf	(sprintf@sp)^0200h,f
	goto	l10321
	line	1178
	
l10315:	
;doprnt.c: 1178: ((*sp++ = ('0')));
	movlb 4	; select bank4
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(030h)
	movwf	indf1
	
l10317:	
	incf	(sprintf@sp)^0200h,f
	line	1179
	
l10319:	
;doprnt.c: 1179: width--;
	movlw	-1
	addwf	(sprintf@width)^0200h,f
	skipc
	decf	(sprintf@width+1)^0200h,f
	line	1177
	
l10321:	
	movf	(sprintf@width+1)^0200h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u7855
	movlw	low(01h)
	subwf	(sprintf@width)^0200h,w
u7855:

	skipnc
	goto	u7851
	goto	u7850
u7851:
	goto	l10315
u7850:
	goto	l10345
	line	1190
	
l10323:	
;doprnt.c: 1190: ((*sp++ = (' ')));
	movlb 4	; select bank4
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(020h)
	movwf	indf1
	
l10325:	
	incf	(sprintf@sp)^0200h,f
	line	1191
	
l10327:	
;doprnt.c: 1191: width--;
	movlw	-1
	addwf	(sprintf@width)^0200h,f
	skipc
	decf	(sprintf@width+1)^0200h,f
	line	1189
	
l10329:	
	movf	(sprintf@width+1)^0200h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u7865
	movlw	low(01h)
	subwf	(sprintf@width)^0200h,w
u7865:

	skipnc
	goto	u7861
	goto	u7860
u7861:
	goto	l10323
u7860:
	line	1197
	
l10331:	
;doprnt.c: 1192: }
;doprnt.c: 1197: if(flag & 0x03)
	movlb 4	; select bank4
	movf	(sprintf@flag)^0200h,w
	andlw	03h
	btfsc	status,2
	goto	u7871
	goto	u7870
u7871:
	goto	l10345
u7870:
	line	1199
	
l10333:	
;doprnt.c: 1199: ((*sp++ = ('-')));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02Dh)
	movwf	indf1
	
l10335:	
	incf	(sprintf@sp)^0200h,f
	goto	l10345
	line	1210
	
l10337:	
;doprnt.c: 1209: {
;doprnt.c: 1210: unsigned long vd = _val._val/dpowers[c];
	movf	(sprintf@c)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	movlw	low(_dpowers|8000h)
	addwf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0l
	movlw	high(_dpowers|8000h)
	addwfc	1+(??_sprintf+0)^080h+0,w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___lldiv@divisor)
	moviw	[1]fsr0
	movwf	(___lldiv@divisor+1)
	moviw	[2]fsr0
	movwf	(___lldiv@divisor+2)
	moviw	[3]fsr0
	movwf	(___lldiv@divisor+3)
	movlb 4	; select bank4
	movf	(sprintf@_val+3)^0200h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@_val+2)^0200h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@_val+1)^0200h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@_val)^0200h,w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	movlb 4	; select bank4
	movwf	(sprintf@vd+3)^0200h
	movf	(2+(?___lldiv)),w
	movwf	(sprintf@vd+2)^0200h
	movf	(1+(?___lldiv)),w
	movwf	(sprintf@vd+1)^0200h
	movf	(0+(?___lldiv)),w
	movwf	(sprintf@vd)^0200h

	line	1211
	
l10339:	
;doprnt.c: 1211: vd %= 10;
	movlw	0Ah
	movlb 0	; select bank0
	movwf	(___llmod@divisor)
	clrf	(___llmod@divisor+1)
	clrf	(___llmod@divisor+2)
	clrf	(___llmod@divisor+3)

	movlb 4	; select bank4
	movf	(sprintf@vd+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___llmod@dividend+3)
	movlb 4	; select bank4
	movf	(sprintf@vd+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___llmod@dividend+2)
	movlb 4	; select bank4
	movf	(sprintf@vd+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___llmod@dividend+1)
	movlb 4	; select bank4
	movf	(sprintf@vd)^0200h,w
	movlb 0	; select bank0
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	movlb 4	; select bank4
	movwf	(sprintf@vd+3)^0200h
	movlb 0	; select bank0
	movf	(2+(?___llmod)),w
	movlb 4	; select bank4
	movwf	(sprintf@vd+2)^0200h
	movlb 0	; select bank0
	movf	(1+(?___llmod)),w
	movlb 4	; select bank4
	movwf	(sprintf@vd+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___llmod)),w
	movlb 4	; select bank4
	movwf	(sprintf@vd)^0200h

	line	1212
	
l10341:	
;doprnt.c: 1212: ((*sp++ = ('0' + vd)));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(sprintf@vd)^0200h,w
	addlw	030h
	movwf	indf1
	goto	l10335
	line	1205
	
l10345:	
	movlb 4	; select bank4
	decf	(sprintf@c)^0200h,f
	incf	((sprintf@c)^0200h),w
	skipz
	goto	u7881
	goto	u7880
u7881:
	goto	l10337
u7880:
	goto	l10353
	line	1217
	
l10347:	
;doprnt.c: 1217: ((*sp++ = ('0')));
	movlb 4	; select bank4
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(030h)
	movwf	indf1
	
l10349:	
	incf	(sprintf@sp)^0200h,f
	line	1218
	
l10351:	
;doprnt.c: 1218: exp--;
	movlw	-1
	addwf	(sprintf@exp)^0200h,f
	skipc
	decf	(sprintf@exp+1)^0200h,f
	line	1216
	
l10353:	
	movf	(sprintf@exp+1)^0200h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u7895
	movlw	low(01h)
	subwf	(sprintf@exp)^0200h,w
u7895:

	skipnc
	goto	u7891
	goto	u7890
u7891:
	goto	l10347
u7890:
	line	1220
	
l10355:	
;doprnt.c: 1219: }
;doprnt.c: 1220: if(prec > (int)((sizeof dpowers/sizeof dpowers[0])-2))
	movlb 4	; select bank4
	movf	(sprintf@prec+1)^0200h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u7905
	movlw	low(09h)
	subwf	(sprintf@prec)^0200h,w
u7905:

	skipc
	goto	u7901
	goto	u7900
u7901:
	goto	l10359
u7900:
	line	1221
	
l10357:	
;doprnt.c: 1221: c = (sizeof dpowers/sizeof dpowers[0])-2;
	movlw	(08h)
	movlb 4	; select bank4
	movwf	(sprintf@c)^0200h
	goto	l1056
	line	1223
	
l10359:	
;doprnt.c: 1222: else
;doprnt.c: 1223: c = prec;
	movlb 4	; select bank4
	movf	(sprintf@prec)^0200h,w
	movwf	(sprintf@c)^0200h
	
l1056:	
	line	1224
;doprnt.c: 1224: prec -= c;
	movf	(sprintf@c)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	btfsc	(??_sprintf+0)^080h+0,7
	decf	(??_sprintf+0)^080h+0+1,f
	movf	0+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@prec)^0200h,f
	movlb 1	; select bank1
	movf	1+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	subwfb	(sprintf@prec+1)^0200h,f
	line	1228
;doprnt.c: 1228: if(c)
	movf	(sprintf@c)^0200h,w
	skipz
	goto	u7910
	goto	l10365
u7910:
	line	1230
	
l10361:	
;doprnt.c: 1230: ((*sp++ = ('.')));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02Eh)
	movwf	indf1
	
l10363:	
	incf	(sprintf@sp)^0200h,f
	line	1236
	
l10365:	
;doprnt.c: 1236: _val._val = (long)(fval * scale(c));
	movf	(sprintf@c)^0200h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	movlb 4	; select bank4
	movwf	(_sprintf$1778)^0200h
	movlb 0	; select bank0
	movf	(1+(?_scale)),w
	movlb 4	; select bank4
	movwf	(_sprintf$1778+1)^0200h
	movlb 0	; select bank0
	movf	(2+(?_scale)),w
	movlb 4	; select bank4
	movwf	(_sprintf$1778+2)^0200h
	
l10367:	
;doprnt.c: 1236: _val._val = (long)(fval * scale(c));
	movf	(_sprintf$1778)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(_sprintf$1778+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(_sprintf$1778+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	movlb 4	; select bank4
	movf	(sprintf@fval)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 4	; select bank4
	movf	(sprintf@fval+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 4	; select bank4
	movf	(sprintf@fval+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	movlb 4	; select bank4
	movwf	(sprintf@_val+3)^0200h
	movlb 0	; select bank0
	movf	(2+(?___fttol)),w
	movlb 4	; select bank4
	movwf	(sprintf@_val+2)^0200h
	movlb 0	; select bank0
	movf	(1+(?___fttol)),w
	movlb 4	; select bank4
	movwf	(sprintf@_val+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___fttol)),w
	movlb 4	; select bank4
	movwf	(sprintf@_val)^0200h

	line	1237
;doprnt.c: 1237: while(c--) {
	goto	l10379
	line	1238
	
l10369:	
;doprnt.c: 1238: unsigned long vd = _val._val/dpowers[c];
	movf	(sprintf@c)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	movlw	low(_dpowers|8000h)
	addwf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0l
	movlw	high(_dpowers|8000h)
	addwfc	1+(??_sprintf+0)^080h+0,w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___lldiv@divisor)
	moviw	[1]fsr0
	movwf	(___lldiv@divisor+1)
	moviw	[2]fsr0
	movwf	(___lldiv@divisor+2)
	moviw	[3]fsr0
	movwf	(___lldiv@divisor+3)
	movlb 4	; select bank4
	movf	(sprintf@_val+3)^0200h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@_val+2)^0200h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@_val+1)^0200h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@_val)^0200h,w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	movlb 4	; select bank4
	movwf	(sprintf@vd_1139+3)^0200h
	movf	(2+(?___lldiv)),w
	movwf	(sprintf@vd_1139+2)^0200h
	movf	(1+(?___lldiv)),w
	movwf	(sprintf@vd_1139+1)^0200h
	movf	(0+(?___lldiv)),w
	movwf	(sprintf@vd_1139)^0200h

	line	1239
	
l10371:	
;doprnt.c: 1239: vd %= 10;
	movlw	0Ah
	movlb 0	; select bank0
	movwf	(___llmod@divisor)
	clrf	(___llmod@divisor+1)
	clrf	(___llmod@divisor+2)
	clrf	(___llmod@divisor+3)

	movlb 4	; select bank4
	movf	(sprintf@vd_1139+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___llmod@dividend+3)
	movlb 4	; select bank4
	movf	(sprintf@vd_1139+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___llmod@dividend+2)
	movlb 4	; select bank4
	movf	(sprintf@vd_1139+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___llmod@dividend+1)
	movlb 4	; select bank4
	movf	(sprintf@vd_1139)^0200h,w
	movlb 0	; select bank0
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	movlb 4	; select bank4
	movwf	(sprintf@vd_1139+3)^0200h
	movlb 0	; select bank0
	movf	(2+(?___llmod)),w
	movlb 4	; select bank4
	movwf	(sprintf@vd_1139+2)^0200h
	movlb 0	; select bank0
	movf	(1+(?___llmod)),w
	movlb 4	; select bank4
	movwf	(sprintf@vd_1139+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___llmod)),w
	movlb 4	; select bank4
	movwf	(sprintf@vd_1139)^0200h

	line	1240
	
l10373:	
;doprnt.c: 1240: ((*sp++ = ('0' + vd)));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(sprintf@vd_1139)^0200h,w
	addlw	030h
	movwf	indf1
	
l10375:	
	incf	(sprintf@sp)^0200h,f
	line	1241
	
l10377:	
;doprnt.c: 1241: _val._val %= dpowers[c];
	movf	(sprintf@c)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	movlw	low(_dpowers|8000h)
	addwf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0l
	movlw	high(_dpowers|8000h)
	addwfc	1+(??_sprintf+0)^080h+0,w
	movwf	fsr0h
	moviw	[0]fsr0
	movlb 0	; select bank0
	movwf	(___llmod@divisor)
	moviw	[1]fsr0
	movwf	(___llmod@divisor+1)
	moviw	[2]fsr0
	movwf	(___llmod@divisor+2)
	moviw	[3]fsr0
	movwf	(___llmod@divisor+3)
	movlb 4	; select bank4
	movf	(sprintf@_val+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___llmod@dividend+3)
	movlb 4	; select bank4
	movf	(sprintf@_val+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___llmod@dividend+2)
	movlb 4	; select bank4
	movf	(sprintf@_val+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___llmod@dividend+1)
	movlb 4	; select bank4
	movf	(sprintf@_val)^0200h,w
	movlb 0	; select bank0
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	movlb 4	; select bank4
	movwf	(sprintf@_val+3)^0200h
	movlb 0	; select bank0
	movf	(2+(?___llmod)),w
	movlb 4	; select bank4
	movwf	(sprintf@_val+2)^0200h
	movlb 0	; select bank0
	movf	(1+(?___llmod)),w
	movlb 4	; select bank4
	movwf	(sprintf@_val+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___llmod)),w
	movlb 4	; select bank4
	movwf	(sprintf@_val)^0200h

	line	1237
	
l10379:	
	decf	(sprintf@c)^0200h,f
	incf	((sprintf@c)^0200h),w
	skipz
	goto	u7921
	goto	u7920
u7921:
	goto	l10369
u7920:
	goto	l10387
	line	1245
	
l10381:	
;doprnt.c: 1245: ((*sp++ = ('0')));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(030h)
	movwf	indf1
	
l10383:	
	incf	(sprintf@sp)^0200h,f
	line	1246
	
l10385:	
;doprnt.c: 1246: prec--;
	movlw	-1
	addwf	(sprintf@prec)^0200h,f
	skipc
	decf	(sprintf@prec+1)^0200h,f
	line	1244
	
l10387:	
	movf	((sprintf@prec+1)^0200h),w
	iorwf	((sprintf@prec)^0200h),w
	skipz
	goto	u7931
	goto	u7930
u7931:
	goto	l10381
u7930:
	goto	l10513
	line	1255
	
l1015:	
	line	1260
;doprnt.c: 1255: }
;doprnt.c: 1260: if((flag & 0x80) == 0x00)
	movlb 4	; select bank4
	btfsc	(sprintf@flag)^0200h,(7)&7
	goto	u7941
	goto	u7940
u7941:
	goto	l10399
u7940:
	line	1268
	
l10389:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (long)(*(int *)__va_arg((*(int **)ap), (int)0));
	movf	(sprintf@ap)^0200h,w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	moviw	[1]fsr1
	movwf	(??_sprintf+0)^080h+0+1
	movf	0+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	movwf	(sprintf@_val)^0200h
	movlb 1	; select bank1
	movf	1+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	movwf	(sprintf@_val+1)^0200h
	rlf	wreg,f
	subwfb	wreg,f
	comf	wreg,f
	movwf	(sprintf@_val+2)^0200h
	movwf	(sprintf@_val+3)^0200h
	
l10391:	
	incf	(sprintf@ap)^0200h,f
	incf	(sprintf@ap)^0200h,f
	line	1270
	
l10393:	
;doprnt.c: 1270: if((long)_val._val < 0) {
	btfss	(sprintf@_val+3)^0200h,7
	goto	u7951
	goto	u7950
u7951:
	goto	l10403
u7950:
	line	1271
	
l10395:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	03h
	iorwf	(sprintf@flag)^0200h,f
	line	1272
	
l10397:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val)^0200h,f
	comf	(sprintf@_val+1)^0200h,f
	comf	(sprintf@_val+2)^0200h,f
	comf	(sprintf@_val+3)^0200h,f
	incf	(sprintf@_val)^0200h,f
	skipnz
	incf	(sprintf@_val+1)^0200h,f
	skipnz
	incf	(sprintf@_val+2)^0200h,f
	skipnz
	incf	(sprintf@_val+3)^0200h,f
	goto	l10403
	line	1295
	
l10399:	
;doprnt.c: 1277: else
;doprnt.c: 1282: {
;doprnt.c: 1295: _val._val = (*(unsigned *)__va_arg((*(unsigned **)ap), (unsigned)0));
	movf	(sprintf@ap)^0200h,w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	moviw	[1]fsr1
	movwf	(??_sprintf+0)^080h+0+1
	movf	0+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	movwf	(sprintf@_val)^0200h
	movlb 1	; select bank1
	movf	1+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	movwf	((sprintf@_val)^0200h)+1
	clrf	2+((sprintf@_val)^0200h)
	clrf	3+((sprintf@_val)^0200h)
	
l10401:	
	incf	(sprintf@ap)^0200h,f
	incf	(sprintf@ap)^0200h,f
	line	1299
	
l10403:	
;doprnt.c: 1296: }
;doprnt.c: 1299: if(prec == 0 && _val._val == 0)
	movf	((sprintf@prec+1)^0200h),w
	iorwf	((sprintf@prec)^0200h),w
	skipz
	goto	u7961
	goto	u7960
u7961:
	goto	l10435
u7960:
	
l10405:	
	movf	(sprintf@_val+3)^0200h,w
	iorwf	(sprintf@_val+2)^0200h,w
	iorwf	(sprintf@_val+1)^0200h,w
	iorwf	(sprintf@_val)^0200h,w
	skipz
	goto	u7971
	goto	u7970
u7971:
	goto	l10435
u7970:
	line	1300
	
l10407:	
;doprnt.c: 1300: prec++;
	incf	(sprintf@prec)^0200h,f
	skipnz
	incf	(sprintf@prec+1)^0200h,f
	goto	l10435
	line	1308
;doprnt.c: 1308: case 0x00:
	
l1069:	
	line	1314
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)^0200h
	incf	(sprintf@c)^0200h,f
	
l10409:	
	movf	(sprintf@c)^0200h,w
	xorlw	0Ah&0ffh
	skipz
	goto	u7981
	goto	u7980
u7981:
	goto	l10413
u7980:
	goto	l10437
	line	1315
	
l10413:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	movlw	low(_dpowers|8000h)
	addwf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0l
	movlw	high(_dpowers|8000h)
	addwfc	1+(??_sprintf+0)^080h+0,w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	((??_sprintf+2)^080h+0)
	moviw	[1]fsr0
	movwf	((??_sprintf+2)^080h+0+1)
	moviw	[2]fsr0
	movwf	((??_sprintf+2)^080h+0+2)
	moviw	[3]fsr0
	movwf	((??_sprintf+2)^080h+0+3)
	movf	3+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@_val+3)^0200h,w
	skipz
	goto	u7995
	movlb 1	; select bank1
	movf	2+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@_val+2)^0200h,w
	skipz
	goto	u7995
	movlb 1	; select bank1
	movf	1+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@_val+1)^0200h,w
	skipz
	goto	u7995
	movlb 1	; select bank1
	movf	0+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@_val)^0200h,w
u7995:
	skipnc
	goto	u7991
	goto	u7990
u7991:
	goto	l10417
u7990:
	goto	l10437
	line	1314
	
l10417:	
	incf	(sprintf@c)^0200h,f
	goto	l10409
	line	1323
;doprnt.c: 1323: case 0x80:
	
l1074:	
	line	1325
;doprnt.c: 1325: for(c = 1 ; c != sizeof hexpowers/sizeof hexpowers[0] ; c++)
	clrf	(sprintf@c)^0200h
	incf	(sprintf@c)^0200h,f
	
l10421:	
	movf	(sprintf@c)^0200h,w
	xorlw	08h&0ffh
	skipz
	goto	u8001
	goto	u8000
u8001:
	goto	l10425
u8000:
	goto	l10437
	line	1326
	
l10425:	
;doprnt.c: 1326: if(_val._val < hexpowers[c])
	movf	(sprintf@c)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	movlw	low(_hexpowers|8000h)
	addwf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0l
	movlw	high(_hexpowers|8000h)
	addwfc	1+(??_sprintf+0)^080h+0,w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	((??_sprintf+2)^080h+0)
	moviw	[1]fsr0
	movwf	((??_sprintf+2)^080h+0+1)
	moviw	[2]fsr0
	movwf	((??_sprintf+2)^080h+0+2)
	moviw	[3]fsr0
	movwf	((??_sprintf+2)^080h+0+3)
	movf	3+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@_val+3)^0200h,w
	skipz
	goto	u8015
	movlb 1	; select bank1
	movf	2+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@_val+2)^0200h,w
	skipz
	goto	u8015
	movlb 1	; select bank1
	movf	1+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@_val+1)^0200h,w
	skipz
	goto	u8015
	movlb 1	; select bank1
	movf	0+(??_sprintf+2)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@_val)^0200h,w
u8015:
	skipnc
	goto	u8011
	goto	u8010
u8011:
	goto	l10429
u8010:
	goto	l10437
	line	1325
	
l10429:	
	incf	(sprintf@c)^0200h,f
	goto	l10421
	line	1303
	
l10435:	
	movf	(sprintf@flag)^0200h,w
	andlw	080h
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1069
	xorlw	128^0	; case 128
	skipnz
	goto	l1074
	goto	l10437
	opt asmopt_on

	line	1348
	
l10437:	
;doprnt.c: 1348: if(c < prec)
	movf	(sprintf@c)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	btfsc	(??_sprintf+0)^080h+0,7
	decf	(??_sprintf+0)^080h+0+1,f
	movf	1+(??_sprintf+0)^080h+0,w
	xorlw	80h
	movwf	(??_sprintf+2)^080h+0
	movlb 4	; select bank4
	movf	(sprintf@prec+1)^0200h,w
	xorlw	80h
	movlb 1	; select bank1
	subwf	(??_sprintf+2)^080h+0,w
	skipz
	goto	u8025
	movlb 4	; select bank4
	movf	(sprintf@prec)^0200h,w
	movlb 1	; select bank1
	subwf	0+(??_sprintf+0)^080h+0,w
u8025:

	skipnc
	goto	u8021
	goto	u8020
u8021:
	goto	l10441
u8020:
	line	1349
	
l10439:	
;doprnt.c: 1349: c = prec;
	movlb 4	; select bank4
	movf	(sprintf@prec)^0200h,w
	movwf	(sprintf@c)^0200h
	goto	l10445
	line	1350
	
l10441:	
;doprnt.c: 1350: else if(prec < c)
	movlb 4	; select bank4
	movf	(sprintf@c)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	btfsc	(??_sprintf+0)^080h+0,7
	decf	(??_sprintf+0)^080h+0+1,f
	movlb 4	; select bank4
	movf	(sprintf@prec+1)^0200h,w
	xorlw	80h
	movlb 1	; select bank1
	movwf	(??_sprintf+2)^080h+0
	movf	1+(??_sprintf+0)^080h+0,w
	xorlw	80h
	subwf	(??_sprintf+2)^080h+0,w
	skipz
	goto	u8035
	movf	0+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@prec)^0200h,w
u8035:

	skipnc
	goto	u8031
	goto	u8030
u8031:
	goto	l10445
u8030:
	line	1351
	
l10443:	
;doprnt.c: 1351: prec = c;
	movlb 4	; select bank4
	movf	(sprintf@c)^0200h,w
	movwf	(sprintf@prec)^0200h
	clrf	(sprintf@prec+1)^0200h
	btfsc	(sprintf@prec)^0200h,7
	decf	(sprintf@prec+1)^0200h,f
	line	1354
	
l10445:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movlb 4	; select bank4
	movf	(sprintf@width+1)^0200h,w
	iorwf	(sprintf@width)^0200h,w
	skipnz
	goto	u8041
	goto	u8040
u8041:
	goto	l10451
u8040:
	
l10447:	
	movf	(sprintf@flag)^0200h,w
	andlw	03h
	btfsc	status,2
	goto	u8051
	goto	u8050
u8051:
	goto	l10451
u8050:
	line	1355
	
l10449:	
;doprnt.c: 1355: width--;
	movlw	-1
	addwf	(sprintf@width)^0200h,f
	skipc
	decf	(sprintf@width+1)^0200h,f
	line	1357
	
l10451:	
;doprnt.c: 1357: if(flag & 0x4000) {
	btfss	(sprintf@flag+1)^0200h,(14)&7
	goto	u8061
	goto	u8060
u8061:
	goto	l10459
u8060:
	line	1358
	
l10453:	
;doprnt.c: 1358: if(width > prec)
	movf	(sprintf@prec+1)^0200h,w
	xorlw	80h
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	movlb 4	; select bank4
	movf	(sprintf@width+1)^0200h,w
	xorlw	80h
	movlb 1	; select bank1
	subwf	(??_sprintf+0)^080h+0,w
	skipz
	goto	u8075
	movlb 4	; select bank4
	movf	(sprintf@width)^0200h,w
	subwf	(sprintf@prec)^0200h,w
u8075:

	skipnc
	goto	u8071
	goto	u8070
u8071:
	goto	l10457
u8070:
	line	1359
	
l10455:	
;doprnt.c: 1359: width -= prec;
	movlb 4	; select bank4
	movf	(sprintf@prec)^0200h,w
	subwf	(sprintf@width)^0200h,f
	movf	(sprintf@prec+1)^0200h,w
	subwfb	(sprintf@width+1)^0200h,f
	goto	l10459
	line	1361
	
l10457:	
;doprnt.c: 1360: else
;doprnt.c: 1361: width = 0;
	movlb 4	; select bank4
	clrf	(sprintf@width)^0200h
	clrf	(sprintf@width+1)^0200h
	line	1390
	
l10459:	
;doprnt.c: 1362: }
;doprnt.c: 1390: if(width > c)
	movf	(sprintf@c)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	btfsc	(??_sprintf+0)^080h+0,7
	decf	(??_sprintf+0)^080h+0+1,f
	movf	1+(??_sprintf+0)^080h+0,w
	xorlw	80h
	movwf	(??_sprintf+2)^080h+0
	movlb 4	; select bank4
	movf	(sprintf@width+1)^0200h,w
	xorlw	80h
	movlb 1	; select bank1
	subwf	(??_sprintf+2)^080h+0,w
	skipz
	goto	u8085
	movlb 4	; select bank4
	movf	(sprintf@width)^0200h,w
	movlb 1	; select bank1
	subwf	0+(??_sprintf+0)^080h+0,w
u8085:

	skipnc
	goto	u8081
	goto	u8080
u8081:
	goto	l10463
u8080:
	line	1391
	
l10461:	
;doprnt.c: 1391: width -= c;
	movlb 4	; select bank4
	movf	(sprintf@c)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	btfsc	(??_sprintf+0)^080h+0,7
	decf	(??_sprintf+0)^080h+0+1,f
	movf	0+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	subwf	(sprintf@width)^0200h,f
	movlb 1	; select bank1
	movf	1+(??_sprintf+0)^080h+0,w
	movlb 4	; select bank4
	subwfb	(sprintf@width+1)^0200h,f
	goto	l10465
	line	1393
	
l10463:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	movlb 4	; select bank4
	clrf	(sprintf@width)^0200h
	clrf	(sprintf@width+1)^0200h
	line	1396
	
l10465:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(sprintf@flag)^0200h,(2)&7
	goto	u8091
	goto	u8090
u8091:
	goto	l10481
u8090:
	line	1401
	
l10467:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(sprintf@flag)^0200h,w
	andlw	03h
	btfsc	status,2
	goto	u8101
	goto	u8100
u8101:
	goto	l10473
u8100:
	line	1402
	
l10469:	
;doprnt.c: 1402: ((*sp++ = ('-')));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02Dh)
	movwf	indf1
	
l10471:	
	incf	(sprintf@sp)^0200h,f
	line	1424
	
l10473:	
;doprnt.c: 1424: if(width)
	movf	(sprintf@width+1)^0200h,w
	iorwf	(sprintf@width)^0200h,w
	skipnz
	goto	u8111
	goto	u8110
u8111:
	goto	l10511
u8110:
	line	1426
	
l10475:	
;doprnt.c: 1426: ((*sp++ = ('0')));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(030h)
	movwf	indf1
	
l10477:	
	incf	(sprintf@sp)^0200h,f
	line	1427
	
l10479:	
;doprnt.c: 1427: while(--width);
	movlw	-1
	addwf	(sprintf@width)^0200h,f
	skipc
	decf	(sprintf@width+1)^0200h,f
	movf	(((sprintf@width+1)^0200h)),w
	iorwf	(((sprintf@width)^0200h)),w
	skipz
	goto	u8121
	goto	u8120
u8121:
	goto	l10475
u8120:
	goto	l10511
	line	1437
	
l10481:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(sprintf@width+1)^0200h,w
	iorwf	(sprintf@width)^0200h,w
	skipnz
	goto	u8131
	goto	u8130
u8131:
	goto	l10489
u8130:
	line	1439
	
l10483:	
;doprnt.c: 1439: ((*sp++ = (' ')));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(020h)
	movwf	indf1
	
l10485:	
	incf	(sprintf@sp)^0200h,f
	line	1440
	
l10487:	
;doprnt.c: 1440: while(--width);
	movlw	-1
	addwf	(sprintf@width)^0200h,f
	skipc
	decf	(sprintf@width+1)^0200h,f
	movf	(((sprintf@width+1)^0200h)),w
	iorwf	(((sprintf@width)^0200h)),w
	skipz
	goto	u8141
	goto	u8140
u8141:
	goto	l10483
u8140:
	line	1447
	
l10489:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag)^0200h,w
	andlw	03h
	btfsc	status,2
	goto	u8151
	goto	u8150
u8151:
	goto	l10511
u8150:
	line	1448
	
l10491:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02Dh)
	movwf	indf1
	
l10493:	
	incf	(sprintf@sp)^0200h,f
	goto	l10511
	line	1498
	
l10495:	
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	0Ah
	movlb 0	; select bank0
	movwf	(___llmod@divisor)
	clrf	(___llmod@divisor+1)
	clrf	(___llmod@divisor+2)
	clrf	(___llmod@divisor+3)

	movlb 4	; select bank4
	movf	(sprintf@prec+1)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0+1
	movlb 4	; select bank4
	movf	(sprintf@prec)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	movlw	low(_dpowers|8000h)
	addwf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0l
	movlw	high(_dpowers|8000h)
	addwfc	1+(??_sprintf+0)^080h+0,w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___lldiv@divisor)
	moviw	[1]fsr0
	movwf	(___lldiv@divisor+1)
	moviw	[2]fsr0
	movwf	(___lldiv@divisor+2)
	moviw	[3]fsr0
	movwf	(___lldiv@divisor+3)
	movlb 4	; select bank4
	movf	(sprintf@_val+3)^0200h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@_val+2)^0200h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@_val+1)^0200h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@_val)^0200h,w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	movwf	(___llmod@dividend+3)
	movf	(2+(?___lldiv)),w
	movwf	(___llmod@dividend+2)
	movf	(1+(?___lldiv)),w
	movwf	(___llmod@dividend+1)
	movf	(0+(?___lldiv)),w
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movlb 4	; select bank4
	movwf	(sprintf@c)^0200h
	line	1500
;doprnt.c: 1500: break;
	goto	l10507
	line	1509
	
l10497:	
;doprnt.c: 1508: {
;doprnt.c: 1509: unsigned char idx = (_val._val / hexpowers[prec]) & 0xF;
	movf	(sprintf@_val+3)^0200h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@_val+2)^0200h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@_val+1)^0200h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@_val)^0200h,w
	movwf	(___lldiv@dividend)

	movf	(sprintf@prec+1)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0+1
	movlb 4	; select bank4
	movf	(sprintf@prec)^0200h,w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	lslf	(??_sprintf+0)^080h+0,f
	rlf	(??_sprintf+0)^080h+1,f
	movlw	low(_hexpowers|8000h)
	addwf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0l
	movlw	high(_hexpowers|8000h)
	addwfc	1+(??_sprintf+0)^080h+0,w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___lldiv@divisor)
	moviw	[1]fsr0
	movwf	(___lldiv@divisor+1)
	moviw	[2]fsr0
	movwf	(___lldiv@divisor+2)
	moviw	[3]fsr0
	movwf	(___lldiv@divisor+3)
	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	movlb 4	; select bank4
	movwf	(sprintf@idx)^0200h
	
l10499:	
	movlw	(0Fh)
	andwf	(sprintf@idx)^0200h,f
	line	1515
	
l10501:	
;doprnt.c: 1515: c = "0123456789abcdef"[idx];
	movf	(sprintf@idx)^0200h,w
	addlw	low(STR_22|8000h)
	movwf	fsr0l
	movlw	high(STR_22|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(sprintf@c)^0200h
	line	1519
;doprnt.c: 1517: }
;doprnt.c: 1519: break;
	goto	l10507
	line	1485
	
l10505:	
	movf	(sprintf@flag)^0200h,w
	andlw	080h
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l10495
	xorlw	128^0	; case 128
	skipnz
	goto	l10497
	goto	l10507
	opt asmopt_on

	line	1533
	
l10507:	
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(sprintf@c)^0200h,w
	movwf	indf1
	goto	l10493
	line	1483
	
l10511:	
	movlw	-1
	addwf	(sprintf@prec)^0200h,f
	skipc
	decf	(sprintf@prec+1)^0200h,f
	incf	((sprintf@prec)^0200h),w
	skipnz
	incf	((sprintf@prec+1)^0200h),w

	skipz
	goto	u8161
	goto	u8160
u8161:
	goto	l10505
u8160:
	line	545
	
l10513:	
	movlb 0	; select bank0
	movf	(sprintf@f+1),w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0+1
	movlb 0	; select bank0
	movf	(sprintf@f),w
	movlb 1	; select bank1
	movwf	(??_sprintf+0)^080h+0
	movlb 0	; select bank0
	incf	(sprintf@f),f
	skipnz
	incf	(sprintf@f+1),f
	movlb 1	; select bank1
	movf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0l
	movf	(1+(??_sprintf+0)^080h+0),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movlb 4	; select bank4
	movwf	(sprintf@c)^0200h
	movf	((sprintf@c)^0200h),f
	skipz
	goto	u8171
	goto	u8170
u8171:
	goto	l10127
u8170:
	line	1547
	
l10515:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp)^0200h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	1550
	
l1105:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_scale

;; *************** function _scale *****************
;; Defined at:
;;		line 425 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   32[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   25[BANK0 ] char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/4
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___ftmul
;;		___wmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	425
global __ptext2
__ptext2:	;psect for function _scale
psect	text2
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	425
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
;incstack = 0
	opt	stack 11
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	movlb 0	; select bank0
	movwf	(scale@scl)
	line	428
	
l10775:	
;doprnt.c: 428: if(scl < 0) {
	btfss	(scale@scl),7
	goto	u8661
	goto	u8660
u8661:
	goto	l10797
u8660:
	line	429
	
l10777:	
;doprnt.c: 429: scl = -scl;
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	430
	
l10779:	
;doprnt.c: 430: if(scl>=110)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u8671
	goto	u8670
u8671:
	goto	l10787
u8670:
	line	431
	
l10781:	
;doprnt.c: 431: return _npowers_[scl/100+18] * _npowers_[(scl%100)/10+9] * _npowers_[scl%10];
	movlw	0Ah
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	064h
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?___awdiv)),w
	movwf	(___wmul@multiplier)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__npowers_|8000h+01Bh)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__npowers_|8000h+01Bh)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f1)
	moviw	[1]fsr0
	movwf	(___ftmul@f1+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f1+2)
	movlw	064h
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?___awdiv)),w
	movwf	(___wmul@multiplier)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__npowers_|8000h+036h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__npowers_|8000h+036h)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f2)
	moviw	[1]fsr0
	movwf	(___ftmul@f2+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_scale$1777)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$1777+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$1777+2)
;doprnt.c: 431: return _npowers_[scl/100+18] * _npowers_[(scl%100)/10+9] * _npowers_[scl%10];
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	0Ah
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?___awmod)),w
	movwf	(___wmul@multiplier)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__npowers_|8000h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__npowers_|8000h)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f1)
	moviw	[1]fsr0
	movwf	(___ftmul@f1+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f1+2)
	movf	(_scale$1777),w
	movwf	(___ftmul@f2)
	movf	(_scale$1777+1),w
	movwf	(___ftmul@f2+1)
	movf	(_scale$1777+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l971
	line	432
	
l10787:	
;doprnt.c: 432: else if(scl > 10)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u8681
	goto	u8680
u8681:
	goto	l10793
u8680:
	line	433
	
l10789:	
;doprnt.c: 433: return _npowers_[scl/10+9] * _npowers_[scl%10];
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	0Ah
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?___awmod)),w
	movwf	(___wmul@multiplier)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__npowers_|8000h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__npowers_|8000h)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f1)
	moviw	[1]fsr0
	movwf	(___ftmul@f1+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f1+2)
	movlw	0Ah
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?___awdiv)),w
	movwf	(___wmul@multiplier)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__npowers_|8000h+01Bh)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__npowers_|8000h+01Bh)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f2)
	moviw	[1]fsr0
	movwf	(___ftmul@f2+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l971
	line	434
	
l10793:	
;doprnt.c: 434: return _npowers_[scl];
	movf	(scale@scl),w
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__npowers_|8000h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__npowers_|8000h)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(?_scale)
	moviw	[1]fsr0
	movwf	(?_scale+1)
	moviw	[2]fsr0
	movwf	(?_scale+2)
	goto	l971
	line	436
	
l10797:	
;doprnt.c: 435: }
;doprnt.c: 436: if(scl>=110)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u8691
	goto	u8690
u8691:
	goto	l10805
u8690:
	line	437
	
l10799:	
;doprnt.c: 437: return _powers_[scl/100+18] * _powers_[(scl%100)/10+9] * _powers_[scl%10];
	movlw	0Ah
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	064h
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?___awdiv)),w
	movwf	(___wmul@multiplier)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__powers_|8000h+01Bh)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__powers_|8000h+01Bh)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f1)
	moviw	[1]fsr0
	movwf	(___ftmul@f1+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f1+2)
	movlw	064h
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?___awdiv)),w
	movwf	(___wmul@multiplier)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__powers_|8000h+036h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__powers_|8000h+036h)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f2)
	moviw	[1]fsr0
	movwf	(___ftmul@f2+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_scale$1777)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$1777+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$1777+2)
;doprnt.c: 437: return _powers_[scl/100+18] * _powers_[(scl%100)/10+9] * _powers_[scl%10];
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	0Ah
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?___awmod)),w
	movwf	(___wmul@multiplier)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__powers_|8000h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__powers_|8000h)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f1)
	moviw	[1]fsr0
	movwf	(___ftmul@f1+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f1+2)
	movf	(_scale$1777),w
	movwf	(___ftmul@f2)
	movf	(_scale$1777+1),w
	movwf	(___ftmul@f2+1)
	movf	(_scale$1777+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l971
	line	438
	
l10805:	
;doprnt.c: 438: else if(scl > 10)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u8701
	goto	u8700
u8701:
	goto	l10811
u8700:
	line	439
	
l10807:	
;doprnt.c: 439: return _powers_[scl/10+9] * _powers_[scl%10];
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	0Ah
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?___awmod)),w
	movwf	(___wmul@multiplier)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__powers_|8000h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__powers_|8000h)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f1)
	moviw	[1]fsr0
	movwf	(___ftmul@f1+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f1+2)
	movlw	0Ah
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?___awdiv)),w
	movwf	(___wmul@multiplier)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__powers_|8000h+01Bh)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__powers_|8000h+01Bh)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f2)
	moviw	[1]fsr0
	movwf	(___ftmul@f2+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l971
	line	440
	
l10811:	
;doprnt.c: 440: return _powers_[scl];
	movf	(scale@scl),w
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__powers_|8000h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__powers_|8000h)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(?_scale)
	moviw	[1]fsr0
	movwf	(?_scale+1)
	moviw	[2]fsr0
	movwf	(?_scale+2)
	line	441
	
l971:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
	signat	_scale,4219
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    1[COMMON] int 
;;  dividend        2    3[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    1[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awmod.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___awmod
psect	text3
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 12
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l10991:	
	clrf	(___awmod@sign)
	line	14
	
l10993:	
	btfss	(___awmod@dividend+1),7
	goto	u9051
	goto	u9050
u9051:
	goto	l10999
u9050:
	line	15
	
l10995:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l10997:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	18
	
l10999:	
	btfss	(___awmod@divisor+1),7
	goto	u9061
	goto	u9060
u9061:
	goto	l11003
u9060:
	line	19
	
l11001:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	20
	
l11003:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u9071
	goto	u9070
u9071:
	goto	l11019
u9070:
	line	21
	
l11005:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l11009
	line	23
	
l11007:	
	lslf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	24
	incf	(___awmod@counter),f
	line	22
	
l11009:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u9081
	goto	u9080
u9081:
	goto	l11007
u9080:
	line	27
	
l11011:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u9095
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u9095:
	skipc
	goto	u9091
	goto	u9090
u9091:
	goto	l11015
u9090:
	line	28
	
l11013:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	subwfb	(___awmod@dividend+1),f
	line	29
	
l11015:	
	lsrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	30
	
l11017:	
	decfsz	(___awmod@counter),f
	goto	u9101
	goto	u9100
u9101:
	goto	l11011
u9100:
	line	32
	
l11019:	
	movf	(___awmod@sign),w
	skipz
	goto	u9110
	goto	l11023
u9110:
	line	33
	
l11021:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	34
	
l11023:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	35
	
l1310:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] int 
;;  dividend        2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1B/4
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awdiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___awdiv
psect	text4
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 12
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l10947:	
	movlb 0	; select bank0
	clrf	(___awdiv@sign)
	line	15
	
l10949:	
	btfss	(___awdiv@divisor+1),7
	goto	u8981
	goto	u8980
u8981:
	goto	l10955
u8980:
	line	16
	
l10951:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l10953:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l10955:	
	btfss	(___awdiv@dividend+1),7
	goto	u8991
	goto	u8990
u8991:
	goto	l10961
u8990:
	line	20
	
l10957:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l10959:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l10961:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l10963:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u9001
	goto	u9000
u9001:
	goto	l10983
u9000:
	line	25
	
l10965:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l10969
	line	27
	
l10967:	
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l10969:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u9011
	goto	u9010
u9011:
	goto	l10967
u9010:
	line	31
	
l10971:	
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l10973:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u9025
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u9025:
	skipc
	goto	u9021
	goto	u9020
u9021:
	goto	l10979
u9020:
	line	33
	
l10975:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	34
	
l10977:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l10979:	
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l10981:	
	decfsz	(___awdiv@counter),f
	goto	u9031
	goto	u9030
u9031:
	goto	l10971
u9030:
	line	39
	
l10983:	
	movf	(___awdiv@sign),w
	skipz
	goto	u9040
	goto	l10987
u9040:
	line	40
	
l10985:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l10987:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l1297:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\isdigit.c"
	line	8
global __ptext5
__ptext5:	;psect for function _isdigit
psect	text5
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
;incstack = 0
	opt	stack 13
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l10815:	
	clrf	(_isdigit$1324)
	
l10817:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u8711
	goto	u8710
u8711:
	goto	l10823
u8710:
	
l10819:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u8721
	goto	u8720
u8721:
	goto	l10823
u8720:
	
l10821:	
	clrf	(_isdigit$1324)
	incf	(_isdigit$1324),f
	
l10823:	
	rrf	(_isdigit$1324),w
	
	line	15
	
l1462:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	_fround

;; *************** function _fround *****************
;; Defined at:
;;		line 409 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   35[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   25[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/4
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      11       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftmul
;;		___lbdiv
;;		___lbmod
;;		___wmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	409
global __ptext6
__ptext6:	;psect for function _fround
psect	text6
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	409
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
;incstack = 0
	opt	stack 11
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	movlb 0	; select bank0
	movwf	(fround@prec)
	line	413
	
l10753:	
;doprnt.c: 413: if(prec>=110)
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u8641
	goto	u8640
u8641:
	goto	l10763
u8640:
	line	414
	
l10755:	
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	(0Ah)
	movwf	(___lbdiv@divisor)
	movlw	(064h)
	movwf	(___lbmod@divisor)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___lbdiv
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__npowers_|8000h+01Bh)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__npowers_|8000h+01Bh)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f1)
	moviw	[1]fsr0
	movwf	(___ftmul@f1+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f1+2)
	movlw	(064h)
	movwf	(___lbdiv@divisor)
	movf	(fround@prec),w
	fcall	___lbdiv
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__npowers_|8000h+036h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__npowers_|8000h+036h)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f2)
	moviw	[1]fsr0
	movwf	(___ftmul@f2+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$1775)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$1775+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$1775+2)
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	(0Ah)
	movwf	(___lbmod@divisor)
	movf	(fround@prec),w
	fcall	___lbmod
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__npowers_|8000h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__npowers_|8000h)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f1)
	moviw	[1]fsr0
	movwf	(___ftmul@f1+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f1+2)
	movf	(_fround$1775),w
	movwf	(___ftmul@f2)
	movf	(_fround$1775+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$1775+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$1776)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$1776+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$1776+2)
	
l10757:	
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(_fround$1776),w
	movwf	(___ftmul@f2)
	movf	(_fround$1776+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$1776+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l964
	line	415
	
l10763:	
;doprnt.c: 415: else if(prec > 10)
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u8651
	goto	u8650
u8651:
	goto	l10771
u8650:
	line	416
	
l10765:	
;doprnt.c: 416: return 0.5 * _npowers_[prec/10+9] * _npowers_[prec%10];
	movlw	(0Ah)
	movwf	(___lbmod@divisor)
	movf	(fround@prec),w
	fcall	___lbmod
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__npowers_|8000h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__npowers_|8000h)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f1)
	moviw	[1]fsr0
	movwf	(___ftmul@f1+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f1+2)
	movlw	(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(fround@prec),w
	fcall	___lbdiv
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__npowers_|8000h+01Bh)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__npowers_|8000h+01Bh)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f2)
	moviw	[1]fsr0
	movwf	(___ftmul@f2+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$1775)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$1775+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$1775+2)
	
l10767:	
;doprnt.c: 416: return 0.5 * _npowers_[prec/10+9] * _npowers_[prec%10];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(_fround$1775),w
	movwf	(___ftmul@f2)
	movf	(_fround$1775+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$1775+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l964
	line	417
	
l10771:	
;doprnt.c: 417: return 0.5 * _npowers_[prec];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(fround@prec),w
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movlw	low(__npowers_|8000h)
	addwf	(0+(?___wmul)),w
	movwf	fsr0l
	movlw	high(__npowers_|8000h)
	addwfc	(1+(?___wmul)),w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___ftmul@f2)
	moviw	[1]fsr0
	movwf	(___ftmul@f2+1)
	moviw	[2]fsr0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	line	418
	
l964:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
	signat	_fround,4219
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 4 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    4[BANK0 ] unsigned int 
;;  multiplicand    2    6[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    8[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\wmul.c"
	line	4
global __ptext7
__ptext7:	;psect for function ___wmul
psect	text7
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\wmul.c"
	line	4
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 12
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	20
	
l11383:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	22
	
l11385:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u9701
	goto	u9700
u9701:
	goto	l11389
u9700:
	line	23
	
l11387:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	line	24
	
l11389:	
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	25
	
l11391:	
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	26
	
l11393:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u9711
	goto	u9710
u9711:
	goto	l11385
u9710:
	line	30
	
l11395:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	31
	
l1583:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    7[COMMON] unsigned char 
;;  quotient        1    9[COMMON] unsigned char 
;;  counter         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbdiv.c"
	line	4
global __ptext8
__ptext8:	;psect for function ___lbdiv
psect	text8
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbdiv.c"
	line	4
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
;incstack = 0
	opt	stack 12
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	movwf	(___lbdiv@dividend)
	line	9
	
l11281:	
	clrf	(___lbdiv@quotient)
	line	10
	
l11283:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u9540
	goto	l11301
u9540:
	line	11
	
l11285:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l11289
	
l1467:	
	line	13
	lslf	(___lbdiv@divisor),f
	line	14
	
l11287:	
	incf	(___lbdiv@counter),f
	line	12
	
l11289:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u9551
	goto	u9550
u9551:
	goto	l1467
u9550:
	line	16
	
l1469:	
	line	17
	lslf	(___lbdiv@quotient),f
	line	18
	
l11291:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u9561
	goto	u9560
u9561:
	goto	l11297
u9560:
	line	19
	
l11293:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l11295:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l11297:	
	lsrf	(___lbdiv@divisor),f
	line	23
	
l11299:	
	decfsz	(___lbdiv@counter),f
	goto	u9571
	goto	u9570
u9571:
	goto	l1469
u9570:
	line	25
	
l11301:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1472:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 51 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   10[BANK0 ] float 
;;  f2              3   13[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   20[BANK0 ] unsigned um
;;  sign            1   24[BANK0 ] unsigned char 
;;  cntr            1   23[BANK0 ] unsigned char 
;;  exp             1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftmul.c"
	line	51
global __ptext9
__ptext9:	;psect for function ___ftmul
psect	text9
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftmul.c"
	line	51
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 11
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l11177:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u9391
	goto	u9390
u9391:
	goto	l11181
u9390:
	line	57
	
l11179:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l1427
	line	58
	
l11181:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u9401
	goto	u9400
u9401:
	goto	l11185
u9400:
	line	59
	
l11183:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l1427
	line	60
	
l11185:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l11187:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l11189:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l11191:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l11193:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l11195:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l11197:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l11199:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l11201:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l11203:	
	btfss	(___ftmul@f1),(0)&7
	goto	u9411
	goto	u9410
u9411:
	goto	l11207
u9410:
	line	72
	
l11205:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	line	73
	
l11207:	
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l11209:	
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l11211:	
	decfsz	(___ftmul@cntr),f
	goto	u9421
	goto	u9420
u9421:
	goto	l11203
u9420:
	line	76
	
l11213:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l11215:	
	btfss	(___ftmul@f1),(0)&7
	goto	u9431
	goto	u9430
u9431:
	goto	l11219
u9430:
	line	79
	
l11217:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	line	80
	
l11219:	
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l11221:	
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l11223:	
	decfsz	(___ftmul@cntr),f
	goto	u9441
	goto	u9440
u9441:
	goto	l11215
u9440:
	line	83
	
l11225:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movlb 0	; select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	84
	
l1427:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	__tdiv_to_l_

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 60 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    1[COMMON] float 
;;  f2              3    4[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    1[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/4
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         9       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftdivl.c"
	line	60
global __ptext10
__ptext10:	;psect for function __tdiv_to_l_
psect	text10
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftdivl.c"
	line	60
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
;incstack = 0
	opt	stack 13
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l10827:	
	movf	(__tdiv_to_l_@f1),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movlb 0	; select bank0
	movwf	(__tdiv_to_l_@exp1)
	movf	((__tdiv_to_l_@exp1)),f
	skipz
	goto	u8731
	goto	u8730
u8731:
	goto	l10831
u8730:
	line	67
	
l10829:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l1403
	line	68
	
l10831:	
	movf	(__tdiv_to_l_@f2),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f2+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f2+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(__tdiv_to_l_@cntr)
	movf	((__tdiv_to_l_@cntr)),f
	skipz
	goto	u8741
	goto	u8740
u8741:
	goto	l1404
u8740:
	goto	l10829
	line	69
	
l1404:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l10835:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l10837:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l10839:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l10841:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l10843:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l10845:	
	lslf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l10847:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u8755
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u8755
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u8755:
	skipc
	goto	u8751
	goto	u8750
u8751:
	goto	l10853
u8750:
	line	81
	
l10849:	
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),f
	movf	(__tdiv_to_l_@f2+1),w
	subwfb	(__tdiv_to_l_@f1+1),f
	movf	(__tdiv_to_l_@f2+2),w
	subwfb	(__tdiv_to_l_@f1+2),f
	line	82
	
l10851:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l10853:	
	lslf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l10855:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u8761
	goto	u8760
u8761:
	goto	l10845
u8760:
	
l1407:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u8771
	goto	u8770
u8771:
	goto	l10865
u8770:
	line	87
	
l10857:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u8781
	goto	u8780
u8781:
	goto	l10861
u8780:
	goto	l10829
	line	90
	
l10861:	
	lsrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l10863:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u8791
	goto	u8790
u8791:
	goto	l10861
u8790:
	goto	l10871
	line	93
	
l10865:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u8801
	goto	u8800
u8801:
	goto	l1414
u8800:
	goto	l10829
	line	96
	
l10869:	
	lslf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l1414:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u8811
	goto	u8810
u8811:
	goto	l10869
u8810:
	line	100
	
l10871:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l1403:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
	signat	__tdiv_to_l_,8316
	global	__div_to_l_

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 60 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    1[COMMON] unsigned long 
;;  f2              3    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quot            4    8[BANK0 ] unsigned long 
;;  exp1            1   13[BANK0 ] unsigned char 
;;  cntr            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    1[COMMON] unsigned long 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6      14       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fldivl.c"
	line	60
global __ptext11
__ptext11:	;psect for function __div_to_l_
psect	text11
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fldivl.c"
	line	60
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
;incstack = 0
	opt	stack 13
; Regs used in __div_to_l_: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	66
	
l10875:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	((??__div_to_l_+0)+0+0)
	moviw	[1]fsr1
	movwf	((??__div_to_l_+0)+0+1)
	moviw	[2]fsr1
	movwf	((??__div_to_l_+0)+0+2)
	moviw	[3]fsr1
	movwf	((??__div_to_l_+0)+0+3)
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(__div_to_l_@exp1)
	movf	((__div_to_l_@exp1)),f
	skipz
	goto	u8821
	goto	u8820
u8821:
	goto	l10879
u8820:
	line	67
	
l10877:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l1326
	line	68
	
l10879:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	((??__div_to_l_+0)+0+0)
	moviw	[1]fsr1
	movwf	((??__div_to_l_+0)+0+1)
	moviw	[2]fsr1
	movwf	((??__div_to_l_+0)+0+2)
	moviw	[3]fsr1
	movwf	((??__div_to_l_+0)+0+3)
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(__div_to_l_@cntr)
	movf	((__div_to_l_@cntr)),f
	skipz
	goto	u8831
	goto	u8830
u8831:
	goto	l10883
u8830:
	goto	l10877
	line	70
	
l10883:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	iorwf	indf1,f
	addfsr	fsr1,1
	movlw	0
	iorwf	indf1,f
	addfsr	fsr1,1
	movlw	080h
	iorwf	indf1,f
	addfsr	fsr1,1
	movlw	0
	iorwf	indf1,f
	line	71
	movlw	low(__div_to_l_@f1)
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0FFh
	andwf	indf1,f
	addfsr	fsr1,1
	movlw	0FFh
	andwf	indf1,f
	addfsr	fsr1,1
	movlw	0FFh
	andwf	indf1,f
	addfsr	fsr1,1
	movlw	0
	andwf	indf1,f
	line	72
	movlw	low(__div_to_l_@f2)
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	iorwf	indf1,f
	addfsr	fsr1,1
	movlw	0
	iorwf	indf1,f
	addfsr	fsr1,1
	movlw	080h
	iorwf	indf1,f
	addfsr	fsr1,1
	movlw	0
	iorwf	indf1,f
	line	73
	movlw	low(__div_to_l_@f2)
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0FFh
	andwf	indf1,f
	addfsr	fsr1,1
	movlw	0FFh
	andwf	indf1,f
	addfsr	fsr1,1
	movlw	0FFh
	andwf	indf1,f
	addfsr	fsr1,1
	movlw	0
	andwf	indf1,f
	line	74
	
l10885:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l10887:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l10889:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l10891:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l10893:	
	lslf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l10895:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	((??__div_to_l_+0)+0+0)
	moviw	[1]fsr1
	movwf	((??__div_to_l_+0)+0+1)
	moviw	[2]fsr1
	movwf	((??__div_to_l_+0)+0+2)
	moviw	[3]fsr1
	movwf	((??__div_to_l_+0)+0+3)
	movlw	low(__div_to_l_@f1)
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	((??__div_to_l_+4)+0+0)
	moviw	[1]fsr1
	movwf	((??__div_to_l_+4)+0+1)
	moviw	[2]fsr1
	movwf	((??__div_to_l_+4)+0+2)
	moviw	[3]fsr1
	movwf	((??__div_to_l_+4)+0+3)
	movf	3+(??__div_to_l_+0)+0,w
	subwf	3+(??__div_to_l_+4)+0,w
	skipz
	goto	u8845
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u8845
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u8845
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u8845:
	skipc
	goto	u8841
	goto	u8840
u8841:
	goto	l10901
u8840:
	line	81
	
l10897:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	((??__div_to_l_+0)+0+0)
	moviw	[1]fsr1
	movwf	((??__div_to_l_+0)+0+1)
	moviw	[2]fsr1
	movwf	((??__div_to_l_+0)+0+2)
	moviw	[3]fsr1
	movwf	((??__div_to_l_+0)+0+3)
	movlw	low(__div_to_l_@f1)
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??__div_to_l_+0)+0,w
	subwf	indf1,f
	addfsr	fsr1,1
	movf	1+(??__div_to_l_+0)+0,w
	subwfb	indf1,f
	addfsr	fsr1,1
	movf	2+(??__div_to_l_+0)+0,w
	subwfb	indf1,f
	addfsr	fsr1,1
	movf	3+(??__div_to_l_+0)+0,w
	subwfb	indf1,f
	addfsr	fsr1,-3
	line	82
	
l10899:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	84
	
l10901:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr1l
	clrf fsr1h	
	
	lslf	indf1,f
	addfsr	fsr1,1
	rlf	indf1,f
	addfsr	fsr1,1
	rlf	indf1,f
	addfsr	fsr1,1
	rlf	indf1,f
	line	85
	
l10903:	
	decfsz	(__div_to_l_@cntr),f
	goto	u8851
	goto	u8850
u8851:
	goto	l10893
u8850:
	
l1330:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u8861
	goto	u8860
u8861:
	goto	l10913
u8860:
	line	87
	
l10905:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u8871
	goto	u8870
u8871:
	goto	l10909
u8870:
	goto	l10877
	line	90
	
l10909:	
	lsrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l10911:	
	incfsz	(__div_to_l_@exp1),f
	goto	u8881
	goto	u8880
u8881:
	goto	l10909
u8880:
	goto	l10919
	line	93
	
l10913:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u8891
	goto	u8890
u8891:
	goto	l1337
u8890:
	goto	l10877
	line	96
	
l10917:	
	lslf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l1337:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u8901
	goto	u8900
u8901:
	goto	l10917
u8900:
	line	100
	
l10919:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l1326:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
	signat	__div_to_l_,8316
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    0[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lltoft.c"
	line	35
global __ptext12
__ptext12:	;psect for function ___lltoft
psect	text12
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
;incstack = 0
	opt	stack 12
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l11373:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l11377
	line	42
	
l11375:	
	lsrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l11377:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u9691
	goto	u9690
u9691:
	goto	l11375
u9690:
	line	45
	
l11379:	
	movf	(___lltoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lltoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___lltoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___lltoft@exp),w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movlb 0	; select bank0
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	line	46
	
l1511:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    5[BANK0 ] unsigned long 
;;  dividend        4    9[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    5[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\llmod.c"
	line	6
global __ptext13
__ptext13:	;psect for function ___llmod
psect	text13
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\llmod.c"
	line	6
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
;incstack = 0
	opt	stack 13
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	13
	
l11353:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u9651
	goto	u9650
u9651:
	goto	l11369
u9650:
	line	14
	
l11355:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	15
	goto	l11359
	line	16
	
l11357:	
	lslf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	17
	incf	(___llmod@counter),f
	line	15
	
l11359:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u9661
	goto	u9660
u9661:
	goto	l11357
u9660:
	line	20
	
l11361:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u9675
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u9675
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u9675
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u9675:
	skipc
	goto	u9671
	goto	u9670
u9671:
	goto	l11365
u9670:
	line	21
	
l11363:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	subwfb	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	subwfb	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	subwfb	(___llmod@dividend+3),f
	line	22
	
l11365:	
	lsrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	23
	
l11367:	
	decfsz	(___llmod@counter),f
	goto	u9681
	goto	u9680
u9681:
	goto	l11361
u9680:
	line	25
	
l11369:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	26
	
l1503:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    1[COMMON] unsigned long 
;;  dividend        4    5[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    0[BANK0 ] unsigned long 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    1[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1A/4
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lldiv.c"
	line	6
global __ptext14
__ptext14:	;psect for function ___lldiv
psect	text14
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 13
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l11327:	
	movlb 0	; select bank0
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	15
	
l11329:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u9611
	goto	u9610
u9611:
	goto	l11349
u9610:
	line	16
	
l11331:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l11335
	line	18
	
l11333:	
	lslf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	19
	incf	(___lldiv@counter),f
	line	17
	
l11335:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u9621
	goto	u9620
u9621:
	goto	l11333
u9620:
	line	22
	
l11337:	
	lslf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	23
	
l11339:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u9635
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u9635
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u9635
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u9635:
	skipc
	goto	u9631
	goto	u9630
u9631:
	goto	l11345
u9630:
	line	24
	
l11341:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	subwfb	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	subwfb	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	subwfb	(___lldiv@dividend+3),f
	line	25
	
l11343:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	27
	
l11345:	
	lsrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	28
	
l11347:	
	decfsz	(___lldiv@counter),f
	goto	u9641
	goto	u9640
u9641:
	goto	l11337
u9640:
	line	30
	
l11349:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	31
	
l1493:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 18 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   48[BANK0 ] float 
;;  f1              3   51[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   48[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftsub.c"
	line	18
global __ptext15
__ptext15:	;psect for function ___ftsub
psect	text15
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftsub.c"
	line	18
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
;incstack = 0
	opt	stack 11
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l11237:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	24
	
l11239:	
	movf	(___ftsub@f1),w
	movwf	(___ftadd@f1)
	movf	(___ftsub@f1+1),w
	movwf	(___ftadd@f1+1)
	movf	(___ftsub@f1+2),w
	movwf	(___ftadd@f1+2)
	movf	(___ftsub@f2),w
	movwf	(___ftadd@f2)
	movf	(___ftsub@f2+1),w
	movwf	(___ftadd@f2+1)
	movf	(___ftsub@f2+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	line	25
	
l1443:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    1[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    1[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/4
;;		On exit  : 1F/4
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftneg.c"
	line	15
global __ptext16
__ptext16:	;psect for function ___ftneg
psect	text16
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 13
; Regs used in ___ftneg: [wreg]
	line	17
	
l11229:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u9451
	goto	u9450
u9451:
	goto	l11233
u9450:
	line	18
	
l11231:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l11233:	
	line	20
	
l1438:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	_scan_key_value

;; *************** function _scan_key_value *****************
;; Defined at:
;;		line 96 in file "D:\MCUProject\YCQ\src\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key_temp        2   55[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_BEEP_SPEAK
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___fttol
;;		___lbmod
;;		_crc16
;;		_disp_grap
;;		_uart1_send_nbyte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\key.c"
	line	96
global __ptext17
__ptext17:	;psect for function _scan_key_value
psect	text17
	file	"D:\MCUProject\YCQ\src\key.c"
	line	96
	global	__size_of_scan_key_value
	__size_of_scan_key_value	equ	__end_of_scan_key_value-_scan_key_value
	
_scan_key_value:	
;incstack = 0
	opt	stack 10
; Regs used in _scan_key_value: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	102
	
l9665:	
;key.c: 98: unsigned int key_temp;
;key.c: 102: key_temp=0x00;
	movlb 0	; select bank0
	clrf	(scan_key_value@key_temp)
	clrf	(scan_key_value@key_temp+1)
	line	104
	
l9667:	
;key.c: 104: key_temp=(key_temp<<1)|(PORTBbits.RB3);
	rrf	(13),w	;volatile
	movwf	(??_scan_key_value+0)+0
	rrf	(??_scan_key_value+0)+0,f
	rrf	(??_scan_key_value+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_scan_key_value+1)+0
	clrf	(??_scan_key_value+1)+0+1
	movf	(scan_key_value@key_temp+1),w
	movwf	(??_scan_key_value+3)+0+1
	movf	(scan_key_value@key_temp),w
	movwf	(??_scan_key_value+3)+0
	lslf	(??_scan_key_value+3)+0,f
	rlf	(??_scan_key_value+3)+1,f
	movf	0+(??_scan_key_value+1)+0,w
	iorwf	0+(??_scan_key_value+3)+0,w
	movwf	(??_scan_key_value+5)+0
	movf	1+(??_scan_key_value+1)+0,w
	iorwf	1+(??_scan_key_value+3)+0,w
	movwf	1+(??_scan_key_value+5)+0
	movf	0+(??_scan_key_value+5)+0,w
	movwf	(scan_key_value@key_temp)
	movf	1+(??_scan_key_value+5)+0,w
	movwf	(scan_key_value@key_temp+1)
	line	106
	
l9669:	
;key.c: 106: key_temp=(key_temp<<1)|(PORTBbits.RB7);
	rlf	(13),w	;volatile
	rlf	(13),w	;volatile
	andlw	1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movf	(scan_key_value@key_temp+1),w
	movwf	(??_scan_key_value+2)+0+1
	movf	(scan_key_value@key_temp),w
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp)
	movf	1+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp+1)
	line	108
	
l9671:	
;key.c: 108: key_temp=(key_temp<<1)|(PORTAbits.RA2);
	rrf	(12),w	;volatile
	rrf	wreg,f
	andlw	(1<<1)-1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movf	(scan_key_value@key_temp+1),w
	movwf	(??_scan_key_value+2)+0+1
	movf	(scan_key_value@key_temp),w
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp)
	movf	1+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp+1)
	line	110
	
l9673:	
;key.c: 110: key_temp=(key_temp<<1)|(PORTBbits.RB4);
	swapf	(13),w	;volatile
	andlw	(1<<1)-1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movf	(scan_key_value@key_temp+1),w
	movwf	(??_scan_key_value+2)+0+1
	movf	(scan_key_value@key_temp),w
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp)
	movf	1+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp+1)
	line	112
	
l9675:	
;key.c: 112: key_temp=(key_temp<<1)|(PORTBbits.RB6);
	swapf	(13),w	;volatile
	rrf	wreg,f
	rrf	wreg,f
	andlw	(1<<1)-1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movf	(scan_key_value@key_temp+1),w
	movwf	(??_scan_key_value+2)+0+1
	movf	(scan_key_value@key_temp),w
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp)
	movf	1+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp+1)
	line	114
	
l9677:	
;key.c: 114: key_temp=(key_temp<<1)|(PORTAbits.RA7);
	rlf	(12),w	;volatile
	rlf	(12),w	;volatile
	andlw	1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movf	(scan_key_value@key_temp+1),w
	movwf	(??_scan_key_value+2)+0+1
	movf	(scan_key_value@key_temp),w
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp)
	movf	1+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp+1)
	line	116
	
l9679:	
;key.c: 116: key_temp=(key_temp<<1)|(PORTBbits.RB5);
	swapf	(13),w	;volatile
	rrf	wreg,f
	andlw	(1<<1)-1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movf	(scan_key_value@key_temp+1),w
	movwf	(??_scan_key_value+2)+0+1
	movf	(scan_key_value@key_temp),w
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp)
	movf	1+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp+1)
	line	118
	
l9681:	
;key.c: 118: key_temp=(key_temp<<1)|(PORTBbits.RB2);
	rrf	(13),w	;volatile
	rrf	wreg,f
	andlw	(1<<1)-1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movf	(scan_key_value@key_temp+1),w
	movwf	(??_scan_key_value+2)+0+1
	movf	(scan_key_value@key_temp),w
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp)
	movf	1+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp+1)
	line	120
	
l9683:	
;key.c: 120: key_temp=(key_temp<<1)|(PORTBbits.RB0);
	movf	(13),w	;volatile
	andlw	(1<<1)-1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movf	(scan_key_value@key_temp+1),w
	movwf	(??_scan_key_value+2)+0+1
	movf	(scan_key_value@key_temp),w
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp)
	movf	1+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp+1)
	line	122
	
l9685:	
;key.c: 122: key_temp=(key_temp<<1)|(PORTBbits.RB1);
	rrf	(13),w	;volatile
	andlw	(1<<1)-1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movf	(scan_key_value@key_temp+1),w
	movwf	(??_scan_key_value+2)+0+1
	movf	(scan_key_value@key_temp),w
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp)
	movf	1+(??_scan_key_value+4)+0,w
	movwf	(scan_key_value@key_temp+1)
	line	124
;key.c: 124: switch(key_temp)
	goto	l9727
	line	126
	
l9687:	
	clrf	(_KEY_STATE)
	goto	l9729
	line	128
;key.c: 128: case 0x0200: KEY_VALUE =K1;KEY_STATE =KEY_DOWN;break;
	
l802:	
	clrf	(_KEY_VALUE)
	incf	(_KEY_VALUE),f
	clrf	(_KEY_STATE)
	incf	(_KEY_STATE),f
	goto	l9729
	line	130
	
l9689:	
	movlw	(02h)
	movwf	(_KEY_VALUE)
	
l9691:	
	clrf	(_KEY_STATE)
	incf	(_KEY_STATE),f
	goto	l9729
	line	132
	
l9693:	
	movlw	(03h)
	movwf	(_KEY_VALUE)
	goto	l9691
	line	134
	
l9697:	
	movlw	(04h)
	movwf	(_KEY_VALUE)
	goto	l9691
	line	136
	
l9701:	
	movlw	(05h)
	movwf	(_KEY_VALUE)
	goto	l9691
	line	138
	
l9705:	
	movlw	(06h)
	movwf	(_KEY_VALUE)
	goto	l9691
	line	140
	
l9709:	
	movlw	(07h)
	movwf	(_KEY_VALUE)
	goto	l9691
	line	142
	
l9713:	
	movlw	(08h)
	movwf	(_KEY_VALUE)
	goto	l9691
	line	144
	
l9717:	
	movlw	(09h)
	movwf	(_KEY_VALUE)
	goto	l9691
	line	146
	
l9721:	
	movlw	(0Ah)
	movwf	(_KEY_VALUE)
	goto	l9691
	line	124
	
l9727:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 3 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           12     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (scan_key_value@key_temp+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l11527
	xorlw	1^0	; case 1
	skipnz
	goto	l11529
	xorlw	2^1	; case 2
	skipnz
	goto	l11531
	goto	l9691
	opt asmopt_on
	
l11527:	
; Switch size 1, requested type "space"
; Number of cases is 9, Range of values is 0 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (scan_key_value@key_temp),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9687
	xorlw	1^0	; case 1
	skipnz
	goto	l9721
	xorlw	2^1	; case 2
	skipnz
	goto	l9717
	xorlw	4^2	; case 4
	skipnz
	goto	l9713
	xorlw	8^4	; case 8
	skipnz
	goto	l9709
	xorlw	16^8	; case 16
	skipnz
	goto	l9705
	xorlw	32^16	; case 32
	skipnz
	goto	l9701
	xorlw	64^32	; case 64
	skipnz
	goto	l9697
	xorlw	128^64	; case 128
	skipnz
	goto	l9693
	goto	l9691
	opt asmopt_on
	
l11529:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (scan_key_value@key_temp),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9689
	goto	l9691
	opt asmopt_on
	
l11531:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (scan_key_value@key_temp),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l802
	goto	l9691
	opt asmopt_on

	line	153
	
l9729:	
;key.c: 153: if(KEY_STATE==KEY_UP)
	movf	(_KEY_STATE),f
	skipz
	goto	u6961
	goto	u6960
u6961:
	goto	l10039
u6960:
	line	155
	
l9731:	
;key.c: 154: {
;key.c: 155: if(KEY_VALUE!=KNOP)
	movf	(_KEY_VALUE),w
	xorlw	010h&0ffh
	skipnz
	goto	u6971
	goto	u6970
u6971:
	goto	l10039
u6970:
	line	158
	
l9733:	
;key.c: 156: {
;key.c: 158: if(menu_index==0x00)
	movlb 1	; select bank1
	movf	(_menu_index)^080h,f
	skipz
	goto	u6981
	goto	u6980
u6981:
	goto	l9737
u6980:
	line	160
	
l9735:	
;key.c: 159: {
;key.c: 160: menu_index=0x01;
	clrf	(_menu_index)^080h
	incf	(_menu_index)^080h,f
	line	161
;key.c: 161: }
	goto	l10033
	line	162
	
l9737:	
;key.c: 162: else if(menu_index==0x01)
	decf	(_menu_index)^080h,w
	skipz
	goto	u6991
	goto	u6990
u6991:
	goto	l10033
u6990:
	goto	l10031
	line	166
	
l9741:	
	movlw	1<<5
	movlb 2	; select bank2
	xorwf	(268)^0100h,f	;volatile
	goto	l10033
	line	168
	
l9743:	
	movlw	1<<1
	movlb 2	; select bank2
	xorwf	(268)^0100h,f	;volatile
	goto	l10033
	line	172
;key.c: 172: case K8:
	
l823:	
	line	173
;key.c: 173: menu_index_q=0x01;
	clrf	(_menu_index_q)
	incf	(_menu_index_q),f
	line	175
;key.c: 175: poll_time_enable=0x01;
	movlb 1	; select bank1
	clrf	(_poll_time_enable)^080h
	incf	(_poll_time_enable)^080h,f
	line	177
	
l9747:	
;key.c: 177: zhuangtai_cnt=0xFF;
	movlw	(0FFh)
	movwf	(_zhuangtai_cnt)^080h
	line	179
	
l9749:	
;key.c: 179: disp_grap(1,1,zhuangtai01);
	movlb 0	; select bank0
	clrf	(disp_grap@column)
	incf	(disp_grap@column),f
	movlw	low(_zhuangtai01|8000h)
	movwf	(disp_grap@dp)
	movlw	high(_zhuangtai01|8000h)
	movwf	((disp_grap@dp))+1
	movlw	(01h)
	fcall	_disp_grap
	line	181
;key.c: 181: break;
	goto	l10033
	line	185
	
l9751:	
;key.c: 184: {
;key.c: 185: menu_index_q=0x02;
	movlw	(02h)
	movwf	(_menu_index_q)
	line	187
	
l9753:	
;key.c: 187: poll_time_enable=0x00;
	movlb 1	; select bank1
	clrf	(_poll_time_enable)^080h
	line	189
	
l9755:	
;key.c: 189: poll_time_count=0x00;
	clrf	(_poll_time_count)^080h
	clrf	(_poll_time_count+1)^080h
	line	191
	
l9757:	
;key.c: 191: poll_task_flag=0x00;
	clrf	(_poll_task_flag)^080h
	line	194
	
l9759:	
;key.c: 194: tx_frame_kind=0x03;
	movlw	(03h)
	movwf	(_tx_frame_kind)^080h
	line	196
	
l9761:	
;key.c: 196: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 2	; select bank2
	movwf	(_uart1_tx_buf)^0100h
	line	198
	
l9763:	
;key.c: 198: uart1_tx_buf[1]=0xA3;
	movlw	(0A3h)
	movwf	0+(_uart1_tx_buf)^0100h+01h
	line	200
	
l9765:	
;key.c: 200: uart1_tx_buf[2]=(unsigned char )(light_pv/256);
	movlb 0	; select bank0
	movf	(_light_pv),w
	movwf	(___ftdiv@f1)
	movf	(_light_pv+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_light_pv+2),w
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+02h
	line	202
	
l9767:	
;key.c: 202: uart1_tx_buf[3]=(unsigned char )light_pv;
	movlb 0	; select bank0
	movf	(_light_pv),w
	movwf	(___fttol@f1)
	movf	(_light_pv+1),w
	movwf	(___fttol@f1+1)
	movf	(_light_pv+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+03h
	line	204
	
l9769:	
;key.c: 204: uart1_tx_buf[4]=(unsigned char )(load_cc_I/256);
	movlb 0	; select bank0
	movf	(_load_cc_I),w
	movwf	(___ftdiv@f1)
	movf	(_load_cc_I+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+04h
	line	206
	
l9771:	
;key.c: 206: uart1_tx_buf[5]=(unsigned char )load_cc_I;
	movlb 0	; select bank0
	movf	(_load_cc_I),w
	movwf	(___fttol@f1)
	movf	(_load_cc_I+1),w
	movwf	(___fttol@f1+1)
	movf	(_load_cc_I+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+05h
	line	208
	
l9773:	
;key.c: 208: uart1_tx_buf[6]=(unsigned char )(load_percent);
	movlb 0	; select bank0
	movf	(_load_percent),w
	movwf	(___fttol@f1)
	movf	(_load_percent+1),w
	movwf	(___fttol@f1+1)
	movf	(_load_percent+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+06h
	line	210
	
l9775:	
;key.c: 210: crc_data=crc16(&uart1_tx_buf[1],6);
	movlw	(06h)
	movwf	(crc16@usDataLen)
	movlw	(_uart1_tx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movlb 0	; select bank0
	movwf	(_crc_data+1)
	movf	(0+(?_crc16)),w
	movwf	(_crc_data)
	line	212
	
l9777:	
;key.c: 212: uart1_tx_buf[7]=crc_data/256;
	movf	(_crc_data+1),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+07h
	line	214
	
l9779:	
;key.c: 214: uart1_tx_buf[8]=crc_data%256;
	movlb 0	; select bank0
	movf	(_crc_data),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+08h
	line	216
	
l9781:	
;key.c: 216: uart1_tx_buf[9]=0xAA;
	movlw	(0AAh)
	movwf	0+(_uart1_tx_buf)^0100h+09h
	line	218
	
l9783:	
;key.c: 218: uart1_send_nbyte(uart1_tx_buf,10);
	movlw	0Ah
	movwf	(uart1_send_nbyte@size)
	clrf	(uart1_send_nbyte@size+1)
	clrf	(uart1_send_nbyte@size+2)
	clrf	(uart1_send_nbyte@size+3)

	movlw	(_uart1_tx_buf)&0ffh
	fcall	_uart1_send_nbyte
	line	222
	
l9785:	
;key.c: 222: disp_grap(1,1,canshu01);
	movlb 0	; select bank0
	clrf	(disp_grap@column)
	incf	(disp_grap@column),f
	movlw	low(_canshu01|8000h)
	movwf	(disp_grap@dp)
	movlw	high(_canshu01|8000h)
	movwf	((disp_grap@dp))+1
	movlw	(01h)
	fcall	_disp_grap
	line	225
;key.c: 223: }
;key.c: 225: break;
	goto	l10033
	line	227
;key.c: 227: case K4:
	
l825:	
	line	229
;key.c: 228: {
;key.c: 229: menu_index_q=0x01;
	clrf	(_menu_index_q)
	incf	(_menu_index_q),f
	line	231
	
l9787:	
;key.c: 231: poll_time_count=0x00;
	movlb 1	; select bank1
	clrf	(_poll_time_count)^080h
	clrf	(_poll_time_count+1)^080h
	line	233
;key.c: 233: poll_task_flag=0x00;
	clrf	(_poll_task_flag)^080h
	line	236
	
l9789:	
;key.c: 236: tx_frame_kind=0x01;
	clrf	(_tx_frame_kind)^080h
	incf	(_tx_frame_kind)^080h,f
	line	238
	
l9791:	
;key.c: 238: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 2	; select bank2
	movwf	(_uart1_tx_buf)^0100h
	line	240
	
l9793:	
;key.c: 240: uart1_tx_buf[1]=0xA1;
	movlw	(0A1h)
	movwf	0+(_uart1_tx_buf)^0100h+01h
	line	242
	
l9795:	
;key.c: 242: crc_data=crc16(&uart1_tx_buf[1],1);
	clrf	(crc16@usDataLen)
	incf	(crc16@usDataLen),f
	movlw	(_uart1_tx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movlb 0	; select bank0
	movwf	(_crc_data+1)
	movf	(0+(?_crc16)),w
	movwf	(_crc_data)
	line	244
	
l9797:	
;key.c: 244: uart1_tx_buf[2]=crc_data/256;
	movf	(_crc_data+1),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+02h
	line	246
	
l9799:	
;key.c: 246: uart1_tx_buf[3]=crc_data%256;
	movlb 0	; select bank0
	movf	(_crc_data),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+03h
	line	248
	
l9801:	
;key.c: 248: uart1_tx_buf[4]=0xAA;
	movlw	(0AAh)
	movwf	0+(_uart1_tx_buf)^0100h+04h
	line	250
	
l9803:	
;key.c: 250: uart1_send_nbyte(uart1_tx_buf,5);
	movlw	05h
	movwf	(uart1_send_nbyte@size)
	clrf	(uart1_send_nbyte@size+1)
	clrf	(uart1_send_nbyte@size+2)
	clrf	(uart1_send_nbyte@size+3)

	movlw	(_uart1_tx_buf)&0ffh
	fcall	_uart1_send_nbyte
	line	254
	
l9805:	
;key.c: 254: zhuangtai_cnt = ~zhuangtai_cnt;
	movlw	(0FFh)
	movlb 1	; select bank1
	xorwf	(_zhuangtai_cnt)^080h,f
	line	256
	
l9807:	
;key.c: 256: if(zhuangtai_cnt)
	movf	(_zhuangtai_cnt)^080h,w
	skipz
	goto	u7000
	goto	l9811
u7000:
	line	258
	
l9809:	
;key.c: 257: {
;key.c: 258: disp_grap(1,1,zhuangtai01);
	movlb 0	; select bank0
	clrf	(disp_grap@column)
	incf	(disp_grap@column),f
	movlw	low(_zhuangtai01|8000h)
	movwf	(disp_grap@dp)
	movlw	high(_zhuangtai01|8000h)
	movwf	((disp_grap@dp))+1
	movlw	(01h)
	fcall	_disp_grap
	line	259
;key.c: 259: }
	goto	l10033
	line	262
	
l9811:	
;key.c: 260: else
;key.c: 261: {
;key.c: 262: disp_grap(1,1,zhuangtai02);
	movlb 0	; select bank0
	clrf	(disp_grap@column)
	incf	(disp_grap@column),f
	movlw	low(_zhuangtai02|8000h)
	movwf	(disp_grap@dp)
	movlw	high(_zhuangtai02|8000h)
	movwf	((disp_grap@dp))+1
	movlw	(01h)
	fcall	_disp_grap
	goto	l10033
	line	263
	
l827:	
	line	265
;key.c: 263: }
;key.c: 265: }break;
	goto	l10033
	line	269
	
l9813:	
;key.c: 268: {
;key.c: 269: menu_index_q=0x02;
	movlw	(02h)
	movwf	(_menu_index_q)
	line	271
	
l9815:	
;key.c: 271: poll_time_enable=0x00;
	movlb 1	; select bank1
	clrf	(_poll_time_enable)^080h
	line	273
	
l9817:	
;key.c: 273: poll_time_count=0x00;
	clrf	(_poll_time_count)^080h
	clrf	(_poll_time_count+1)^080h
	line	275
	
l9819:	
;key.c: 275: poll_task_flag=0x00;
	clrf	(_poll_task_flag)^080h
	line	279
	
l9821:	
;key.c: 279: tx_frame_kind=0x02;
	movlw	(02h)
	movwf	(_tx_frame_kind)^080h
	line	281
	
l9823:	
;key.c: 281: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 2	; select bank2
	movwf	(_uart1_tx_buf)^0100h
	line	283
	
l9825:	
;key.c: 283: uart1_tx_buf[1]=0xA2;
	movlw	(0A2h)
	movwf	0+(_uart1_tx_buf)^0100h+01h
	line	285
	
l9827:	
;key.c: 285: crc_data=crc16(&uart1_tx_buf[1],1);
	clrf	(crc16@usDataLen)
	incf	(crc16@usDataLen),f
	movlw	(_uart1_tx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movlb 0	; select bank0
	movwf	(_crc_data+1)
	movf	(0+(?_crc16)),w
	movwf	(_crc_data)
	line	287
	
l9829:	
;key.c: 287: uart1_tx_buf[2]=crc_data/256;
	movf	(_crc_data+1),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+02h
	line	289
	
l9831:	
;key.c: 289: uart1_tx_buf[3]=crc_data%256;
	movlb 0	; select bank0
	movf	(_crc_data),w
	movlb 2	; select bank2
	movwf	0+(_uart1_tx_buf)^0100h+03h
	line	291
	
l9833:	
;key.c: 291: uart1_tx_buf[4]=0xAA;
	movlw	(0AAh)
	movwf	0+(_uart1_tx_buf)^0100h+04h
	line	293
	
l9835:	
;key.c: 293: uart1_send_nbyte(uart1_tx_buf,5);
	movlw	05h
	movwf	(uart1_send_nbyte@size)
	clrf	(uart1_send_nbyte@size+1)
	clrf	(uart1_send_nbyte@size+2)
	clrf	(uart1_send_nbyte@size+3)

	movlw	(_uart1_tx_buf)&0ffh
	fcall	_uart1_send_nbyte
	line	297
	
l9837:	
;key.c: 297: disp_grap(1,1,canshu01);
	movlb 0	; select bank0
	clrf	(disp_grap@column)
	incf	(disp_grap@column),f
	movlw	low(_canshu01|8000h)
	movwf	(disp_grap@dp)
	movlw	high(_canshu01|8000h)
	movwf	((disp_grap@dp))+1
	movlw	(01h)
	fcall	_disp_grap
	line	300
;key.c: 298: }
;key.c: 300: break;
	goto	l10033
	line	303
	
l9839:	
;key.c: 303: if(menu_index_q==0x02)
	movf	(_menu_index_q),w
	xorlw	02h&0ffh
	skipz
	goto	u7011
	goto	u7010
u7011:
	goto	l9845
u7010:
	line	305
	
l9841:	
;key.c: 304: {
;key.c: 305: menu_index_q=0x03;
	movlw	(03h)
	movwf	(_menu_index_q)
	line	307
	
l9843:	
;key.c: 307: canshu_1_weizhi=0x00;
	movlb 0	; select bank0
	clrf	(_canshu_1_weizhi)
	line	308
;key.c: 308: }
	goto	l10033
	line	309
	
l9845:	
;key.c: 309: else if(menu_index_q==0x03)
	movf	(_menu_index_q),w
	xorlw	03h&0ffh
	skipz
	goto	u7021
	goto	u7020
u7021:
	goto	l9855
u7020:
	line	311
	
l9847:	
;key.c: 310: {
;key.c: 311: canshu_1_weizhi++;
	incf	(_canshu_1_weizhi),f
	line	313
	
l9849:	
;key.c: 313: if(light_pv>=1000)
	movf	(_light_pv),w
	movwf	(___ftge@ff1)
	movf	(_light_pv+1),w
	movwf	(___ftge@ff1+1)
	movf	(_light_pv+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x7a
	movwf	(___ftge@ff2+1)
	movlw	0x44
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7031
	goto	u7030
u7031:
	goto	l9853
u7030:
	line	315
	
l9851:	
;key.c: 314: {
;key.c: 315: canshu_1_weizhi=canshu_1_weizhi%4;
	movlw	(03h)
	movlb 0	; select bank0
	andwf	(_canshu_1_weizhi),f
	line	316
;key.c: 316: }
	goto	l10033
	line	319
	
l9853:	
;key.c: 317: else
;key.c: 318: {
;key.c: 319: canshu_1_weizhi=canshu_1_weizhi%3;
	movlw	(03h)
	movwf	(___lbmod@divisor)
	movlb 0	; select bank0
	movf	(_canshu_1_weizhi),w
	fcall	___lbmod
	movwf	(_canshu_1_weizhi)
	goto	l10033
	line	324
	
l9855:	
;key.c: 324: else if(menu_index_q==0x04)
	movf	(_menu_index_q),w
	xorlw	04h&0ffh
	skipz
	goto	u7041
	goto	u7040
u7041:
	goto	l9861
u7040:
	line	326
	
l9857:	
;key.c: 325: {
;key.c: 326: menu_index_q=0x05;
	movlw	(05h)
	movwf	(_menu_index_q)
	line	328
	
l9859:	
;key.c: 328: canshu_2_weizhi=0x00;
	movlb 0	; select bank0
	clrf	(_canshu_2_weizhi)
	line	329
;key.c: 329: }
	goto	l10033
	line	330
	
l9861:	
;key.c: 330: else if(menu_index_q==0x05)
	movf	(_menu_index_q),w
	xorlw	05h&0ffh
	skipz
	goto	u7051
	goto	u7050
u7051:
	goto	l9871
u7050:
	line	332
	
l9863:	
;key.c: 331: {
;key.c: 332: canshu_2_weizhi++;
	incf	(_canshu_2_weizhi),f
	line	334
	
l9865:	
;key.c: 334: if(load_cc_I>=1000)
	movf	(_load_cc_I),w
	movwf	(___ftge@ff1)
	movf	(_load_cc_I+1),w
	movwf	(___ftge@ff1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x7a
	movwf	(___ftge@ff2+1)
	movlw	0x44
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7061
	goto	u7060
u7061:
	goto	l9869
u7060:
	line	336
	
l9867:	
;key.c: 335: {
;key.c: 336: canshu_2_weizhi=canshu_2_weizhi%4;
	movlw	(03h)
	movlb 0	; select bank0
	andwf	(_canshu_2_weizhi),f
	line	337
;key.c: 337: }
	goto	l10033
	line	340
	
l9869:	
;key.c: 338: else
;key.c: 339: {
;key.c: 340: canshu_2_weizhi=canshu_2_weizhi%3;
	movlw	(03h)
	movwf	(___lbmod@divisor)
	movlb 0	; select bank0
	movf	(_canshu_2_weizhi),w
	fcall	___lbmod
	movwf	(_canshu_2_weizhi)
	goto	l10033
	line	343
	
l9871:	
;key.c: 343: else if(menu_index_q==0x06)
	movf	(_menu_index_q),w
	xorlw	06h&0ffh
	skipz
	goto	u7071
	goto	u7070
u7071:
	goto	l9877
u7070:
	line	345
	
l9873:	
;key.c: 344: {
;key.c: 345: menu_index_q=0x07;
	movlw	(07h)
	movwf	(_menu_index_q)
	line	347
	
l9875:	
;key.c: 347: canshu_3_weizhi=0x00;
	movlb 0	; select bank0
	clrf	(_canshu_3_weizhi)
	line	348
;key.c: 348: }
	goto	l10033
	line	349
	
l9877:	
;key.c: 349: else if(menu_index_q==0x07)
	movf	(_menu_index_q),w
	xorlw	07h&0ffh
	skipz
	goto	u7081
	goto	u7080
u7081:
	goto	l10033
u7080:
	line	351
	
l9879:	
;key.c: 350: {
;key.c: 351: canshu_3_weizhi++;
	incf	(_canshu_3_weizhi),f
	line	353
	
l9881:	
;key.c: 353: if(load_percent>=10)
	movf	(_load_percent),w
	movwf	(___ftge@ff1)
	movf	(_load_percent+1),w
	movwf	(___ftge@ff1+1)
	movf	(_load_percent+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7091
	goto	u7090
u7091:
	goto	l9875
u7090:
	line	355
	
l9883:	
;key.c: 354: {
;key.c: 355: canshu_3_weizhi=canshu_3_weizhi%2;
	movlw	(01h)
	movlb 0	; select bank0
	andwf	(_canshu_3_weizhi),f
	line	356
;key.c: 356: }
	goto	l10033
	line	367
	
l9887:	
;key.c: 367: if(menu_index_q==0x03)
	movf	(_menu_index_q),w
	xorlw	03h&0ffh
	skipz
	goto	u7101
	goto	u7100
u7101:
	goto	l9911
u7100:
	goto	l9909
	line	373
	
l9891:	
;key.c: 373: if(light_pv<=9998)
	movlw	0x38
	movwf	(___ftge@ff1)
	movlw	0x1c
	movwf	(___ftge@ff1+1)
	movlw	0x46
	movwf	(___ftge@ff1+2)
	movf	(_light_pv),w
	movwf	(___ftge@ff2)
	movf	(_light_pv+1),w
	movwf	(___ftge@ff2+1)
	movf	(_light_pv+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7111
	goto	u7110
u7111:
	goto	l827
u7110:
	line	375
	
l9893:	
;key.c: 374: {
;key.c: 375: light_pv = light_pv + 1 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	movf	(_light_pv),w
	movwf	(___ftadd@f2)
	movf	(_light_pv+1),w
	movwf	(___ftadd@f2+1)
	movf	(_light_pv+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_light_pv)
	movf	(1+(?___ftadd)),w
	movwf	(_light_pv+1)
	movf	(2+(?___ftadd)),w
	movwf	(_light_pv+2)
	goto	l10033
	line	379
	
l9895:	
;key.c: 379: if(light_pv<=9989)
	movlw	0x14
	movwf	(___ftge@ff1)
	movlw	0x1c
	movwf	(___ftge@ff1+1)
	movlw	0x46
	movwf	(___ftge@ff1+2)
	movf	(_light_pv),w
	movwf	(___ftge@ff2)
	movf	(_light_pv+1),w
	movwf	(___ftge@ff2+1)
	movf	(_light_pv+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7121
	goto	u7120
u7121:
	goto	l827
u7120:
	line	381
	
l9897:	
;key.c: 380: {
;key.c: 381: light_pv = light_pv + 10 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x20
	movwf	(___ftadd@f1+1)
	movlw	0x41
	movwf	(___ftadd@f1+2)
	movf	(_light_pv),w
	movwf	(___ftadd@f2)
	movf	(_light_pv+1),w
	movwf	(___ftadd@f2+1)
	movf	(_light_pv+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_light_pv)
	movf	(1+(?___ftadd)),w
	movwf	(_light_pv+1)
	movf	(2+(?___ftadd)),w
	movwf	(_light_pv+2)
	goto	l10033
	line	385
	
l9899:	
;key.c: 385: if(light_pv<=9899)
	movlw	0xac
	movwf	(___ftge@ff1)
	movlw	0x1a
	movwf	(___ftge@ff1+1)
	movlw	0x46
	movwf	(___ftge@ff1+2)
	movf	(_light_pv),w
	movwf	(___ftge@ff2)
	movf	(_light_pv+1),w
	movwf	(___ftge@ff2+1)
	movf	(_light_pv+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7131
	goto	u7130
u7131:
	goto	l827
u7130:
	line	387
	
l9901:	
;key.c: 386: {
;key.c: 387: light_pv = light_pv + 100 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0x42
	movwf	(___ftadd@f1+2)
	movf	(_light_pv),w
	movwf	(___ftadd@f2)
	movf	(_light_pv+1),w
	movwf	(___ftadd@f2+1)
	movf	(_light_pv+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_light_pv)
	movf	(1+(?___ftadd)),w
	movwf	(_light_pv+1)
	movf	(2+(?___ftadd)),w
	movwf	(_light_pv+2)
	goto	l10033
	line	391
	
l9903:	
;key.c: 391: if(light_pv<=8999)
	movlw	0x9c
	movwf	(___ftge@ff1)
	movlw	0xc
	movwf	(___ftge@ff1+1)
	movlw	0x46
	movwf	(___ftge@ff1+2)
	movf	(_light_pv),w
	movwf	(___ftge@ff2)
	movf	(_light_pv+1),w
	movwf	(___ftge@ff2+1)
	movf	(_light_pv+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7141
	goto	u7140
u7141:
	goto	l827
u7140:
	line	393
	
l9905:	
;key.c: 392: {
;key.c: 393: light_pv = light_pv + 1000;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x7a
	movwf	(___ftadd@f1+1)
	movlw	0x44
	movwf	(___ftadd@f1+2)
	movf	(_light_pv),w
	movwf	(___ftadd@f2)
	movf	(_light_pv+1),w
	movwf	(___ftadd@f2+1)
	movf	(_light_pv+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_light_pv)
	movf	(1+(?___ftadd)),w
	movwf	(_light_pv+1)
	movf	(2+(?___ftadd)),w
	movwf	(_light_pv+2)
	goto	l10033
	line	370
	
l9909:	
	movf	(_canshu_1_weizhi),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           14     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9891
	xorlw	1^0	; case 1
	skipnz
	goto	l9895
	xorlw	2^1	; case 2
	skipnz
	goto	l9899
	xorlw	3^2	; case 3
	skipnz
	goto	l9903
	goto	l827
	opt asmopt_on

	line	400
	
l9911:	
;key.c: 400: else if(menu_index_q==0x05)
	movf	(_menu_index_q),w
	xorlw	05h&0ffh
	skipz
	goto	u7151
	goto	u7150
u7151:
	goto	l9935
u7150:
	goto	l9933
	line	406
	
l9915:	
;key.c: 406: if(load_cc_I<=9998)
	movlw	0x38
	movwf	(___ftge@ff1)
	movlw	0x1c
	movwf	(___ftge@ff1+1)
	movlw	0x46
	movwf	(___ftge@ff1+2)
	movf	(_load_cc_I),w
	movwf	(___ftge@ff2)
	movf	(_load_cc_I+1),w
	movwf	(___ftge@ff2+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7161
	goto	u7160
u7161:
	goto	l827
u7160:
	line	408
	
l9917:	
;key.c: 407: {
;key.c: 408: load_cc_I = load_cc_I + 1 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	movf	(_load_cc_I),w
	movwf	(___ftadd@f2)
	movf	(_load_cc_I+1),w
	movwf	(___ftadd@f2+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_load_cc_I)
	movf	(1+(?___ftadd)),w
	movwf	(_load_cc_I+1)
	movf	(2+(?___ftadd)),w
	movwf	(_load_cc_I+2)
	goto	l10033
	line	412
	
l9919:	
;key.c: 412: if(load_cc_I<=9989)
	movlw	0x14
	movwf	(___ftge@ff1)
	movlw	0x1c
	movwf	(___ftge@ff1+1)
	movlw	0x46
	movwf	(___ftge@ff1+2)
	movf	(_load_cc_I),w
	movwf	(___ftge@ff2)
	movf	(_load_cc_I+1),w
	movwf	(___ftge@ff2+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7171
	goto	u7170
u7171:
	goto	l827
u7170:
	line	414
	
l9921:	
;key.c: 413: {
;key.c: 414: load_cc_I = load_cc_I + 10 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x20
	movwf	(___ftadd@f1+1)
	movlw	0x41
	movwf	(___ftadd@f1+2)
	movf	(_load_cc_I),w
	movwf	(___ftadd@f2)
	movf	(_load_cc_I+1),w
	movwf	(___ftadd@f2+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_load_cc_I)
	movf	(1+(?___ftadd)),w
	movwf	(_load_cc_I+1)
	movf	(2+(?___ftadd)),w
	movwf	(_load_cc_I+2)
	goto	l10033
	line	418
	
l9923:	
;key.c: 418: if(load_cc_I<=9899)
	movlw	0xac
	movwf	(___ftge@ff1)
	movlw	0x1a
	movwf	(___ftge@ff1+1)
	movlw	0x46
	movwf	(___ftge@ff1+2)
	movf	(_load_cc_I),w
	movwf	(___ftge@ff2)
	movf	(_load_cc_I+1),w
	movwf	(___ftge@ff2+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7181
	goto	u7180
u7181:
	goto	l827
u7180:
	line	420
	
l9925:	
;key.c: 419: {
;key.c: 420: load_cc_I = load_cc_I + 100 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0x42
	movwf	(___ftadd@f1+2)
	movf	(_load_cc_I),w
	movwf	(___ftadd@f2)
	movf	(_load_cc_I+1),w
	movwf	(___ftadd@f2+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_load_cc_I)
	movf	(1+(?___ftadd)),w
	movwf	(_load_cc_I+1)
	movf	(2+(?___ftadd)),w
	movwf	(_load_cc_I+2)
	goto	l10033
	line	424
	
l9927:	
;key.c: 424: if(load_cc_I<=8999)
	movlw	0x9c
	movwf	(___ftge@ff1)
	movlw	0xc
	movwf	(___ftge@ff1+1)
	movlw	0x46
	movwf	(___ftge@ff1+2)
	movf	(_load_cc_I),w
	movwf	(___ftge@ff2)
	movf	(_load_cc_I+1),w
	movwf	(___ftge@ff2+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7191
	goto	u7190
u7191:
	goto	l827
u7190:
	line	426
	
l9929:	
;key.c: 425: {
;key.c: 426: load_cc_I = load_cc_I + 1000;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x7a
	movwf	(___ftadd@f1+1)
	movlw	0x44
	movwf	(___ftadd@f1+2)
	movf	(_load_cc_I),w
	movwf	(___ftadd@f2)
	movf	(_load_cc_I+1),w
	movwf	(___ftadd@f2+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_load_cc_I)
	movf	(1+(?___ftadd)),w
	movwf	(_load_cc_I+1)
	movf	(2+(?___ftadd)),w
	movwf	(_load_cc_I+2)
	goto	l10033
	line	403
	
l9933:	
	movf	(_canshu_2_weizhi),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           14     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9915
	xorlw	1^0	; case 1
	skipnz
	goto	l9919
	xorlw	2^1	; case 2
	skipnz
	goto	l9923
	xorlw	3^2	; case 3
	skipnz
	goto	l9927
	goto	l827
	opt asmopt_on

	line	433
	
l9935:	
;key.c: 433: else if(menu_index_q==0x07)
	movf	(_menu_index_q),w
	xorlw	07h&0ffh
	skipz
	goto	u7201
	goto	u7200
u7201:
	goto	l827
u7200:
	goto	l9949
	line	439
	
l9939:	
;key.c: 439: if(load_percent<=99)
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0xc6
	movwf	(___ftge@ff1+1)
	movlw	0x42
	movwf	(___ftge@ff1+2)
	movf	(_load_percent),w
	movwf	(___ftge@ff2)
	movf	(_load_percent+1),w
	movwf	(___ftge@ff2+1)
	movf	(_load_percent+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7211
	goto	u7210
u7211:
	goto	l827
u7210:
	line	441
	
l9941:	
;key.c: 440: {
;key.c: 441: load_percent = load_percent + 1 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	movf	(_load_percent),w
	movwf	(___ftadd@f2)
	movf	(_load_percent+1),w
	movwf	(___ftadd@f2+1)
	movf	(_load_percent+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_load_percent)
	movf	(1+(?___ftadd)),w
	movwf	(_load_percent+1)
	movf	(2+(?___ftadd)),w
	movwf	(_load_percent+2)
	goto	l10033
	line	445
	
l9943:	
;key.c: 445: if(load_percent<=89)
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0xb2
	movwf	(___ftge@ff1+1)
	movlw	0x42
	movwf	(___ftge@ff1+2)
	movf	(_load_percent),w
	movwf	(___ftge@ff2)
	movf	(_load_percent+1),w
	movwf	(___ftge@ff2+1)
	movf	(_load_percent+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7221
	goto	u7220
u7221:
	goto	l827
u7220:
	line	447
	
l9945:	
;key.c: 446: {
;key.c: 447: load_percent = load_percent + 10 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x20
	movwf	(___ftadd@f1+1)
	movlw	0x41
	movwf	(___ftadd@f1+2)
	movf	(_load_percent),w
	movwf	(___ftadd@f2)
	movf	(_load_percent+1),w
	movwf	(___ftadd@f2+1)
	movf	(_load_percent+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_load_percent)
	movf	(1+(?___ftadd)),w
	movwf	(_load_percent+1)
	movf	(2+(?___ftadd)),w
	movwf	(_load_percent+2)
	goto	l10033
	line	436
	
l9949:	
	movf	(_canshu_3_weizhi),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           10     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9939
	xorlw	1^0	; case 1
	skipnz
	goto	l9943
	goto	l827
	opt asmopt_on

	line	459
	
l9951:	
;key.c: 459: if(menu_index_q==0x03)
	movf	(_menu_index_q),w
	xorlw	03h&0ffh
	skipz
	goto	u7231
	goto	u7230
u7231:
	goto	l9981
u7230:
	goto	l9979
	line	465
	
l9955:	
;key.c: 465: if(light_pv>=1)
	movf	(_light_pv),w
	movwf	(___ftge@ff1)
	movf	(_light_pv+1),w
	movwf	(___ftge@ff1+1)
	movf	(_light_pv+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x80
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7241
	goto	u7240
u7241:
	goto	l10033
u7240:
	line	467
	
l9957:	
;key.c: 466: {
;key.c: 467: light_pv = light_pv - 1 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movf	(_light_pv),w
	movwf	(___ftadd@f2)
	movf	(_light_pv+1),w
	movwf	(___ftadd@f2+1)
	movf	(_light_pv+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_light_pv)
	movf	(1+(?___ftadd)),w
	movwf	(_light_pv+1)
	movf	(2+(?___ftadd)),w
	movwf	(_light_pv+2)
	goto	l10033
	line	471
	
l9959:	
;key.c: 471: if(light_pv>=10)
	movf	(_light_pv),w
	movwf	(___ftge@ff1)
	movf	(_light_pv+1),w
	movwf	(___ftge@ff1+1)
	movf	(_light_pv+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7251
	goto	u7250
u7251:
	goto	l827
u7250:
	line	473
	
l9961:	
;key.c: 472: {
;key.c: 473: light_pv = light_pv - 10 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x20
	movwf	(___ftadd@f1+1)
	movlw	0xc1
	movwf	(___ftadd@f1+2)
	movf	(_light_pv),w
	movwf	(___ftadd@f2)
	movf	(_light_pv+1),w
	movwf	(___ftadd@f2+1)
	movf	(_light_pv+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_light_pv)
	movf	(1+(?___ftadd)),w
	movwf	(_light_pv+1)
	movf	(2+(?___ftadd)),w
	movwf	(_light_pv+2)
	line	475
;key.c: 475: if(light_pv<10)
	movf	(_light_pv),w
	movwf	(___ftge@ff1)
	movf	(_light_pv+1),w
	movwf	(___ftge@ff1+1)
	movf	(_light_pv+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u7261
	goto	u7260
u7261:
	goto	l827
u7260:
	goto	l9843
	line	482
	
l9965:	
;key.c: 482: if(light_pv>=100)
	movf	(_light_pv),w
	movwf	(___ftge@ff1)
	movf	(_light_pv+1),w
	movwf	(___ftge@ff1+1)
	movf	(_light_pv+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xc8
	movwf	(___ftge@ff2+1)
	movlw	0x42
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7271
	goto	u7270
u7271:
	goto	l827
u7270:
	line	484
	
l9967:	
;key.c: 483: {
;key.c: 484: light_pv = light_pv - 100 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0xc2
	movwf	(___ftadd@f1+2)
	movf	(_light_pv),w
	movwf	(___ftadd@f2)
	movf	(_light_pv+1),w
	movwf	(___ftadd@f2+1)
	movf	(_light_pv+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_light_pv)
	movf	(1+(?___ftadd)),w
	movwf	(_light_pv+1)
	movf	(2+(?___ftadd)),w
	movwf	(_light_pv+2)
	line	486
;key.c: 486: if(light_pv<100)
	movf	(_light_pv),w
	movwf	(___ftge@ff1)
	movf	(_light_pv+1),w
	movwf	(___ftge@ff1+1)
	movf	(_light_pv+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xc8
	movwf	(___ftge@ff2+1)
	movlw	0x42
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u7281
	goto	u7280
u7281:
	goto	l827
u7280:
	line	488
	
l9969:	
;key.c: 487: {
;key.c: 488: canshu_1_weizhi=0x01;
	movlb 0	; select bank0
	clrf	(_canshu_1_weizhi)
	incf	(_canshu_1_weizhi),f
	goto	l10033
	line	493
	
l9971:	
;key.c: 493: if(light_pv>=1000)
	movf	(_light_pv),w
	movwf	(___ftge@ff1)
	movf	(_light_pv+1),w
	movwf	(___ftge@ff1+1)
	movf	(_light_pv+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x7a
	movwf	(___ftge@ff2+1)
	movlw	0x44
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7291
	goto	u7290
u7291:
	goto	l827
u7290:
	line	495
	
l9973:	
;key.c: 494: {
;key.c: 495: light_pv = light_pv - 1000;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x7a
	movwf	(___ftadd@f1+1)
	movlw	0xc4
	movwf	(___ftadd@f1+2)
	movf	(_light_pv),w
	movwf	(___ftadd@f2)
	movf	(_light_pv+1),w
	movwf	(___ftadd@f2+1)
	movf	(_light_pv+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_light_pv)
	movf	(1+(?___ftadd)),w
	movwf	(_light_pv+1)
	movf	(2+(?___ftadd)),w
	movwf	(_light_pv+2)
	line	497
;key.c: 497: if(light_pv<1000)
	movf	(_light_pv),w
	movwf	(___ftge@ff1)
	movf	(_light_pv+1),w
	movwf	(___ftge@ff1+1)
	movf	(_light_pv+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x7a
	movwf	(___ftge@ff2+1)
	movlw	0x44
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u7301
	goto	u7300
u7301:
	goto	l827
u7300:
	line	499
	
l9975:	
;key.c: 498: {
;key.c: 499: canshu_1_weizhi=0x02;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(_canshu_1_weizhi)
	goto	l10033
	line	462
	
l9979:	
	movf	(_canshu_1_weizhi),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           14     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9955
	xorlw	1^0	; case 1
	skipnz
	goto	l9959
	xorlw	2^1	; case 2
	skipnz
	goto	l9965
	xorlw	3^2	; case 3
	skipnz
	goto	l9971
	goto	l827
	opt asmopt_on

	line	507
	
l9981:	
;key.c: 507: else if(menu_index_q==0x05)
	movf	(_menu_index_q),w
	xorlw	05h&0ffh
	skipz
	goto	u7311
	goto	u7310
u7311:
	goto	l10011
u7310:
	goto	l10009
	line	513
	
l9985:	
;key.c: 513: if(load_cc_I>=1)
	movf	(_load_cc_I),w
	movwf	(___ftge@ff1)
	movf	(_load_cc_I+1),w
	movwf	(___ftge@ff1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x80
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7321
	goto	u7320
u7321:
	goto	l10033
u7320:
	line	515
	
l9987:	
;key.c: 514: {
;key.c: 515: load_cc_I = load_cc_I - 1 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movf	(_load_cc_I),w
	movwf	(___ftadd@f2)
	movf	(_load_cc_I+1),w
	movwf	(___ftadd@f2+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_load_cc_I)
	movf	(1+(?___ftadd)),w
	movwf	(_load_cc_I+1)
	movf	(2+(?___ftadd)),w
	movwf	(_load_cc_I+2)
	goto	l10033
	line	519
	
l9989:	
;key.c: 519: if(load_cc_I>=10)
	movf	(_load_cc_I),w
	movwf	(___ftge@ff1)
	movf	(_load_cc_I+1),w
	movwf	(___ftge@ff1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7331
	goto	u7330
u7331:
	goto	l827
u7330:
	line	521
	
l9991:	
;key.c: 520: {
;key.c: 521: load_cc_I = load_cc_I - 10 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x20
	movwf	(___ftadd@f1+1)
	movlw	0xc1
	movwf	(___ftadd@f1+2)
	movf	(_load_cc_I),w
	movwf	(___ftadd@f2)
	movf	(_load_cc_I+1),w
	movwf	(___ftadd@f2+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_load_cc_I)
	movf	(1+(?___ftadd)),w
	movwf	(_load_cc_I+1)
	movf	(2+(?___ftadd)),w
	movwf	(_load_cc_I+2)
	line	523
;key.c: 523: if(load_cc_I<10)
	movf	(_load_cc_I),w
	movwf	(___ftge@ff1)
	movf	(_load_cc_I+1),w
	movwf	(___ftge@ff1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u7341
	goto	u7340
u7341:
	goto	l827
u7340:
	goto	l9859
	line	530
	
l9995:	
;key.c: 530: if(load_cc_I>=100)
	movf	(_load_cc_I),w
	movwf	(___ftge@ff1)
	movf	(_load_cc_I+1),w
	movwf	(___ftge@ff1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xc8
	movwf	(___ftge@ff2+1)
	movlw	0x42
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7351
	goto	u7350
u7351:
	goto	l827
u7350:
	line	532
	
l9997:	
;key.c: 531: {
;key.c: 532: load_cc_I = load_cc_I - 100 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0xc2
	movwf	(___ftadd@f1+2)
	movf	(_load_cc_I),w
	movwf	(___ftadd@f2)
	movf	(_load_cc_I+1),w
	movwf	(___ftadd@f2+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_load_cc_I)
	movf	(1+(?___ftadd)),w
	movwf	(_load_cc_I+1)
	movf	(2+(?___ftadd)),w
	movwf	(_load_cc_I+2)
	line	534
;key.c: 534: if(load_cc_I<100)
	movf	(_load_cc_I),w
	movwf	(___ftge@ff1)
	movf	(_load_cc_I+1),w
	movwf	(___ftge@ff1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xc8
	movwf	(___ftge@ff2+1)
	movlw	0x42
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u7361
	goto	u7360
u7361:
	goto	l827
u7360:
	line	536
	
l9999:	
;key.c: 535: {
;key.c: 536: canshu_2_weizhi=0x01;
	movlb 0	; select bank0
	clrf	(_canshu_2_weizhi)
	incf	(_canshu_2_weizhi),f
	goto	l10033
	line	541
	
l10001:	
;key.c: 541: if(load_cc_I>=1000)
	movf	(_load_cc_I),w
	movwf	(___ftge@ff1)
	movf	(_load_cc_I+1),w
	movwf	(___ftge@ff1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x7a
	movwf	(___ftge@ff2+1)
	movlw	0x44
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7371
	goto	u7370
u7371:
	goto	l827
u7370:
	line	543
	
l10003:	
;key.c: 542: {
;key.c: 543: load_cc_I = load_cc_I - 1000;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x7a
	movwf	(___ftadd@f1+1)
	movlw	0xc4
	movwf	(___ftadd@f1+2)
	movf	(_load_cc_I),w
	movwf	(___ftadd@f2)
	movf	(_load_cc_I+1),w
	movwf	(___ftadd@f2+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_load_cc_I)
	movf	(1+(?___ftadd)),w
	movwf	(_load_cc_I+1)
	movf	(2+(?___ftadd)),w
	movwf	(_load_cc_I+2)
	line	545
;key.c: 545: if(load_cc_I<1000)
	movf	(_load_cc_I),w
	movwf	(___ftge@ff1)
	movf	(_load_cc_I+1),w
	movwf	(___ftge@ff1+1)
	movf	(_load_cc_I+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x7a
	movwf	(___ftge@ff2+1)
	movlw	0x44
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u7381
	goto	u7380
u7381:
	goto	l827
u7380:
	line	547
	
l10005:	
;key.c: 546: {
;key.c: 547: canshu_2_weizhi=0x02;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(_canshu_2_weizhi)
	goto	l10033
	line	510
	
l10009:	
	movf	(_canshu_2_weizhi),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           14     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9985
	xorlw	1^0	; case 1
	skipnz
	goto	l9989
	xorlw	2^1	; case 2
	skipnz
	goto	l9995
	xorlw	3^2	; case 3
	skipnz
	goto	l10001
	goto	l827
	opt asmopt_on

	line	555
	
l10011:	
;key.c: 555: else if(menu_index_q==0x07)
	movf	(_menu_index_q),w
	xorlw	07h&0ffh
	skipz
	goto	u7391
	goto	u7390
u7391:
	goto	l827
u7390:
	goto	l10027
	line	561
	
l10015:	
;key.c: 561: if(load_percent>=1)
	movf	(_load_percent),w
	movwf	(___ftge@ff1)
	movf	(_load_percent+1),w
	movwf	(___ftge@ff1+1)
	movf	(_load_percent+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x80
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7401
	goto	u7400
u7401:
	goto	l10033
u7400:
	line	563
	
l10017:	
;key.c: 562: {
;key.c: 563: load_percent = load_percent - 1 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movf	(_load_percent),w
	movwf	(___ftadd@f2)
	movf	(_load_percent+1),w
	movwf	(___ftadd@f2+1)
	movf	(_load_percent+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_load_percent)
	movf	(1+(?___ftadd)),w
	movwf	(_load_percent+1)
	movf	(2+(?___ftadd)),w
	movwf	(_load_percent+2)
	goto	l10033
	line	567
	
l10019:	
;key.c: 567: if(load_percent>=10)
	movf	(_load_percent),w
	movwf	(___ftge@ff1)
	movf	(_load_percent+1),w
	movwf	(___ftge@ff1+1)
	movf	(_load_percent+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u7411
	goto	u7410
u7411:
	goto	l827
u7410:
	line	569
	
l10021:	
;key.c: 568: {
;key.c: 569: load_percent = load_percent - 10 ;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x20
	movwf	(___ftadd@f1+1)
	movlw	0xc1
	movwf	(___ftadd@f1+2)
	movf	(_load_percent),w
	movwf	(___ftadd@f2)
	movf	(_load_percent+1),w
	movwf	(___ftadd@f2+1)
	movf	(_load_percent+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(_load_percent)
	movf	(1+(?___ftadd)),w
	movwf	(_load_percent+1)
	movf	(2+(?___ftadd)),w
	movwf	(_load_percent+2)
	line	571
;key.c: 571: if(load_percent<10)
	movf	(_load_percent),w
	movwf	(___ftge@ff1)
	movf	(_load_percent+1),w
	movwf	(___ftge@ff1+1)
	movf	(_load_percent+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u7421
	goto	u7420
u7421:
	goto	l827
u7420:
	goto	l9875
	line	558
	
l10027:	
	movf	(_canshu_3_weizhi),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           10     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l10015
	xorlw	1^0	; case 1
	skipnz
	goto	l10019
	goto	l827
	opt asmopt_on

	line	164
	
l10031:	
	movlb 0	; select bank0
	movf	(_KEY_VALUE),w
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 1 to 10
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           29     9 (fixed)
; simple_byte           31    16 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-1
	skipc
goto l827
	movwf fsr0l
	movlw	10
	subwf	fsr0l,w
skipnc
goto l827
movlp high(S11533)
	lslf fsr0l,w
	addlw low(S11533)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S11533:
	ljmp	l9839
	ljmp	l9887
	ljmp	l9951
	ljmp	l825
	ljmp	l9813
	ljmp	l9751
	ljmp	l9741
	ljmp	l823
	ljmp	l9743
	ljmp	l9743
psect	text17

	line	594
	
l10033:	
;key.c: 591: }
;key.c: 594: KEY_VALUE=KNOP;
	movlw	(010h)
	movlb 0	; select bank0
	movwf	(_KEY_VALUE)
	line	596
	
l10035:	
;key.c: 596: system_power_on_time_count=0x00;
	movlb 1	; select bank1
	clrf	(_system_power_on_time_count)^080h
	clrf	(_system_power_on_time_count+1)^080h
	line	598
	
l10037:	
;key.c: 598: BEEP_SPEAK();
	fcall	_BEEP_SPEAK
	line	605
	
l10039:	
;key.c: 600: }
;key.c: 602: }
;key.c: 605: if(menu_index_q==0x03)
	movlb 0	; select bank0
	movf	(_menu_index_q),w
	xorlw	03h&0ffh
	skipz
	goto	u7431
	goto	u7430
u7431:
	goto	l10057
u7430:
	line	607
	
l10041:	
;key.c: 606: {
;key.c: 607: if((KEY_VALUE ==K1)&&(KEY_STATE == KEY_DOWN))
	decf	(_KEY_VALUE),w
	skipz
	goto	u7441
	goto	u7440
u7441:
	goto	l10055
u7440:
	
l10043:	
	decf	(_KEY_STATE),w
	skipz
	goto	u7451
	goto	u7450
u7451:
	goto	l10055
u7450:
	line	609
	
l10045:	
;key.c: 608: {
;key.c: 609: if(key3_time_count<30)
	movlw	(01Eh)
	movlb 1	; select bank1
	subwf	(_key3_time_count)^080h,w
	skipnc
	goto	u7461
	goto	u7460
u7461:
	goto	l10049
u7460:
	line	611
	
l10047:	
;key.c: 610: {
;key.c: 611: key3_time_count++;
	incf	(_key3_time_count)^080h,f
	line	613
;key.c: 613: }
	goto	l942
	line	616
	
l10049:	
;key.c: 614: else
;key.c: 615: {
;key.c: 616: key3_time_count=0x00;
	clrf	(_key3_time_count)^080h
	line	618
;key.c: 618: canshu_1_weizhi=0x00;
	movlb 0	; select bank0
	clrf	(_canshu_1_weizhi)
	line	620
	
l10051:	
;key.c: 620: menu_index_q=0x04;
	movlw	(04h)
	movwf	(_menu_index_q)
	line	622
	
l10053:	
;key.c: 622: BEEP_SPEAK();
	fcall	_BEEP_SPEAK
	goto	l942
	line	627
	
l10055:	
;key.c: 625: else
;key.c: 626: {
;key.c: 627: key3_time_count=0x00;
	movlb 1	; select bank1
	clrf	(_key3_time_count)^080h
	goto	l942
	line	632
	
l10057:	
;key.c: 632: else if(menu_index_q==0x05)
	movf	(_menu_index_q),w
	xorlw	05h&0ffh
	skipz
	goto	u7471
	goto	u7470
u7471:
	goto	l10075
u7470:
	line	634
	
l10059:	
;key.c: 633: {
;key.c: 634: if((KEY_VALUE ==K1)&&(KEY_STATE == KEY_DOWN))
	decf	(_KEY_VALUE),w
	skipz
	goto	u7481
	goto	u7480
u7481:
	goto	l10055
u7480:
	
l10061:	
	decf	(_KEY_STATE),w
	skipz
	goto	u7491
	goto	u7490
u7491:
	goto	l10055
u7490:
	line	636
	
l10063:	
;key.c: 635: {
;key.c: 636: if(key3_time_count<30)
	movlw	(01Eh)
	movlb 1	; select bank1
	subwf	(_key3_time_count)^080h,w
	skipnc
	goto	u7501
	goto	u7500
u7501:
	goto	l10067
u7500:
	goto	l10047
	line	643
	
l10067:	
;key.c: 641: else
;key.c: 642: {
;key.c: 643: key3_time_count=0x00;
	clrf	(_key3_time_count)^080h
	line	645
;key.c: 645: canshu_2_weizhi=0x00;
	movlb 0	; select bank0
	clrf	(_canshu_2_weizhi)
	line	647
	
l10069:	
;key.c: 647: menu_index_q=0x06;
	movlw	(06h)
	movwf	(_menu_index_q)
	goto	l10053
	line	659
	
l10075:	
;key.c: 659: else if(menu_index_q==0x07)
	movf	(_menu_index_q),w
	xorlw	07h&0ffh
	skipz
	goto	u7511
	goto	u7510
u7511:
	goto	l942
u7510:
	line	661
	
l10077:	
;key.c: 660: {
;key.c: 661: if((KEY_VALUE ==K1)&&(KEY_STATE == KEY_DOWN))
	decf	(_KEY_VALUE),w
	skipz
	goto	u7521
	goto	u7520
u7521:
	goto	l10055
u7520:
	
l10079:	
	decf	(_KEY_STATE),w
	skipz
	goto	u7531
	goto	u7530
u7531:
	goto	l10055
u7530:
	line	663
	
l10081:	
;key.c: 662: {
;key.c: 663: if(key3_time_count<30)
	movlw	(01Eh)
	movlb 1	; select bank1
	subwf	(_key3_time_count)^080h,w
	skipnc
	goto	u7541
	goto	u7540
u7541:
	goto	l10085
u7540:
	goto	l10047
	line	670
	
l10085:	
;key.c: 668: else
;key.c: 669: {
;key.c: 670: key3_time_count=0x00;
	clrf	(_key3_time_count)^080h
	line	672
;key.c: 672: canshu_3_weizhi=0x00;
	movlb 0	; select bank0
	clrf	(_canshu_3_weizhi)
	line	674
	
l10087:	
;key.c: 674: menu_index_q=0x02;
	movlw	(02h)
	movwf	(_menu_index_q)
	goto	l10053
	line	687
	
l942:	
	return
	opt stack 0
GLOBAL	__end_of_scan_key_value
	__end_of_scan_key_value:
	signat	_scan_key_value,88
	global	_uart1_send_nbyte

;; *************** function _uart1_send_nbyte *****************
;; Defined at:
;;		line 145 in file "D:\MCUProject\YCQ\src\uart.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     PTR unsigned char 
;;		 -> uart1_tx_buf(25), 
;;  size            4    2[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  data            1   10[COMMON] PTR unsigned char 
;;		 -> uart1_tx_buf(25), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1C/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart1_send_byte
;; This function is called by:
;;		_main
;;		_scan_key_value
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\uart.c"
	line	145
global __ptext18
__ptext18:	;psect for function _uart1_send_nbyte
psect	text18
	file	"D:\MCUProject\YCQ\src\uart.c"
	line	145
	global	__size_of_uart1_send_nbyte
	__size_of_uart1_send_nbyte	equ	__end_of_uart1_send_nbyte-_uart1_send_nbyte
	
_uart1_send_nbyte:	
;incstack = 0
	opt	stack 13
; Regs used in _uart1_send_nbyte: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;uart1_send_nbyte@data stored from wreg
	movwf	(uart1_send_nbyte@data)
	line	147
	
l7535:	
;uart.c: 147: while (size)
	goto	l7543
	line	149
	
l7537:	
;uart.c: 148: {
;uart.c: 149: uart1_send_byte(*data);
	movf	(uart1_send_nbyte@data),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_uart1_send_byte
	line	150
	
l7539:	
;uart.c: 150: data++;
	incf	(uart1_send_nbyte@data),f
	line	151
	
l7541:	
;uart.c: 151: size--;
	movlw	01h
	movwf	((??_uart1_send_nbyte+0)+0)
	movlw	0
	movwf	((??_uart1_send_nbyte+0)+0+1)
	movlw	0
	movwf	((??_uart1_send_nbyte+0)+0+2)
	movlw	0
	movwf	((??_uart1_send_nbyte+0)+0+3)
	movf	0+(??_uart1_send_nbyte+0)+0,w
	subwf	(uart1_send_nbyte@size),f
	movf	1+(??_uart1_send_nbyte+0)+0,w
	subwfb	(uart1_send_nbyte@size+1),f
	movf	2+(??_uart1_send_nbyte+0)+0,w
	subwfb	(uart1_send_nbyte@size+2),f
	movf	3+(??_uart1_send_nbyte+0)+0,w
	subwfb	(uart1_send_nbyte@size+3),f
	line	147
	
l7543:	
	movf	(uart1_send_nbyte@size+3),w
	iorwf	(uart1_send_nbyte@size+2),w
	iorwf	(uart1_send_nbyte@size+1),w
	iorwf	(uart1_send_nbyte@size),w
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l7537
u4200:
	line	153
	
l455:	
	return
	opt stack 0
GLOBAL	__end_of_uart1_send_nbyte
	__end_of_uart1_send_nbyte:
	signat	_uart1_send_nbyte,8312
	global	_uart1_send_byte

;; *************** function _uart1_send_byte *****************
;; Defined at:
;;		line 115 in file "D:\MCUProject\YCQ\src\uart.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1C/2
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uart1_send_nbyte
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	115
global __ptext19
__ptext19:	;psect for function _uart1_send_byte
psect	text19
	file	"D:\MCUProject\YCQ\src\uart.c"
	line	115
	global	__size_of_uart1_send_byte
	__size_of_uart1_send_byte	equ	__end_of_uart1_send_byte-_uart1_send_byte
	
_uart1_send_byte:	
;incstack = 0
	opt	stack 13
; Regs used in _uart1_send_byte: [wreg+status,2+status,0]
;uart1_send_byte@data stored from wreg
	movwf	(uart1_send_byte@data)
	line	117
	
l8097:	
;uart.c: 117: while (!TXSTAbits.TRMT);
	
l443:	
	movlb 3	; select bank3
	btfss	(414)^0180h,1	;volatile
	goto	u5241
	goto	u5240
u5241:
	goto	l443
u5240:
	line	120
	
l8099:	
;uart.c: 120: CCPR5L=(unsigned char)(0x114>>2);
	movlw	(045h)
	movlb 6	; select bank6
	movwf	(796)^0300h	;volatile
	line	121
	
l8101:	
;uart.c: 121: CCP5CONbits.DC5B=(unsigned char)(0x114&0b11);
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(798)^0300h,f	;volatile
	line	122
	
l8103:	
;uart.c: 122: TMR2ON=1;
	movlb 0	; select bank0
	bsf	(226/8),(226)&7	;volatile
	line	123
	
l8105:	
;uart.c: 123: TRISAbits.TRISA4=0;
	movlb 1	; select bank1
	bcf	(140)^080h,4	;volatile
	line	126
	
l8107:	
;uart.c: 126: TXREG = data;
	movf	(uart1_send_byte@data),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	128
;uart.c: 128: while (!TXSTAbits.TRMT);
	
l446:	
	btfss	(414)^0180h,1	;volatile
	goto	u5251
	goto	u5250
u5251:
	goto	l446
u5250:
	line	131
	
l8109:	
;uart.c: 131: CCPR5L=(unsigned char)(0x00>>2);
	movlb 6	; select bank6
	clrf	(796)^0300h	;volatile
	line	132
	
l8111:	
;uart.c: 132: CCP5CONbits.DC5B=(unsigned char)(0x00&0b11);
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(798)^0300h,f	;volatile
	line	133
	
l8113:	
;uart.c: 133: TMR2ON=0;
	movlb 0	; select bank0
	bcf	(226/8),(226)&7	;volatile
	line	134
	
l8115:	
;uart.c: 134: TRISAbits.TRISA4=1;
	movlb 1	; select bank1
	bsf	(140)^080h,4	;volatile
	line	136
	
l449:	
	return
	opt stack 0
GLOBAL	__end_of_uart1_send_byte
	__end_of_uart1_send_byte:
	signat	_uart1_send_byte,4216
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   33[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   41[BANK0 ] unsigned long 
;;  exp1            1   45[BANK0 ] unsigned char 
;;  sign1           1   40[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   33[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      13       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scan_key_value
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fttol.c"
	line	44
global __ptext20
__ptext20:	;psect for function ___fttol
psect	text20
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 13
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l11243:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u9461
	goto	u9460
u9461:
	goto	l11247
u9460:
	line	50
	
l11245:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l1447
	line	51
	
l11247:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u9475:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u9470:
	decfsz	wreg,f
	goto	u9475
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l11249:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l11251:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l11253:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l11255:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l11257:	
	btfss	(___fttol@exp1),7
	goto	u9481
	goto	u9480
u9481:
	goto	l11267
u9480:
	line	57
	
l11259:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u9491
	goto	u9490
u9491:
	goto	l11263
u9490:
	goto	l11245
	line	60
	
l11263:	
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l11265:	
	incfsz	(___fttol@exp1),f
	goto	u9501
	goto	u9500
u9501:
	goto	l11263
u9500:
	goto	l11273
	line	63
	
l11267:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u9511
	goto	u9510
u9511:
	goto	l1454
u9510:
	goto	l11245
	line	66
	
l11271:	
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l1454:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u9521
	goto	u9520
u9521:
	goto	l11271
u9520:
	line	70
	
l11273:	
	movf	(___fttol@sign1),w
	skipz
	goto	u9530
	goto	l11277
u9530:
	line	71
	
l11275:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l11277:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l1447:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    1[COMMON] float 
;;  ff2             3    4[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1B/4
;;		On exit  : 1B/0
;;		Unchanged: 1B/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scan_key_value
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftge.c"
	line	4
global __ptext21
__ptext21:	;psect for function ___ftge
psect	text21
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 13
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l11157:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u9361
	goto	u9360
u9361:
	goto	l11161
u9360:
	line	7
	
l11159:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
l11161:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u9371
	goto	u9370
u9371:
	goto	l11165
u9370:
	line	9
	
l11163:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
l11165:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l11167:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l11169:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u9385
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u9385
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u9385:
	skipnc
	goto	u9381
	goto	u9380
u9381:
	goto	l11173
u9380:
	
l11171:	
	clrc
	
	goto	l1421
	
l11173:	
	setc
	
	line	13
	
l1421:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   36[BANK0 ] float 
;;  f2              3   39[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   47[BANK0 ] unsigned char 
;;  exp2            1   46[BANK0 ] unsigned char 
;;  sign            1   45[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   36[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      12       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_scan_key_value
;;		_sprintf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftadd.c"
	line	86
global __ptext22
__ptext22:	;psect for function ___ftadd
psect	text22
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 11
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l11039:	
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp2)
	line	92
	
l11041:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u9130
	goto	l11047
u9130:
	
l11043:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u9141
	goto	u9140
u9141:
	goto	l11051
u9140:
	
l11045:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u9151
	goto	u9150
u9151:
	goto	l11051
u9150:
	line	93
	
l11047:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l1364
	line	94
	
l11051:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u9160
	goto	l1367
u9160:
	
l11053:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u9171
	goto	u9170
u9171:
	goto	l11057
u9170:
	
l11055:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u9181
	goto	u9180
u9181:
	goto	l11057
u9180:
	
l1367:	
	line	95
	goto	l1364
	line	96
	
l11057:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l11059:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u9191
	goto	u9190
u9191:
	goto	l1368
u9190:
	line	98
	
l11061:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l1368:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u9201
	goto	u9200
u9201:
	goto	l1369
u9200:
	line	100
	
l11063:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l1369:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l11065:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l11067:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u9211
	goto	u9210
u9211:
	goto	l11079
u9210:
	line	110
	
l11069:	
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l11071:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u9221
	goto	u9220
u9221:
	goto	l11077
u9220:
	
l11073:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u9231
	goto	u9230
u9231:
	goto	l11069
u9230:
	goto	l11077
	line	114
	
l11075:	
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l11077:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u9241
	goto	u9240
u9241:
	goto	l11075
u9240:
	goto	l1378
	line	117
	
l11079:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u9251
	goto	u9250
u9251:
	goto	l1378
u9250:
	line	121
	
l11081:	
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l11083:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u9261
	goto	u9260
u9261:
	goto	l11089
u9260:
	
l11085:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u9271
	goto	u9270
u9271:
	goto	l11081
u9270:
	goto	l11089
	line	125
	
l11087:	
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l11089:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u9281
	goto	u9280
u9281:
	goto	l11087
u9280:
	line	129
	
l1378:	
	btfss	(___ftadd@sign),(7)&7
	goto	u9291
	goto	u9290
u9291:
	goto	l11095
u9290:
	line	131
	
l11091:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l11093:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l11095:	
	btfss	(___ftadd@sign),(6)&7
	goto	u9301
	goto	u9300
u9301:
	goto	l11101
u9300:
	line	136
	
l11097:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l11099:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l11101:	
	clrf	(___ftadd@sign)
	line	140
	
l11103:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l11105:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u9311
	goto	u9310
u9311:
	goto	l11113
u9310:
	line	142
	
l11107:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l11109:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l11111:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l11113:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movlb 0	; select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
l1364:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	_middle_init

;; *************** function _middle_init *****************
;; Defined at:
;;		line 230 in file "D:\MCUProject\YCQ\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/1
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\main.c"
	line	230
global __ptext23
__ptext23:	;psect for function _middle_init
psect	text23
	file	"D:\MCUProject\YCQ\src\main.c"
	line	230
	global	__size_of_middle_init
	__size_of_middle_init	equ	__end_of_middle_init-_middle_init
	
_middle_init:	
;incstack = 0
	opt	stack 14
; Regs used in _middle_init: []
	line	233
	
l265:	
	return
	opt stack 0
GLOBAL	__end_of_middle_init
	__end_of_middle_init:
	signat	_middle_init,88
	global	_handle_uart_rx_buf

;; *************** function _handle_uart_rx_buf *****************
;; Defined at:
;;		line 230 in file "D:\MCUProject\YCQ\src\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  crc_in          2   21[BANK0 ] unsigned int 
;;  i               1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awtoft
;;		___lbtoft
;;		_crc16
;;		_delay_ms
;;		_disp_grap
;;		_display_string_8x16
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\uart.c"
	line	230
global __ptext24
__ptext24:	;psect for function _handle_uart_rx_buf
psect	text24
	file	"D:\MCUProject\YCQ\src\uart.c"
	line	230
	global	__size_of_handle_uart_rx_buf
	__size_of_handle_uart_rx_buf	equ	__end_of_handle_uart_rx_buf-_handle_uart_rx_buf
	
_handle_uart_rx_buf:	
;incstack = 0
	opt	stack 10
; Regs used in _handle_uart_rx_buf: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	232
	
l10619:	
	line	236
	
l10621:	
;uart.c: 234: unsigned int crc_in;
;uart.c: 236: if(rx_frame_kind==tx_frame_kind)
	movf	(_rx_frame_kind)^080h,w
	xorwf	(_tx_frame_kind)^080h,w
	skipz
	goto	u8491
	goto	u8490
u8491:
	goto	l10665
u8490:
	goto	l10663
	line	241
	
l10625:	
;uart.c: 241: if(uart1_rx_buf[1]==0xB1)
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+01h,w
	xorlw	0B1h&0ffh
	skipz
	goto	u8501
	goto	u8500
u8501:
	goto	l10665
u8500:
	line	243
	
l10627:	
;uart.c: 242: {
;uart.c: 243: crc_in=crc16(&uart1_rx_buf[1],12);
	movlw	(0Ch)
	movwf	(crc16@usDataLen)
	movlw	(_uart1_rx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movlb 0	; select bank0
	movwf	(handle_uart_rx_buf@crc_in+1)
	movf	(0+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in)
	line	245
	
l10629:	
;uart.c: 245: if(crc_in==( (uart1_rx_buf[13]<<8) | uart1_rx_buf[14]) )
	movf	(handle_uart_rx_buf@crc_in+1),w
	movlb 2	; select bank2
	xorwf	0+(_uart1_rx_buf)^0100h+0Dh,w
	skipz
	goto	u8515
	movlb 0	; select bank0
	movf	(handle_uart_rx_buf@crc_in),w
	movlb 2	; select bank2
	xorwf	0+(_uart1_rx_buf)^0100h+0Eh,w
u8515:

	skipz
	goto	u8511
	goto	u8510
u8511:
	goto	l481
u8510:
	line	247
	
l10631:	
;uart.c: 246: {
;uart.c: 247: p_v = (uart1_rx_buf[2]<<8) | uart1_rx_buf[3];
	movf	0+(_uart1_rx_buf)^0100h+02h,w
	movwf	(___awtoft@c+1)
	movf	0+(_uart1_rx_buf)^0100h+03h,w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_p_v)^080h
	movf	(1+(?___awtoft)),w
	movwf	(_p_v+1)^080h
	movf	(2+(?___awtoft)),w
	movwf	(_p_v+2)^080h
	line	249
;uart.c: 249: b_v = (uart1_rx_buf[4]<<8) | uart1_rx_buf[5];
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+04h,w
	movwf	(___awtoft@c+1)
	movf	0+(_uart1_rx_buf)^0100h+05h,w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_b_v)^080h
	movf	(1+(?___awtoft)),w
	movwf	(_b_v+1)^080h
	movf	(2+(?___awtoft)),w
	movwf	(_b_v+2)^080h
	line	251
;uart.c: 251: load_v = (uart1_rx_buf[6]<<8) | uart1_rx_buf[7];
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+06h,w
	movwf	(___awtoft@c+1)
	movf	0+(_uart1_rx_buf)^0100h+07h,w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_load_v)^080h
	movf	(1+(?___awtoft)),w
	movwf	(_load_v+1)^080h
	movf	(2+(?___awtoft)),w
	movwf	(_load_v+2)^080h
	line	253
;uart.c: 253: charge_I = (uart1_rx_buf[8]<<8) | uart1_rx_buf[9];
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+08h,w
	movwf	(___awtoft@c+1)
	movf	0+(_uart1_rx_buf)^0100h+09h,w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_charge_I)^080h
	movf	(1+(?___awtoft)),w
	movwf	(_charge_I+1)^080h
	movf	(2+(?___awtoft)),w
	movwf	(_charge_I+2)^080h
	line	255
;uart.c: 255: load_I = (uart1_rx_buf[10]<<8) | uart1_rx_buf[11];
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+0Ah,w
	movwf	(___awtoft@c+1)
	movf	0+(_uart1_rx_buf)^0100h+0Bh,w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_load_I)^080h
	movf	(1+(?___awtoft)),w
	movwf	(_load_I+1)^080h
	movf	(2+(?___awtoft)),w
	movwf	(_load_I+2)^080h
	line	257
;uart.c: 257: work_mode = uart1_rx_buf[12];
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+0Ch,w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_work_mode)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_work_mode+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_work_mode+2)^0100h
	goto	l10665
	line	263
	
l10633:	
;uart.c: 263: if(uart1_rx_buf[1]==0xB2)
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+01h,w
	xorlw	0B2h&0ffh
	skipz
	goto	u8521
	goto	u8520
u8521:
	goto	l10665
u8520:
	line	265
	
l10635:	
;uart.c: 264: {
;uart.c: 265: crc_in=crc16(&uart1_rx_buf[1],6);
	movlw	(06h)
	movwf	(crc16@usDataLen)
	movlw	(_uart1_rx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movlb 0	; select bank0
	movwf	(handle_uart_rx_buf@crc_in+1)
	movf	(0+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in)
	line	267
	
l10637:	
;uart.c: 267: if(crc_in==( (uart1_rx_buf[7]<<8) | uart1_rx_buf[8]) )
	movf	(handle_uart_rx_buf@crc_in+1),w
	movlb 2	; select bank2
	xorwf	0+(_uart1_rx_buf)^0100h+07h,w
	skipz
	goto	u8535
	movlb 0	; select bank0
	movf	(handle_uart_rx_buf@crc_in),w
	movlb 2	; select bank2
	xorwf	0+(_uart1_rx_buf)^0100h+08h,w
u8535:

	skipz
	goto	u8531
	goto	u8530
u8531:
	goto	l481
u8530:
	line	269
	
l10639:	
;uart.c: 268: {
;uart.c: 269: light_pv = (uart1_rx_buf[2]<<8) | uart1_rx_buf[3];
	movf	0+(_uart1_rx_buf)^0100h+02h,w
	movwf	(___awtoft@c+1)
	movf	0+(_uart1_rx_buf)^0100h+03h,w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 0	; select bank0
	movwf	(_light_pv)
	movf	(1+(?___awtoft)),w
	movwf	(_light_pv+1)
	movf	(2+(?___awtoft)),w
	movwf	(_light_pv+2)
	line	271
;uart.c: 271: load_cc_I = (uart1_rx_buf[4]<<8) | uart1_rx_buf[5];
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+04h,w
	movwf	(___awtoft@c+1)
	movf	0+(_uart1_rx_buf)^0100h+05h,w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 0	; select bank0
	movwf	(_load_cc_I)
	movf	(1+(?___awtoft)),w
	movwf	(_load_cc_I+1)
	movf	(2+(?___awtoft)),w
	movwf	(_load_cc_I+2)
	line	273
;uart.c: 273: load_percent = uart1_rx_buf[6];
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+06h,w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movwf	(_load_percent)
	movf	(1+(?___lbtoft)),w
	movwf	(_load_percent+1)
	movf	(2+(?___lbtoft)),w
	movwf	(_load_percent+2)
	goto	l10665
	line	280
	
l10641:	
;uart.c: 280: if(uart1_rx_buf[1]==0xB3)
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+01h,w
	xorlw	0B3h&0ffh
	skipz
	goto	u8541
	goto	u8540
u8541:
	goto	l10665
u8540:
	line	282
	
l10643:	
;uart.c: 281: {
;uart.c: 282: crc_in=crc16(&uart1_rx_buf[1],2);
	movlw	(02h)
	movwf	(crc16@usDataLen)
	movlw	(_uart1_rx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movlb 0	; select bank0
	movwf	(handle_uart_rx_buf@crc_in+1)
	movf	(0+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in)
	line	284
	
l10645:	
;uart.c: 284: if(crc_in==( (uart1_rx_buf[3]<<8) | uart1_rx_buf[4]) )
	movf	(handle_uart_rx_buf@crc_in+1),w
	movlb 2	; select bank2
	xorwf	0+(_uart1_rx_buf)^0100h+03h,w
	skipz
	goto	u8555
	movlb 0	; select bank0
	movf	(handle_uart_rx_buf@crc_in),w
	movlb 2	; select bank2
	xorwf	0+(_uart1_rx_buf)^0100h+04h,w
u8555:

	skipz
	goto	u8551
	goto	u8550
u8551:
	goto	l10655
u8550:
	line	286
	
l10647:	
;uart.c: 285: {
;uart.c: 286: set_status = uart1_rx_buf[2];
	movf	0+(_uart1_rx_buf)^0100h+02h,w
	movlb 1	; select bank1
	movwf	(_set_status)^080h
	line	288
;uart.c: 288: if(set_status==0x01)
	decf	(_set_status)^080h,w
	skipz
	goto	u8561
	goto	u8560
u8561:
	goto	l10665
u8560:
	line	290
	
l10649:	
;uart.c: 289: {
;uart.c: 290: display_string_8x16(5,0,"....Save OK!....");
	movlb 0	; select bank0
	clrf	(display_string_8x16@column)
	movlw	low(STR_19|8000h)
	movwf	(display_string_8x16@text)
	movlw	high(STR_19|8000h)
	movwf	((display_string_8x16@text))+1
	movlw	(05h)
	fcall	_display_string_8x16
	line	292
	
l10651:	
;uart.c: 292: delay_ms(1000);
	movlw	low(03E8h)
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	294
	
l10653:	
;uart.c: 294: disp_grap(1,1,canshu01);
	movlb 0	; select bank0
	clrf	(disp_grap@column)
	incf	(disp_grap@column),f
	movlw	low(_canshu01|8000h)
	movwf	(disp_grap@dp)
	movlw	high(_canshu01|8000h)
	movwf	((disp_grap@dp))+1
	movlw	(01h)
	fcall	_disp_grap
	goto	l10665
	line	299
	
l10655:	
;uart.c: 297: else
;uart.c: 298: {
;uart.c: 299: display_string_8x16(5,0,"...CRC error!...");
	movlb 0	; select bank0
	clrf	(display_string_8x16@column)
	movlw	low(STR_20|8000h)
	movwf	(display_string_8x16@text)
	movlw	high(STR_20|8000h)
	movwf	((display_string_8x16@text))+1
	movlw	(05h)
	fcall	_display_string_8x16
	line	301
	
l10657:	
;uart.c: 301: delay_ms(1000);
	movlw	low(03E8h)
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	303
	
l10659:	
;uart.c: 303: disp_grap(1,1,canshu01);
	movlb 0	; select bank0
	clrf	(disp_grap@column)
	incf	(disp_grap@column),f
	movlw	low(_canshu01|8000h)
	movwf	(disp_grap@dp)
	movlw	high(_canshu01|8000h)
	movwf	((disp_grap@dp))+1
	movlw	(01h)
	fcall	_disp_grap
	goto	l10665
	line	238
	
l10663:	
	movf	(_rx_frame_kind)^080h,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           15     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l10625
	xorlw	2^1	; case 2
	skipnz
	goto	l10633
	xorlw	3^2	; case 3
	skipnz
	goto	l10641
	goto	l10665
	opt asmopt_on

	line	309
	
l481:	
	line	312
	
l10665:	
;uart.c: 310: }
;uart.c: 312: for(i=0;i<25;i++)
	movlb 0	; select bank0
	clrf	(handle_uart_rx_buf@i)
	line	314
	
l10671:	
;uart.c: 313: {
;uart.c: 314: uart1_rx_buf[i]=0x00;
	movf	(handle_uart_rx_buf@i),w
	addlw	_uart1_rx_buf&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	312
	
l10673:	
	incf	(handle_uart_rx_buf@i),f
	
l10675:	
	movlw	(019h)
	subwf	(handle_uart_rx_buf@i),w
	skipc
	goto	u8571
	goto	u8570
u8571:
	goto	l10671
u8570:
	line	316
	
l493:	
	return
	opt stack 0
GLOBAL	__end_of_handle_uart_rx_buf
	__end_of_handle_uart_rx_buf:
	signat	_handle_uart_rx_buf,88
	global	_display_string_8x16

;; *************** function _display_string_8x16 *****************
;; Defined at:
;;		line 299 in file "D:\MCUProject\YCQ\src\lcd12864.c"
;; Parameters:    Size  Location     Type
;;  page            1    wreg     unsigned char 
;;  column          1    0[BANK0 ] unsigned char 
;;  text            2    1[BANK0 ] PTR unsigned char 
;;		 -> STR_20(17), STR_19(17), buf(50), 
;; Auto vars:     Size  Location     Type
;;  page            1   15[BANK0 ] unsigned char 
;;  i               1   20[BANK0 ] unsigned char 
;;  n               1   19[BANK0 ] unsigned char 
;;  k               1   18[BANK0 ] unsigned char 
;;  dat             1   17[BANK0 ] unsigned char 
;;  j               1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0      12       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      21       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_address
;;		_transfer_data
;; This function is called by:
;;		_main
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	299
global __ptext25
__ptext25:	;psect for function _display_string_8x16
psect	text25
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	299
	global	__size_of_display_string_8x16
	__size_of_display_string_8x16	equ	__end_of_display_string_8x16-_display_string_8x16
	
_display_string_8x16:	
;incstack = 0
	opt	stack 10
; Regs used in _display_string_8x16: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;display_string_8x16@page stored from wreg
	movwf	(display_string_8x16@page)
	line	301
	
l10519:	
;lcd12864.c: 301: unsigned char i=0,j,k,n;
	clrf	(display_string_8x16@i)
	line	305
;lcd12864.c: 303: unsigned char dat;
;lcd12864.c: 305: while(text[i]>0x00)
	goto	l10617
	line	307
	
l10521:	
;lcd12864.c: 306: {
;lcd12864.c: 307: if((text[i]>=0x20)&&(text[i]<=0x7e))
	movf	(display_string_8x16@text+1),w
	movwf	(??_display_string_8x16+0)+0+1
	movf	(display_string_8x16@text),w
	movwf	(??_display_string_8x16+0)+0
	movf	(display_string_8x16@i),w
	addwf	(??_display_string_8x16+0)+0,w
	movwf	fsr0l
	movf	(??_display_string_8x16+0)+1,w
	skipnc
	incf	(??_display_string_8x16+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	movwf	(??_display_string_8x16+2)+0
	movlw	low(020h)
	subwf	(??_display_string_8x16+2)+0,w
	skipc
	goto	u8181
	goto	u8180
u8181:
	goto	l10615
u8180:
	
l10523:	
	movf	(display_string_8x16@text+1),w
	movwf	(??_display_string_8x16+0)+0+1
	movf	(display_string_8x16@text),w
	movwf	(??_display_string_8x16+0)+0
	movf	(display_string_8x16@i),w
	addwf	(??_display_string_8x16+0)+0,w
	movwf	fsr0l
	movf	(??_display_string_8x16+0)+1,w
	skipnc
	incf	(??_display_string_8x16+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	movwf	(??_display_string_8x16+2)+0
	movlw	low(07Fh)
	subwf	(??_display_string_8x16+2)+0,w
	skipnc
	goto	u8191
	goto	u8190
u8191:
	goto	l10615
u8190:
	line	309
	
l10525:	
;lcd12864.c: 308: {
;lcd12864.c: 309: j=text[i]-0x20;
	movf	(display_string_8x16@text+1),w
	movwf	(??_display_string_8x16+0)+0+1
	movf	(display_string_8x16@text),w
	movwf	(??_display_string_8x16+0)+0
	movf	(display_string_8x16@i),w
	addwf	(??_display_string_8x16+0)+0,w
	movwf	fsr0l
	movf	(??_display_string_8x16+0)+1,w
	skipnc
	incf	(??_display_string_8x16+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	addlw	0E0h
	movwf	(display_string_8x16@j)
	line	310
	
l10527:	
;lcd12864.c: 310: for(n=0;n<2;n++)
	clrf	(display_string_8x16@n)
	line	312
	
l10533:	
;lcd12864.c: 311: {
;lcd12864.c: 312: lcd_address(page+n,column);
	movf	(display_string_8x16@column),w
	movwf	(lcd_address@column)
	movf	(display_string_8x16@page),w
	addwf	(display_string_8x16@n),w
	fcall	_lcd_address
	line	314
	
l10535:	
;lcd12864.c: 314: for(k=0;k<8;k++)
	movlb 0	; select bank0
	clrf	(display_string_8x16@k)
	line	317
	
l10541:	
;lcd12864.c: 315: {
;lcd12864.c: 317: dat=ascii_table_8x16[j][k+8*n];
	movf	(display_string_8x16@n),w
	movwf	(??_display_string_8x16+0)+0
	clrf	(??_display_string_8x16+0)+0+1
	lslf	(??_display_string_8x16+0)+0,f
	rlf	(??_display_string_8x16+0)+1,f
	lslf	(??_display_string_8x16+0)+0,f
	rlf	(??_display_string_8x16+0)+1,f
	lslf	(??_display_string_8x16+0)+0,f
	rlf	(??_display_string_8x16+0)+1,f
	movf	(display_string_8x16@k),w
	movwf	(??_display_string_8x16+2)+0
	clrf	(??_display_string_8x16+2)+0+1
	movf	(display_string_8x16@j),w
	movwf	(??_display_string_8x16+4)+0
	clrf	(??_display_string_8x16+4)+0+1
	swapf	(??_display_string_8x16+4)+0,f
	swapf	(??_display_string_8x16+4)+1,f
	movlw	0f0h
	andwf	(??_display_string_8x16+4)+1,f
	movf	(??_display_string_8x16+4)+0,w
	andlw	0fh
	iorwf	(??_display_string_8x16+4)+1,f
	movlw	0f0h
	andwf	(??_display_string_8x16+4)+0,f
	movlw	low(_ascii_table_8x16|8000h)
	movwf	(??_display_string_8x16+6)+0
	movlw	high(_ascii_table_8x16|8000h)
	movwf	(??_display_string_8x16+6)+0+1
	movf	0+(??_display_string_8x16+4)+0,w
	addwf	0+(??_display_string_8x16+6)+0,w
	movwf	(??_display_string_8x16+8)+0
	movf	1+(??_display_string_8x16+4)+0,w
	addwfc	1+(??_display_string_8x16+6)+0,w
	movwf	1+(??_display_string_8x16+8)+0
	movf	0+(??_display_string_8x16+2)+0,w
	addwf	0+(??_display_string_8x16+8)+0,w
	movwf	(??_display_string_8x16+10)+0
	movf	1+(??_display_string_8x16+2)+0,w
	addwfc	1+(??_display_string_8x16+8)+0,w
	movwf	1+(??_display_string_8x16+10)+0
	movf	0+(??_display_string_8x16+10)+0,w
	addwf	0+(??_display_string_8x16+0)+0,w
	movwf	fsr0l
	movf	1+(??_display_string_8x16+10)+0,w
	addwfc	1+(??_display_string_8x16+0)+0,w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(display_string_8x16@dat)
	line	319
	
l10543:	
;lcd12864.c: 319: if(menu_index_q==0x03)
	movf	(_menu_index_q),w
	xorlw	03h&0ffh
	skipz
	goto	u8201
	goto	u8200
u8201:
	goto	l10565
u8200:
	line	321
	
l10545:	
;lcd12864.c: 320: {
;lcd12864.c: 321: if(((i==0)&&(canshu_1_weizhi==3))||((i==1)&&(canshu_1_weizhi==2))||((i==3)&&(canshu_1_weizhi==1))||((i==4)&&(canshu_1_weizhi==0)))
	movf	(display_string_8x16@i),f
	skipz
	goto	u8211
	goto	u8210
u8211:
	goto	l10549
u8210:
	
l10547:	
	movf	(_canshu_1_weizhi),w
	xorlw	03h&0ffh
	skipnz
	goto	u8221
	goto	u8220
u8221:
	goto	l10561
u8220:
	
l10549:	
	decf	(display_string_8x16@i),w
	skipz
	goto	u8231
	goto	u8230
u8231:
	goto	l10553
u8230:
	
l10551:	
	movf	(_canshu_1_weizhi),w
	xorlw	02h&0ffh
	skipnz
	goto	u8241
	goto	u8240
u8241:
	goto	l10561
u8240:
	
l10553:	
	movf	(display_string_8x16@i),w
	xorlw	03h&0ffh
	skipz
	goto	u8251
	goto	u8250
u8251:
	goto	l10557
u8250:
	
l10555:	
	decf	(_canshu_1_weizhi),w
	skipnz
	goto	u8261
	goto	u8260
u8261:
	goto	l10561
u8260:
	
l10557:	
	movf	(display_string_8x16@i),w
	xorlw	04h&0ffh
	skipz
	goto	u8271
	goto	u8270
u8271:
	goto	l10601
u8270:
	
l10559:	
	movf	(_canshu_1_weizhi),f
	skipz
	goto	u8281
	goto	u8280
u8281:
	goto	l10601
u8280:
	line	323
	
l10561:	
;lcd12864.c: 322: {
;lcd12864.c: 323: if(dat_flag)
	movlb 1	; select bank1
	movf	(_dat_flag)^080h,w
	skipz
	goto	u8290
	goto	l10601
u8290:
	line	325
	
l10563:	
;lcd12864.c: 324: {
;lcd12864.c: 325: dat =~dat;
	movlw	(0FFh)
	movlb 0	; select bank0
	xorwf	(display_string_8x16@dat),f
	movlb 1	; select bank1
	goto	l10601
	line	329
	
l10565:	
;lcd12864.c: 329: else if(menu_index_q==0x05)
	movf	(_menu_index_q),w
	xorlw	05h&0ffh
	skipz
	goto	u8301
	goto	u8300
u8301:
	goto	l10587
u8300:
	line	331
	
l10567:	
;lcd12864.c: 330: {
;lcd12864.c: 331: if(((i==0)&&(canshu_2_weizhi==3))||((i==1)&&(canshu_2_weizhi==2))||((i==3)&&(canshu_2_weizhi==1))||((i==4)&&(canshu_2_weizhi==0)))
	movf	(display_string_8x16@i),f
	skipz
	goto	u8311
	goto	u8310
u8311:
	goto	l10571
u8310:
	
l10569:	
	movf	(_canshu_2_weizhi),w
	xorlw	03h&0ffh
	skipnz
	goto	u8321
	goto	u8320
u8321:
	goto	l10583
u8320:
	
l10571:	
	decf	(display_string_8x16@i),w
	skipz
	goto	u8331
	goto	u8330
u8331:
	goto	l10575
u8330:
	
l10573:	
	movf	(_canshu_2_weizhi),w
	xorlw	02h&0ffh
	skipnz
	goto	u8341
	goto	u8340
u8341:
	goto	l10583
u8340:
	
l10575:	
	movf	(display_string_8x16@i),w
	xorlw	03h&0ffh
	skipz
	goto	u8351
	goto	u8350
u8351:
	goto	l10579
u8350:
	
l10577:	
	decf	(_canshu_2_weizhi),w
	skipnz
	goto	u8361
	goto	u8360
u8361:
	goto	l10583
u8360:
	
l10579:	
	movf	(display_string_8x16@i),w
	xorlw	04h&0ffh
	skipz
	goto	u8371
	goto	u8370
u8371:
	movlb 1	; select bank1
	goto	l10601
u8370:
	
l10581:	
	movf	(_canshu_2_weizhi),f
	skipz
	goto	u8381
	goto	u8380
u8381:
	movlb 1	; select bank1
	goto	l10601
u8380:
	line	333
	
l10583:	
;lcd12864.c: 332: {
;lcd12864.c: 333: if(dat_flag)
	movlb 1	; select bank1
	movf	(_dat_flag)^080h,w
	skipz
	goto	u8390
	goto	l10601
u8390:
	goto	l10563
	line	339
	
l10587:	
;lcd12864.c: 339: else if(menu_index_q==0x07)
	movf	(_menu_index_q),w
	xorlw	07h&0ffh
	skipz
	goto	u8401
	goto	u8400
u8401:
	movlb 1	; select bank1
	goto	l10601
u8400:
	line	341
	
l10589:	
;lcd12864.c: 340: {
;lcd12864.c: 341: if( ((i==1)&&(canshu_3_weizhi==1)) || ((i==2)&&(canshu_3_weizhi==0)) )
	decf	(display_string_8x16@i),w
	skipz
	goto	u8411
	goto	u8410
u8411:
	goto	l10593
u8410:
	
l10591:	
	decf	(_canshu_3_weizhi),w
	skipnz
	goto	u8421
	goto	u8420
u8421:
	goto	l10597
u8420:
	
l10593:	
	movf	(display_string_8x16@i),w
	xorlw	02h&0ffh
	skipz
	goto	u8431
	goto	u8430
u8431:
	movlb 1	; select bank1
	goto	l10601
u8430:
	
l10595:	
	movf	(_canshu_3_weizhi),f
	skipz
	goto	u8441
	goto	u8440
u8441:
	movlb 1	; select bank1
	goto	l10601
u8440:
	line	343
	
l10597:	
;lcd12864.c: 342: {
;lcd12864.c: 343: if(dat_flag)
	movlb 1	; select bank1
	movf	(_dat_flag)^080h,w
	skipz
	goto	u8450
	goto	l10601
u8450:
	goto	l10563
	line	350
	
l10601:	
;lcd12864.c: 346: }
;lcd12864.c: 347: }
;lcd12864.c: 348: }
;lcd12864.c: 350: transfer_data(dat);
	movlb 0	; select bank0
	movf	(display_string_8x16@dat),w
	fcall	_transfer_data
	line	314
	
l10603:	
	movlb 0	; select bank0
	incf	(display_string_8x16@k),f
	
l10605:	
	movlw	(08h)
	subwf	(display_string_8x16@k),w
	skipc
	goto	u8461
	goto	u8460
u8461:
	goto	l10541
u8460:
	line	310
	
l10607:	
	incf	(display_string_8x16@n),f
	
l10609:	
	movlw	(02h)
	subwf	(display_string_8x16@n),w
	skipc
	goto	u8471
	goto	u8470
u8471:
	goto	l10533
u8470:
	line	354
	
l10611:	
;lcd12864.c: 352: }
;lcd12864.c: 353: }
;lcd12864.c: 354: i++;
	incf	(display_string_8x16@i),f
	line	355
	
l10613:	
;lcd12864.c: 355: column+=8;
	movlw	(08h)
	addwf	(display_string_8x16@column),f
	line	356
;lcd12864.c: 356: }
	goto	l10617
	line	359
	
l10615:	
;lcd12864.c: 357: else
;lcd12864.c: 358: {
;lcd12864.c: 359: i++;
	incf	(display_string_8x16@i),f
	line	305
	
l10617:	
	movf	(display_string_8x16@text+1),w
	movwf	(??_display_string_8x16+0)+0+1
	movf	(display_string_8x16@text),w
	movwf	(??_display_string_8x16+0)+0
	movf	(display_string_8x16@i),w
	addwf	(??_display_string_8x16+0)+0,w
	movwf	fsr0l
	movf	(??_display_string_8x16+0)+1,w
	skipnc
	incf	(??_display_string_8x16+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	iorlw	0
	skipz
	goto	u8481
	goto	u8480
u8481:
	goto	l10521
u8480:
	line	363
	
l648:	
	return
	opt stack 0
GLOBAL	__end_of_display_string_8x16
	__end_of_display_string_8x16:
	signat	_display_string_8x16,12408
	global	_crc16

;; *************** function _crc16 *****************
;; Defined at:
;;		line 75 in file "D:\MCUProject\YCQ\src\Modbus.c"
;; Parameters:    Size  Location     Type
;;  puchMsg         1    wreg     PTR volatile unsigned ch
;;		 -> uart1_tx_buf(25), uart1_rx_buf(25), 
;;  usDataLen       1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  puchMsg         1   10[COMMON] PTR volatile unsigned ch
;;		 -> uart1_tx_buf(25), uart1_rx_buf(25), 
;;  uIndex          4    4[COMMON] unsigned long 
;;  uchCRCLo        1    9[COMMON] unsigned char 
;;  uchCRCHi        1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    1[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/2
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_handle_uart_rx_buf
;;		_scan_key_value
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\Modbus.c"
	line	75
global __ptext26
__ptext26:	;psect for function _crc16
psect	text26
	file	"D:\MCUProject\YCQ\src\Modbus.c"
	line	75
	global	__size_of_crc16
	__size_of_crc16	equ	__end_of_crc16-_crc16
	
_crc16:	
;incstack = 0
	opt	stack 13
; Regs used in _crc16: [wreg-fsr1h+status,2+status,0+pclath]
;crc16@puchMsg stored from wreg
	movwf	(crc16@puchMsg)
	line	77
	
l7519:	
;Modbus.c: 77: unsigned char uchCRCHi = 0xFF ;
	movlw	(0FFh)
	movwf	(crc16@uchCRCHi)
	line	78
;Modbus.c: 78: unsigned char uchCRCLo = 0xFF ;
	movlw	(0FFh)
	movwf	(crc16@uchCRCLo)
	line	80
;Modbus.c: 79: unsigned long uIndex ;
;Modbus.c: 80: while (usDataLen--)
	goto	l7529
	line	82
	
l7521:	
;Modbus.c: 81: {
;Modbus.c: 82: uIndex = uchCRCHi ^ *puchMsg++ ;
	movf	(crc16@puchMsg),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorwf	(crc16@uchCRCHi),w
	movwf	(crc16@uIndex)
	clrf	(crc16@uIndex+1)
	clrf	(crc16@uIndex+2)
	clrf	(crc16@uIndex+3)

	
l7523:	
	incf	(crc16@puchMsg),f
	line	83
	
l7525:	
;Modbus.c: 83: uchCRCHi = uchCRCLo ^ CRCHi[uIndex] ;
	movlw	low(_CRCHi|8000h)
	addwf	(crc16@uIndex),w
	movwf	fsr0l
	movlw	high(_CRCHi|8000h)
	addwfc	(crc16@uIndex+1),w
	movwf	fsr0h
	movf	indf0,w ;code access
	xorwf	(crc16@uchCRCLo),w
	movwf	(crc16@uchCRCHi)
	line	84
	
l7527:	
;Modbus.c: 84: uchCRCLo = CRCLo[uIndex] ;
	movlw	low(_CRCLo|8000h)
	addwf	(crc16@uIndex),w
	movwf	fsr0l
	movlw	high(_CRCLo|8000h)
	addwfc	(crc16@uIndex+1),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(crc16@uchCRCLo)
	line	80
	
l7529:	
	decf	(crc16@usDataLen),f
	movf	((crc16@usDataLen)),w
	xorlw	0FFh&0ffh
	skipz
	goto	u4191
	goto	u4190
u4191:
	goto	l7521
u4190:
	line	86
	
l7531:	
;Modbus.c: 85: }
;Modbus.c: 86: return ( uchCRCHi<< 8 | uchCRCLo);
	movf	(crc16@uchCRCHi),w
	movwf	(?_crc16+1)
	clrf	(?_crc16)
	movf	(crc16@uchCRCLo),w
	iorwf	(?_crc16),f
	line	87
	
l311:	
	return
	opt stack 0
GLOBAL	__end_of_crc16
	__end_of_crc16:
	signat	_crc16,8314
	global	___lbtoft

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 27 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbtoft.c"
	line	27
global __ptext27
__ptext27:	;psect for function ___lbtoft
psect	text27
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbtoft.c"
	line	27
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:	
;incstack = 0
	opt	stack 12
; Regs used in ___lbtoft: [wreg+status,2+status,0+pclath+cstack]
;___lbtoft@c stored from wreg
	movwf	(___lbtoft@c)
	line	29
	
l11323:	
	movf	(___lbtoft@c),w
	movwf	(___ftpack@arg)
	clrf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movlb 0	; select bank0
	movwf	(?___lbtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lbtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lbtoft+2)
	line	30
	
l1483:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
	signat	___lbtoft,4219
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    9[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1D/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awtoft.c"
	line	32
global __ptext28
__ptext28:	;psect for function ___awtoft
psect	text28
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 12
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l11027:	
	movlb 0	; select bank0
	clrf	(___awtoft@sign)
	line	37
	
l11029:	
	btfss	(___awtoft@c+1),7
	goto	u9121
	goto	u9120
u9121:
	goto	l11035
u9120:
	line	38
	
l11031:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l11033:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l11035:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	line	42
	
l1316:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	_driver_init

;; *************** function _driver_init *****************
;; Defined at:
;;		line 196 in file "D:\MCUProject\YCQ\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_init_beep
;;		_init_interrupt
;;		_init_key
;;		_init_lcd
;;		_init_led
;;		_init_osc
;;		_init_port
;;		_init_pwm
;;		_init_timer1
;;		_init_uart1
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\main.c"
	line	196
global __ptext29
__ptext29:	;psect for function _driver_init
psect	text29
	file	"D:\MCUProject\YCQ\src\main.c"
	line	196
	global	__size_of_driver_init
	__size_of_driver_init	equ	__end_of_driver_init-_driver_init
	
_driver_init:	
;incstack = 0
	opt	stack 9
; Regs used in _driver_init: [allreg]
	line	198
	
l9459:	
;main.c: 198: init_osc();
	fcall	_init_osc
	line	200
	
l9461:	
;main.c: 200: init_port();
	fcall	_init_port
	line	202
	
l9463:	
;main.c: 202: init_led();
	fcall	_init_led
	line	204
	
l9465:	
;main.c: 204: init_beep();
	fcall	_init_beep
	line	206
	
l9467:	
;main.c: 206: init_timer1();
	fcall	_init_timer1
	line	208
	
l9469:	
;main.c: 208: init_uart1();
	fcall	_init_uart1
	line	210
	
l9471:	
;main.c: 210: init_pwm();
	fcall	_init_pwm
	line	212
	
l9473:	
;main.c: 212: init_lcd();
	fcall	_init_lcd
	line	214
	
l9475:	
;main.c: 214: init_key();
	fcall	_init_key
	line	216
	
l9477:	
;main.c: 216: init_interrupt();
	fcall	_init_interrupt
	line	219
	
l262:	
	return
	opt stack 0
GLOBAL	__end_of_driver_init
	__end_of_driver_init:
	signat	_driver_init,88
	global	_init_uart1

;; *************** function _init_uart1 *****************
;; Defined at:
;;		line 79 in file "D:\MCUProject\YCQ\src\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\uart.c"
	line	79
global __ptext30
__ptext30:	;psect for function _init_uart1
psect	text30
	file	"D:\MCUProject\YCQ\src\uart.c"
	line	79
	global	__size_of_init_uart1
	__size_of_init_uart1	equ	__end_of_init_uart1-_init_uart1
	
_init_uart1:	
;incstack = 0
	opt	stack 13
; Regs used in _init_uart1: [wreg]
	line	82
	
l6871:	
;uart.c: 82: SP1BRGL = 0x40;
	movlw	(040h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	83
;uart.c: 83: SP1BRGH = 0x03;
	movlw	(03h)
	movwf	(412)^0180h	;volatile
	line	84
;uart.c: 84: BAUDCON = 0x08;
	movlw	(08h)
	movwf	(415)^0180h	;volatile
	line	94
	
l6873:	
;uart.c: 94: (TRISCbits.TRISC6) = 0x00;
	movlb 1	; select bank1
	bcf	(142)^080h,6	;volatile
	line	95
	
l6875:	
;uart.c: 95: (TRISCbits.TRISC7) = 0x01;
	bsf	(142)^080h,7	;volatile
	line	96
;uart.c: 96: TXSTA = 0x20;
	movlw	(020h)
	movlb 3	; select bank3
	movwf	(414)^0180h	;volatile
	line	105
;uart.c: 105: RCSTA = 0x90;
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	line	106
	
l6877:	
;uart.c: 106: RCIE = 0x01;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	107
	
l440:	
	return
	opt stack 0
GLOBAL	__end_of_init_uart1
	__end_of_init_uart1:
	signat	_init_uart1,88
	global	_init_timer1

;; *************** function _init_timer1 *****************
;; Defined at:
;;		line 24 in file "D:\MCUProject\YCQ\src\timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/2
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\timer.c"
	line	24
global __ptext31
__ptext31:	;psect for function _init_timer1
psect	text31
	file	"D:\MCUProject\YCQ\src\timer.c"
	line	24
	global	__size_of_init_timer1
	__size_of_init_timer1	equ	__end_of_init_timer1-_init_timer1
	
_init_timer1:	
;incstack = 0
	opt	stack 13
; Regs used in _init_timer1: [wreg]
	line	26
	
l6863:	
;timer.c: 26: TMR1H = 0xE0;
	movlw	(0E0h)
	movlb 0	; select bank0
	movwf	(23)	;volatile
	line	27
;timer.c: 27: TMR1L = 0xC0;
	movlw	(0C0h)
	movwf	(22)	;volatile
	line	28
;timer.c: 28: T1CON = 0x60;
	movlw	(060h)
	movwf	(24)	;volatile
	line	32
	
l6865:	
;timer.c: 32: T1GCONbits.TMR1GE=0;
	bcf	(25),7	;volatile
	line	34
	
l6867:	
;timer.c: 34: TMR1IE = 0x01;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	35
	
l6869:	
;timer.c: 35: TMR1ON =0;
	movlb 0	; select bank0
	bcf	(192/8),(192)&7	;volatile
	line	36
	
l353:	
	return
	opt stack 0
GLOBAL	__end_of_init_timer1
	__end_of_init_timer1:
	signat	_init_timer1,88
	global	_init_pwm

;; *************** function _init_pwm *****************
;; Defined at:
;;		line 20 in file "D:\MCUProject\YCQ\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\pwm.c"
	line	20
global __ptext32
__ptext32:	;psect for function _init_pwm
psect	text32
	file	"D:\MCUProject\YCQ\src\pwm.c"
	line	20
	global	__size_of_init_pwm
	__size_of_init_pwm	equ	__end_of_init_pwm-_init_pwm
	
_init_pwm:	
;incstack = 0
	opt	stack 13
; Regs used in _init_pwm: [wreg+status,2+status,0]
	line	26
	
l6879:	
;pwm.c: 26: TRISAbits.TRISA4=0;
	bcf	(140)^080h,4	;volatile
	line	28
	
l6881:	
;pwm.c: 28: PR2=0xCE;
	movlw	(0CEh)
	movlb 0	; select bank0
	movwf	(27)	;volatile
	line	30
	
l6883:	
;pwm.c: 30: CCP5CONbits.CCP5M=0b1100;
	movlb 6	; select bank6
	movf	(798)^0300h,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	(798)^0300h	;volatile
	line	32
	
l6885:	
;pwm.c: 32: CCP5CONbits.P5M=0b00;
	movlw	((0 & ((1<<2)-1))<<6)|not (((1<<2)-1)<<6)
	andwf	(798)^0300h,f	;volatile
	line	34
	
l6887:	
;pwm.c: 34: CCPTMRS1bits.C5TSEL=0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	movlb 5	; select bank5
	andwf	(671)^0280h,f	;volatile
	line	36
	
l6889:	
;pwm.c: 36: CCPR5L=(unsigned char)(0x114>>2);
	movlw	(045h)
	movlb 6	; select bank6
	movwf	(796)^0300h	;volatile
	line	38
;pwm.c: 38: CCP5CONbits.DC5B=(unsigned char)(0x114&0b11);
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(798)^0300h,f	;volatile
	line	40
	
l6891:	
;pwm.c: 40: TMR2IF=0;
	movlb 0	; select bank0
	bcf	(137/8),(137)&7	;volatile
	line	42
;pwm.c: 42: T2CONbits.T2OUTPS=0b0000;
	movlw	((0 & ((1<<4)-1))<<3)|not (((1<<4)-1)<<3)
	andwf	(28),f	;volatile
	line	44
	
l6893:	
;pwm.c: 44: TMR2ON=0;
	bcf	(226/8),(226)&7	;volatile
	line	46
;pwm.c: 46: T2CONbits.T2CKPS=0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(28),f	;volatile
	line	48
	
l334:	
	return
	opt stack 0
GLOBAL	__end_of_init_pwm
	__end_of_init_pwm:
	signat	_init_pwm,88
	global	_init_port

;; *************** function _init_port *****************
;; Defined at:
;;		line 176 in file "D:\MCUProject\YCQ\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/2
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\main.c"
	line	176
global __ptext33
__ptext33:	;psect for function _init_port
psect	text33
	file	"D:\MCUProject\YCQ\src\main.c"
	line	176
	global	__size_of_init_port
	__size_of_init_port	equ	__end_of_init_port-_init_port
	
_init_port:	
;incstack = 0
	opt	stack 13
; Regs used in _init_port: [status,2]
	line	178
	
l6835:	
;main.c: 178: ANSELA = 0x00;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	179
;main.c: 179: ANSELB = 0x00;
	clrf	(397)^0180h	;volatile
	line	181
	
l6837:	
;main.c: 181: (TRISAbits.TRISA3) = 0;
	movlb 1	; select bank1
	bcf	(140)^080h,3	;volatile
	line	182
	
l6839:	
;main.c: 182: (LATAbits.LATA3 = 0x00);
	movlb 2	; select bank2
	bcf	(268)^0100h,3	;volatile
	line	185
	
l259:	
	return
	opt stack 0
GLOBAL	__end_of_init_port
	__end_of_init_port:
	signat	_init_port,88
	global	_init_osc

;; *************** function _init_osc *****************
;; Defined at:
;;		line 159 in file "D:\MCUProject\YCQ\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	line	159
global __ptext34
__ptext34:	;psect for function _init_osc
psect	text34
	file	"D:\MCUProject\YCQ\src\main.c"
	line	159
	global	__size_of_init_osc
	__size_of_init_osc	equ	__end_of_init_osc-_init_osc
	
_init_osc:	
;incstack = 0
	opt	stack 13
; Regs used in _init_osc: [wreg+status,2+status,0]
	line	161
	
l6831:	
;main.c: 161: OSCCON = 0x70;
	movlw	(070h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	162
	
l6833:	
;main.c: 162: WDTCONbits.WDTPS=0b01110;
	movf	(151)^080h,w	;volatile
	andlw	not (((1<<5)-1)<<1)
	iorlw	(0Eh & ((1<<5)-1))<<1
	movwf	(151)^080h	;volatile
	line	163
	
l256:	
	return
	opt stack 0
GLOBAL	__end_of_init_osc
	__end_of_init_osc:
	signat	_init_osc,88
	global	_init_led

;; *************** function _init_led *****************
;; Defined at:
;;		line 26 in file "D:\MCUProject\YCQ\src\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/2
;;		On exit  : 17F/2
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\led.c"
	line	26
global __ptext35
__ptext35:	;psect for function _init_led
psect	text35
	file	"D:\MCUProject\YCQ\src\led.c"
	line	26
	global	__size_of_init_led
	__size_of_init_led	equ	__end_of_init_led-_init_led
	
_init_led:	
;incstack = 0
	opt	stack 13
; Regs used in _init_led: []
	line	28
	
l6829:	
;led.c: 28: (TRISAbits.TRISA1) = 0;
	movlb 1	; select bank1
	bcf	(140)^080h,1	;volatile
	line	30
;led.c: 30: (LATAbits.LATA1 = 0x00) ;
	movlb 2	; select bank2
	bcf	(268)^0100h,1	;volatile
	line	32
	
l151:	
	return
	opt stack 0
GLOBAL	__end_of_init_led
	__end_of_init_led:
	signat	_init_led,88
	global	_init_lcd

;; *************** function _init_lcd *****************
;; Defined at:
;;		line 60 in file "D:\MCUProject\YCQ\src\lcd12864.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_clear_screen
;;		_delay_us
;;		_transfer_command
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	60
global __ptext36
__ptext36:	;psect for function _init_lcd
psect	text36
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	60
	global	__size_of_init_lcd
	__size_of_init_lcd	equ	__end_of_init_lcd-_init_lcd
	
_init_lcd:	
;incstack = 0
	opt	stack 9
; Regs used in _init_lcd: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l9479:	
;lcd12864.c: 63: (TRISAbits.TRISA5) = 0;
	movlb 1	; select bank1
	bcf	(140)^080h,5	;volatile
	line	65
;lcd12864.c: 65: (LATAbits.LATA5 = 0x01);
	movlb 2	; select bank2
	bsf	(268)^0100h,5	;volatile
	line	67
;lcd12864.c: 67: (TRISCbits.TRISC0) = 0;
	movlb 1	; select bank1
	bcf	(142)^080h,0	;volatile
	line	69
;lcd12864.c: 69: (TRISCbits.TRISC1) = 0;
	bcf	(142)^080h,1	;volatile
	line	71
;lcd12864.c: 71: (TRISCbits.TRISC2) = 0;
	bcf	(142)^080h,2	;volatile
	line	73
;lcd12864.c: 73: (TRISCbits.TRISC3) = 0;
	bcf	(142)^080h,3	;volatile
	line	75
;lcd12864.c: 75: (TRISCbits.TRISC5) = 0;
	bcf	(142)^080h,5	;volatile
	line	78
;lcd12864.c: 78: LATCbits.LATC0=1;
	movlb 2	; select bank2
	bsf	(270)^0100h,0	;volatile
	line	79
;lcd12864.c: 79: LATCbits.LATC1=0;
	bcf	(270)^0100h,1	;volatile
	line	80
	
l9481:	
;lcd12864.c: 80: delay_us(100);
	movlw	064h
	movwf	(delay_us@count)
	clrf	(delay_us@count+1)
	fcall	_delay_us
	line	81
	
l9483:	
;lcd12864.c: 81: LATCbits.LATC1=1;
	movlb 2	; select bank2
	bsf	(270)^0100h,1	;volatile
	line	82
;lcd12864.c: 82: delay_us(100);
	movlw	064h
	movwf	(delay_us@count)
	clrf	(delay_us@count+1)
	fcall	_delay_us
	line	84
;lcd12864.c: 84: transfer_command(0xe2);
	movlw	(0E2h)
	fcall	_transfer_command
	line	85
;lcd12864.c: 85: delay_us(5);
	movlw	05h
	movwf	(delay_us@count)
	clrf	(delay_us@count+1)
	fcall	_delay_us
	line	86
;lcd12864.c: 86: transfer_command(0x2c);
	movlw	(02Ch)
	fcall	_transfer_command
	line	87
;lcd12864.c: 87: delay_us(5);
	movlw	05h
	movwf	(delay_us@count)
	clrf	(delay_us@count+1)
	fcall	_delay_us
	line	88
;lcd12864.c: 88: transfer_command(0x2e);
	movlw	(02Eh)
	fcall	_transfer_command
	line	89
;lcd12864.c: 89: delay_us(5);
	movlw	05h
	movwf	(delay_us@count)
	clrf	(delay_us@count+1)
	fcall	_delay_us
	line	90
;lcd12864.c: 90: transfer_command(0x2f);
	movlw	(02Fh)
	fcall	_transfer_command
	line	91
;lcd12864.c: 91: delay_us(5);
	movlw	05h
	movwf	(delay_us@count)
	clrf	(delay_us@count+1)
	fcall	_delay_us
	line	92
;lcd12864.c: 92: transfer_command(0x24);
	movlw	(024h)
	fcall	_transfer_command
	line	93
;lcd12864.c: 93: transfer_command(0x81);
	movlw	(081h)
	fcall	_transfer_command
	line	94
;lcd12864.c: 94: transfer_command(0x12);
	movlw	(012h)
	fcall	_transfer_command
	line	95
;lcd12864.c: 95: transfer_command(0xa2);
	movlw	(0A2h)
	fcall	_transfer_command
	line	96
;lcd12864.c: 96: transfer_command(0xc8);
	movlw	(0C8h)
	fcall	_transfer_command
	line	97
;lcd12864.c: 97: transfer_command(0xa0);
	movlw	(0A0h)
	fcall	_transfer_command
	line	98
;lcd12864.c: 98: transfer_command(0x40);
	movlw	(040h)
	fcall	_transfer_command
	line	99
;lcd12864.c: 99: transfer_command(0xaf);
	movlw	(0AFh)
	fcall	_transfer_command
	line	103
;lcd12864.c: 103: clear_screen();
	fcall	_clear_screen
	line	104
	
l544:	
	return
	opt stack 0
GLOBAL	__end_of_init_lcd
	__end_of_init_lcd:
	signat	_init_lcd,88
	global	_clear_screen

;; *************** function _clear_screen *****************
;; Defined at:
;;		line 195 in file "D:\MCUProject\YCQ\src\lcd12864.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    1[BANK0 ] unsigned char 
;;  j               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_address
;;		_transfer_data
;; This function is called by:
;;		_init_lcd
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	line	195
global __ptext37
__ptext37:	;psect for function _clear_screen
psect	text37
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	195
	global	__size_of_clear_screen
	__size_of_clear_screen	equ	__end_of_clear_screen-_clear_screen
	
_clear_screen:	
;incstack = 0
	opt	stack 9
; Regs used in _clear_screen: [wreg+status,2+status,0+pclath+cstack]
	line	199
	
l10699:	
;lcd12864.c: 197: unsigned char i,j;
;lcd12864.c: 199: for(i=0;i<9;i++)
	movlb 0	; select bank0
	clrf	(clear_screen@i)
	line	201
	
l10705:	
;lcd12864.c: 200: {
;lcd12864.c: 201: lcd_address(1+i,1);
	clrf	(lcd_address@column)
	incf	(lcd_address@column),f
	movf	(clear_screen@i),w
	addlw	01h
	fcall	_lcd_address
	line	203
	
l10707:	
;lcd12864.c: 203: for(j=0;j<132;j++)
	movlb 0	; select bank0
	clrf	(clear_screen@j)
	line	205
	
l10713:	
;lcd12864.c: 204: {
;lcd12864.c: 205: transfer_data(0x00);
	movlw	(0)
	fcall	_transfer_data
	line	203
	
l10715:	
	movlb 0	; select bank0
	incf	(clear_screen@j),f
	
l10717:	
	movlw	(084h)
	subwf	(clear_screen@j),w
	skipc
	goto	u8601
	goto	u8600
u8601:
	goto	l10713
u8600:
	line	199
	
l10719:	
	incf	(clear_screen@i),f
	
l10721:	
	movlw	(09h)
	subwf	(clear_screen@i),w
	skipc
	goto	u8611
	goto	u8610
u8611:
	goto	l10705
u8610:
	line	208
	
l568:	
	return
	opt stack 0
GLOBAL	__end_of_clear_screen
	__end_of_clear_screen:
	signat	_clear_screen,88
	global	_init_key

;; *************** function _init_key *****************
;; Defined at:
;;		line 75 in file "D:\MCUProject\YCQ\src\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\key.c"
	line	75
global __ptext38
__ptext38:	;psect for function _init_key
psect	text38
	file	"D:\MCUProject\YCQ\src\key.c"
	line	75
	global	__size_of_init_key
	__size_of_init_key	equ	__end_of_init_key-_init_key
	
_init_key:	
;incstack = 0
	opt	stack 13
; Regs used in _init_key: []
	line	77
	
l6903:	
;key.c: 77: (TRISBbits.TRISB3) = 1;
	movlb 1	; select bank1
	bsf	(141)^080h,3	;volatile
	line	78
;key.c: 78: (TRISBbits.TRISB7) = 1;
	bsf	(141)^080h,7	;volatile
	line	79
;key.c: 79: (TRISAbits.TRISA2) = 1;
	bsf	(140)^080h,2	;volatile
	line	80
;key.c: 80: (TRISBbits.TRISB4) = 1;
	bsf	(141)^080h,4	;volatile
	line	81
;key.c: 81: (TRISBbits.TRISB6) = 1;
	bsf	(141)^080h,6	;volatile
	line	82
;key.c: 82: (TRISAbits.TRISA7) = 1;
	bsf	(140)^080h,7	;volatile
	line	83
;key.c: 83: (TRISBbits.TRISB5) = 1;
	bsf	(141)^080h,5	;volatile
	line	84
;key.c: 84: (TRISBbits.TRISB2) = 1;
	bsf	(141)^080h,2	;volatile
	line	85
;key.c: 85: (TRISBbits.TRISB0) = 1;
	bsf	(141)^080h,0	;volatile
	line	86
;key.c: 86: (TRISBbits.TRISB1) = 1;
	bsf	(141)^080h,1	;volatile
	line	88
	
l796:	
	return
	opt stack 0
GLOBAL	__end_of_init_key
	__end_of_init_key:
	signat	_init_key,88
	global	_init_interrupt

;; *************** function _init_interrupt *****************
;; Defined at:
;;		line 245 in file "D:\MCUProject\YCQ\src\interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/1
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\interrupt.c"
	line	245
global __ptext39
__ptext39:	;psect for function _init_interrupt
psect	text39
	file	"D:\MCUProject\YCQ\src\interrupt.c"
	line	245
	global	__size_of_init_interrupt
	__size_of_init_interrupt	equ	__end_of_init_interrupt-_init_interrupt
	
_init_interrupt:	
;incstack = 0
	opt	stack 13
; Regs used in _init_interrupt: []
	line	248
	
l6827:	
;interrupt.c: 248: PEIE = 0x01;
	bsf	(94/8),(94)&7	;volatile
	line	249
;interrupt.c: 249: GIE = 0x01;
	bsf	(95/8),(95)&7	;volatile
	line	250
	
l140:	
	return
	opt stack 0
GLOBAL	__end_of_init_interrupt
	__end_of_init_interrupt:
	signat	_init_interrupt,88
	global	_init_beep

;; *************** function _init_beep *****************
;; Defined at:
;;		line 26 in file "D:\MCUProject\YCQ\src\beep.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/2
;;		On exit  : 17F/2
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\beep.c"
	line	26
global __ptext40
__ptext40:	;psect for function _init_beep
psect	text40
	file	"D:\MCUProject\YCQ\src\beep.c"
	line	26
	global	__size_of_init_beep
	__size_of_init_beep	equ	__end_of_init_beep-_init_beep
	
_init_beep:	
;incstack = 0
	opt	stack 13
; Regs used in _init_beep: []
	line	28
	
l6861:	
;beep.c: 28: (TRISAbits.TRISA0) =0;
	movlb 1	; select bank1
	bcf	(140)^080h,0	;volatile
	line	30
;beep.c: 30: (LATAbits.LATA0 = 0x00);
	movlb 2	; select bank2
	bcf	(268)^0100h,0	;volatile
	line	31
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_init_beep
	__end_of_init_beep:
	signat	_init_beep,88
	global	_application_init

;; *************** function _application_init *****************
;; Defined at:
;;		line 247 in file "D:\MCUProject\YCQ\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_BEEP_SPEAK
;;		_delay_ms
;;		_disp_grap
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\main.c"
	line	247
global __ptext41
__ptext41:	;psect for function _application_init
psect	text41
	file	"D:\MCUProject\YCQ\src\main.c"
	line	247
	global	__size_of_application_init
	__size_of_application_init	equ	__end_of_application_init-_application_init
	
_application_init:	
;incstack = 0
	opt	stack 10
; Regs used in _application_init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	250
	
l9485:	
;main.c: 250: TMR1ON =1;
	movlb 0	; select bank0
	bsf	(192/8),(192)&7	;volatile
	line	252
;main.c: 252: system_run_time=0x01;
	movlb 1	; select bank1
	clrf	(_system_run_time)^080h
	incf	(_system_run_time)^080h,f
	line	254
	
l9487:	
;main.c: 254: system_power_on_time_count=0x00;
	clrf	(_system_power_on_time_count)^080h
	clrf	(_system_power_on_time_count+1)^080h
	line	256
	
l9489:	
;main.c: 256: BEEP_SPEAK();
	fcall	_BEEP_SPEAK
	line	258
	
l9491:	
;main.c: 258: disp_grap(1,1,ZH01);
	movlb 0	; select bank0
	clrf	(disp_grap@column)
	incf	(disp_grap@column),f
	movlw	low(_ZH01|8000h)
	movwf	(disp_grap@dp)
	movlw	high(_ZH01|8000h)
	movwf	((disp_grap@dp))+1
	movlw	(01h)
	fcall	_disp_grap
	line	260
	
l9493:	
;main.c: 260: delay_ms(1000);
	movlw	low(03E8h)
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	262
	
l9495:	
;main.c: 262: disp_grap(1,1,graphic01);
	movlb 0	; select bank0
	clrf	(disp_grap@column)
	incf	(disp_grap@column),f
	movlw	low(_graphic01|8000h)
	movwf	(disp_grap@dp)
	movlw	high(_graphic01|8000h)
	movwf	((disp_grap@dp))+1
	movlw	(01h)
	fcall	_disp_grap
	line	264
	
l9497:	
;main.c: 264: delay_ms(500);
	movlw	low(01F4h)
	movwf	(delay_ms@count)
	movlw	high(01F4h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	267
	
l268:	
	return
	opt stack 0
GLOBAL	__end_of_application_init
	__end_of_application_init:
	signat	_application_init,88
	global	_disp_grap

;; *************** function _disp_grap *****************
;; Defined at:
;;		line 391 in file "D:\MCUProject\YCQ\src\lcd12864.c"
;; Parameters:    Size  Location     Type
;;  page            1    wreg     unsigned char 
;;  column          1    0[BANK0 ] unsigned char 
;;  dp              2    1[BANK0 ] PTR unsigned char 
;;		 -> zhuangtai02(1024), zhuangtai01(1024), canshu01(1024), graphic01(1024), 
;;		 -> ZH01(1024), 
;; Auto vars:     Size  Location     Type
;;  page            1    3[BANK0 ] unsigned char 
;;  i               1    5[BANK0 ] unsigned char 
;;  j               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_address
;;		_transfer_data
;; This function is called by:
;;		_application_init
;;		_handle_uart_rx_buf
;;		_scan_key_value
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	391
global __ptext42
__ptext42:	;psect for function _disp_grap
psect	text42
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	391
	global	__size_of_disp_grap
	__size_of_disp_grap	equ	__end_of_disp_grap-_disp_grap
	
_disp_grap:	
;incstack = 0
	opt	stack 10
; Regs used in _disp_grap: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;disp_grap@page stored from wreg
	movwf	(disp_grap@page)
	line	394
	
l9499:	
;lcd12864.c: 393: unsigned char i,j;
;lcd12864.c: 394: for(i=0;i<8;i++)
	clrf	(disp_grap@i)
	line	396
	
l9505:	
;lcd12864.c: 395: {
;lcd12864.c: 396: lcd_address(page+i,column);
	movf	(disp_grap@column),w
	movwf	(lcd_address@column)
	movf	(disp_grap@page),w
	addwf	(disp_grap@i),w
	fcall	_lcd_address
	line	397
	
l9507:	
;lcd12864.c: 397: for(j=0;j<128;j++)
	movlb 0	; select bank0
	clrf	(disp_grap@j)
	line	399
	
l9513:	
;lcd12864.c: 398: {
;lcd12864.c: 399: transfer_data(*dp);
	movf	(disp_grap@dp),w
	movwf	fsr0l
	movf	((disp_grap@dp+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_transfer_data
	line	400
	
l9515:	
;lcd12864.c: 400: dp++;
	movlb 0	; select bank0
	incf	(disp_grap@dp),f
	skipnz
	incf	(disp_grap@dp+1),f
	line	397
	
l9517:	
	incf	(disp_grap@j),f
	
l9519:	
	movlw	(080h)
	subwf	(disp_grap@j),w
	skipc
	goto	u6791
	goto	u6790
u6791:
	goto	l9513
u6790:
	line	394
	
l9521:	
	incf	(disp_grap@i),f
	
l9523:	
	movlw	(08h)
	subwf	(disp_grap@i),w
	skipc
	goto	u6801
	goto	u6800
u6801:
	goto	l9505
u6800:
	line	404
	
l665:	
	return
	opt stack 0
GLOBAL	__end_of_disp_grap
	__end_of_disp_grap:
	signat	_disp_grap,12408
	global	_transfer_data

;; *************** function _transfer_data *****************
;; Defined at:
;;		line 146 in file "D:\MCUProject\YCQ\src\lcd12864.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    7[COMMON] unsigned char 
;;  i               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1D/0
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_us
;; This function is called by:
;;		_clear_screen
;;		_display_string_8x16
;;		_disp_grap
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1
	line	146
global __ptext43
__ptext43:	;psect for function _transfer_data
psect	text43
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	146
	global	__size_of_transfer_data
	__size_of_transfer_data	equ	__end_of_transfer_data-_transfer_data
	
_transfer_data:	
;incstack = 0
	opt	stack 11
; Regs used in _transfer_data: [wreg+status,2+status,0+pclath+cstack]
;transfer_data@data stored from wreg
	movwf	(transfer_data@data)
	line	150
	
l10723:	
;lcd12864.c: 148: unsigned char i;
;lcd12864.c: 150: LATCbits.LATC0=0;
	movlb 2	; select bank2
	bcf	(270)^0100h,0	;volatile
	line	152
;lcd12864.c: 152: LATCbits.LATC2=1;
	bsf	(270)^0100h,2	;volatile
	line	154
	
l10725:	
;lcd12864.c: 154: for(i=0;i<8;i++)
	clrf	(transfer_data@i)
	line	155
	
l554:	
	line	156
;lcd12864.c: 155: {
;lcd12864.c: 156: LATCbits.LATC3=0;
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	158
	
l10731:	
;lcd12864.c: 158: delay_us(2);
	movlw	02h
	movwf	(delay_us@count)
	clrf	(delay_us@count+1)
	fcall	_delay_us
	line	160
	
l10733:	
;lcd12864.c: 160: if(data&0x80)
	btfss	(transfer_data@data),(7)&7
	goto	u8621
	goto	u8620
u8621:
	goto	l556
u8620:
	line	162
	
l10735:	
;lcd12864.c: 161: {
;lcd12864.c: 162: LATCbits.LATC5=1;
	movlb 2	; select bank2
	bsf	(270)^0100h,5	;volatile
	line	163
;lcd12864.c: 163: }
	goto	l557
	line	164
	
l556:	
	line	166
;lcd12864.c: 164: else
;lcd12864.c: 165: {
;lcd12864.c: 166: LATCbits.LATC5=0;
	movlb 2	; select bank2
	bcf	(270)^0100h,5	;volatile
	line	167
	
l557:	
	line	169
;lcd12864.c: 167: }
;lcd12864.c: 169: LATCbits.LATC3=1;
	bsf	(270)^0100h,3	;volatile
	line	171
	
l10737:	
;lcd12864.c: 171: delay_us(2);
	movlw	02h
	movwf	(delay_us@count)
	clrf	(delay_us@count+1)
	fcall	_delay_us
	line	173
	
l10739:	
;lcd12864.c: 173: data=data<<=1;
	lslf	(transfer_data@data),f
	movf	((transfer_data@data)),w
	movwf	(transfer_data@data)
	line	154
	
l10741:	
	incf	(transfer_data@i),f
	
l10743:	
	movlw	(08h)
	subwf	(transfer_data@i),w
	skipc
	goto	u8631
	goto	u8630
u8631:
	goto	l554
u8630:
	
l555:	
	line	176
;lcd12864.c: 174: }
;lcd12864.c: 176: LATCbits.LATC0=1;
	movlb 2	; select bank2
	bsf	(270)^0100h,0	;volatile
	line	178
	
l558:	
	return
	opt stack 0
GLOBAL	__end_of_transfer_data
	__end_of_transfer_data:
	signat	_transfer_data,4216
	global	_lcd_address

;; *************** function _lcd_address *****************
;; Defined at:
;;		line 181 in file "D:\MCUProject\YCQ\src\lcd12864.c"
;; Parameters:    Size  Location     Type
;;  page            1    wreg     unsigned char 
;;  column          1    9[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  page            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_transfer_command
;; This function is called by:
;;		_clear_screen
;;		_display_string_8x16
;;		_disp_grap
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1
	line	181
global __ptext44
__ptext44:	;psect for function _lcd_address
psect	text44
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	181
	global	__size_of_lcd_address
	__size_of_lcd_address	equ	__end_of_lcd_address-_lcd_address
	
_lcd_address:	
;incstack = 0
	opt	stack 10
; Regs used in _lcd_address: [wreg+status,2+status,0+pclath+cstack]
;lcd_address@page stored from wreg
	movwf	(lcd_address@page)
	line	183
	
l10745:	
;lcd12864.c: 183: column=column-1;
	movlw	(0FFh)
	addwf	(lcd_address@column),f
	line	185
;lcd12864.c: 185: page=page-1;
	movlw	(0FFh)
	addwf	(lcd_address@page),f
	line	187
	
l10747:	
;lcd12864.c: 187: transfer_command(0xb0+page);
	movf	(lcd_address@page),w
	addlw	0B0h
	fcall	_transfer_command
	line	189
	
l10749:	
;lcd12864.c: 189: transfer_command(((column>>4)&0x0f)+0x10);
	swapf	(lcd_address@column),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	addlw	010h
	fcall	_transfer_command
	line	190
	
l10751:	
;lcd12864.c: 190: transfer_command(column&0x0f);
	movf	(lcd_address@column),w
	andlw	low(0Fh)
	fcall	_transfer_command
	line	191
	
l561:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_address
	__end_of_lcd_address:
	signat	_lcd_address,8312
	global	_transfer_command

;; *************** function _transfer_command *****************
;; Defined at:
;;		line 110 in file "D:\MCUProject\YCQ\src\lcd12864.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    7[COMMON] unsigned char 
;;  i               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_us
;; This function is called by:
;;		_init_lcd
;;		_lcd_address
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1
	line	110
global __ptext45
__ptext45:	;psect for function _transfer_command
psect	text45
	file	"D:\MCUProject\YCQ\src\lcd12864.c"
	line	110
	global	__size_of_transfer_command
	__size_of_transfer_command	equ	__end_of_transfer_command-_transfer_command
	
_transfer_command:	
;incstack = 0
	opt	stack 10
; Regs used in _transfer_command: [wreg+status,2+status,0+pclath+cstack]
;transfer_command@data stored from wreg
	movwf	(transfer_command@data)
	line	114
	
l10677:	
;lcd12864.c: 112: unsigned char i;
;lcd12864.c: 114: LATCbits.LATC0=0;
	movlb 2	; select bank2
	bcf	(270)^0100h,0	;volatile
	line	116
;lcd12864.c: 116: LATCbits.LATC2=0;
	bcf	(270)^0100h,2	;volatile
	line	118
	
l10679:	
;lcd12864.c: 118: for(i=0;i<8;i++)
	clrf	(transfer_command@i)
	line	119
	
l547:	
	line	120
;lcd12864.c: 119: {
;lcd12864.c: 120: LATCbits.LATC3=0;
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	122
	
l10685:	
;lcd12864.c: 122: delay_us(2);
	movlw	02h
	movwf	(delay_us@count)
	clrf	(delay_us@count+1)
	fcall	_delay_us
	line	124
	
l10687:	
;lcd12864.c: 124: if(data&0x80)
	btfss	(transfer_command@data),(7)&7
	goto	u8581
	goto	u8580
u8581:
	goto	l549
u8580:
	line	126
	
l10689:	
;lcd12864.c: 125: {
;lcd12864.c: 126: LATCbits.LATC5=1;
	movlb 2	; select bank2
	bsf	(270)^0100h,5	;volatile
	line	127
;lcd12864.c: 127: }
	goto	l550
	line	128
	
l549:	
	line	130
;lcd12864.c: 128: else
;lcd12864.c: 129: {
;lcd12864.c: 130: LATCbits.LATC5=0;
	movlb 2	; select bank2
	bcf	(270)^0100h,5	;volatile
	line	131
	
l550:	
	line	133
;lcd12864.c: 131: }
;lcd12864.c: 133: LATCbits.LATC3=1;
	bsf	(270)^0100h,3	;volatile
	line	135
	
l10691:	
;lcd12864.c: 135: delay_us(2);
	movlw	02h
	movwf	(delay_us@count)
	clrf	(delay_us@count+1)
	fcall	_delay_us
	line	137
	
l10693:	
;lcd12864.c: 137: data=data<<=1;
	lslf	(transfer_command@data),f
	movf	((transfer_command@data)),w
	movwf	(transfer_command@data)
	line	118
	
l10695:	
	incf	(transfer_command@i),f
	
l10697:	
	movlw	(08h)
	subwf	(transfer_command@i),w
	skipc
	goto	u8591
	goto	u8590
u8591:
	goto	l547
u8590:
	
l548:	
	line	140
;lcd12864.c: 138: }
;lcd12864.c: 140: LATCbits.LATC0=1;
	movlb 2	; select bank2
	bsf	(270)^0100h,0	;volatile
	line	142
	
l551:	
	return
	opt stack 0
GLOBAL	__end_of_transfer_command
	__end_of_transfer_command:
	signat	_transfer_command,4216
	global	_delay_us

;; *************** function _delay_us *****************
;; Defined at:
;;		line 67 in file "D:\MCUProject\YCQ\src\delay.c"
;; Parameters:    Size  Location     Type
;;  count           2    1[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  j               2    5[COMMON] unsigned short 
;;  i               2    3[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_lcd
;;		_transfer_command
;;		_transfer_data
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\delay.c"
	line	67
global __ptext46
__ptext46:	;psect for function _delay_us
psect	text46
	file	"D:\MCUProject\YCQ\src\delay.c"
	line	67
	global	__size_of_delay_us
	__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	
_delay_us:	
;incstack = 0
	opt	stack 11
; Regs used in _delay_us: [wreg+status,2+status,0]
	line	71
	
l9443:	
;delay.c: 69: WORD i, j;
;delay.c: 71: for (i = 0; i < count; i++)
	clrf	(delay_us@i)
	clrf	(delay_us@i+1)
	goto	l9457
	line	73
	
l9445:	
;delay.c: 72: {
;delay.c: 73: for (j = 0; j < 1; j++)
	clrf	(delay_us@j)
	clrf	(delay_us@j+1)
	line	74
	
l18:	
	line	75
;delay.c: 74: {
;delay.c: 75: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	76
;delay.c: 76: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	77
;delay.c: 77: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	78
;delay.c: 78: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	79
;delay.c: 79: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	80
;delay.c: 80: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	81
;delay.c: 81: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	82
;delay.c: 82: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	73
	
l9451:	
	incf	(delay_us@j),f
	skipnz
	incf	(delay_us@j+1),f
	
l9453:	
	movf	(delay_us@j+1),w
	iorwf	(delay_us@j),w
	skipnz
	goto	u6771
	goto	u6770
u6771:
	goto	l18
u6770:
	line	71
	
l9455:	
	incf	(delay_us@i),f
	skipnz
	incf	(delay_us@i+1),f
	
l9457:	
	movf	(delay_us@count+1),w
	subwf	(delay_us@i+1),w
	skipz
	goto	u6785
	movf	(delay_us@count),w
	subwf	(delay_us@i),w
u6785:
	skipc
	goto	u6781
	goto	u6780
u6781:
	goto	l9445
u6780:
	line	85
	
l21:	
	return
	opt stack 0
GLOBAL	__end_of_delay_us
	__end_of_delay_us:
	signat	_delay_us,4216
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 46 in file "D:\MCUProject\YCQ\src\delay.c"
;; Parameters:    Size  Location     Type
;;  count           2    1[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  j               2    5[COMMON] unsigned short 
;;  i               2    3[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_application_init
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1
	line	46
global __ptext47
__ptext47:	;psect for function _delay_ms
psect	text47
	file	"D:\MCUProject\YCQ\src\delay.c"
	line	46
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 13
; Regs used in _delay_ms: [wreg+status,2+status,0]
	line	50
	
l6795:	
;delay.c: 48: WORD i, j;
;delay.c: 50: for (i = 0; i < count; i++)
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l6809
	line	52
	
l6797:	
;delay.c: 51: {
;delay.c: 52: for (j = 0; j < 1000; j++)
	clrf	(delay_ms@j)
	clrf	(delay_ms@j+1)
	line	53
	
l10:	
	line	54
;delay.c: 53: {
;delay.c: 54: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	55
;delay.c: 55: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	56
;delay.c: 56: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	57
;delay.c: 57: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	58
;delay.c: 58: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	59
;delay.c: 59: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	60
;delay.c: 60: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	61
;delay.c: 61: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	52
	
l6803:	
	incf	(delay_ms@j),f
	skipnz
	incf	(delay_ms@j+1),f
	
l6805:	
	movlw	high(03E8h)
	subwf	(delay_ms@j+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay_ms@j),w
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l10
u3390:
	line	50
	
l6807:	
	incf	(delay_ms@i),f
	skipnz
	incf	(delay_ms@i+1),f
	
l6809:	
	movf	(delay_ms@count+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u3405
	movf	(delay_ms@count),w
	subwf	(delay_ms@i),w
u3405:
	skipc
	goto	u3401
	goto	u3400
u3401:
	goto	l6797
u3400:
	line	64
	
l13:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	_BEEP_SPEAK

;; *************** function _BEEP_SPEAK *****************
;; Defined at:
;;		line 40 in file "D:\MCUProject\YCQ\src\beep.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0        unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1E/1
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_application_init
;;		_scan_key_value
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\YCQ\src\beep.c"
	line	40
global __ptext48
__ptext48:	;psect for function _BEEP_SPEAK
psect	text48
	file	"D:\MCUProject\YCQ\src\beep.c"
	line	40
	global	__size_of_BEEP_SPEAK
	__size_of_BEEP_SPEAK	equ	__end_of_BEEP_SPEAK-_BEEP_SPEAK
	
_BEEP_SPEAK:	
;incstack = 0
	opt	stack 13
; Regs used in _BEEP_SPEAK: [wreg]
	line	44
	
l6919:	
;beep.c: 44: (LATAbits.LATA0 = 0x01);
	movlb 2	; select bank2
	bsf	(268)^0100h,0	;volatile
	line	46
	
l6921:	
;beep.c: 46: beep_delay_time_count=20;
	movlw	(014h)
	movlb 1	; select bank1
	movwf	(_beep_delay_time_count)^080h
	line	48
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_BEEP_SPEAK
	__end_of_BEEP_SPEAK:
	signat	_BEEP_SPEAK,88
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    3[COMMON] unsigned char 
;;  rem             1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scan_key_value
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbmod.c"
	line	4
global __ptext49
__ptext49:	;psect for function ___lbmod
psect	text49
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbmod.c"
	line	4
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
;incstack = 0
	opt	stack 12
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l11305:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l11307:	
	clrf	(___lbmod@rem)
	line	12
	
l11309:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u9585:
	lsrf	(??___lbmod+0)+0,f
	decfsz	wreg,f
	goto	u9585
	lslf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l11311:	
	lslf	(___lbmod@dividend),f
	line	14
	
l11313:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u9591
	goto	u9590
u9591:
	goto	l11317
u9590:
	line	15
	
l11315:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l11317:	
	decfsz	(___lbmod@counter),f
	goto	u9601
	goto	u9600
u9601:
	goto	l11309
u9600:
	line	17
	
l11319:	
	movf	(___lbmod@rem),w
	line	18
	
l1478:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK0 ] float 
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3    7[BANK0 ] float 
;;  sign            1   11[BANK0 ] unsigned char 
;;  exp             1   10[BANK0 ] unsigned char 
;;  cntr            1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3      12       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_scan_key_value
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\ftdiv.c"
	line	49
global __ptext50
__ptext50:	;psect for function ___ftdiv
psect	text50
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 12
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l11117:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u9321
	goto	u9320
u9321:
	goto	l11121
u9320:
	line	56
	
l11119:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1395
	line	57
	
l11121:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u9331
	goto	u9330
u9331:
	goto	l1396
u9330:
	line	58
	
l11123:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1395
	
l1396:	
	line	59
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	60
	
l11125:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l11127:	
	movf	0+(((___ftdiv@f1))+2),w
	movwf	(___ftdiv@sign)
	line	62
	
l11129:	
	movf	0+(((___ftdiv@f2))+2),w
	xorwf	(___ftdiv@sign),f
	line	63
	
l11131:	
	movlw	(080h)
	andwf	(___ftdiv@sign),f
	line	64
	
l11133:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	
l11135:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l11137:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	
l11139:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	
l11141:	
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	line	70
	
l11143:	
	lslf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u9345
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u9345
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u9345:
	skipc
	goto	u9341
	goto	u9340
u9341:
	goto	l11149
u9340:
	line	72
	
l11145:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	subwfb	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	subwfb	(___ftdiv@f1+2),f
	line	73
	
l11147:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	75
	
l11149:	
	lslf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	76
	
l11151:	
	decfsz	(___ftdiv@cntr),f
	goto	u9351
	goto	u9350
u9351:
	goto	l11143
u9350:
	line	77
	
l11153:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movlb 0	; select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	78
	
l1395:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    1[COMMON] unsigned um
;;  exp             1    4[COMMON] unsigned char 
;;  sign            1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    1[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1D/0
;;		On exit  : 1D/0
;;		Unchanged: 1D/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\float.c"
	line	62
global __ptext51
__ptext51:	;psect for function ___ftpack
psect	text51
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 11
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l10923:	
	movf	(___ftpack@exp),w
	skipz
	goto	u8910
	goto	l1344
u8910:
	
l10925:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u8921
	goto	u8920
u8921:
	goto	l10929
u8920:
	
l1344:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l1345
	line	67
	
l10927:	
	incf	(___ftpack@exp),f
	line	68
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l10929:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u8931
	goto	u8930
u8931:
	goto	l10927
u8930:
	goto	l10933
	line	71
	
l10931:	
	incf	(___ftpack@exp),f
	line	72
	incf	(___ftpack@arg),f
	skipnz
	incf	(___ftpack@arg+1),f
	skipnz
	incf	(___ftpack@arg+2),f
	line	73
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	70
	
l10933:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u8941
	goto	u8940
u8941:
	goto	l10931
u8940:
	goto	l10937
	line	76
	
l10935:	
	decf	(___ftpack@exp),f
	line	77
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l10937:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u8951
	goto	u8950
u8951:
	goto	l10935
u8950:
	
l1354:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u8961
	goto	u8960
u8961:
	goto	l1355
u8960:
	line	80
	
l10939:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l1355:	
	line	81
	lsrf	(___ftpack@exp),f
	line	82
	
l10941:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0+2)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+0)
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l10943:	
	movf	(___ftpack@sign),w
	skipz
	goto	u8970
	goto	l1356
u8970:
	line	84
	
l10945:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1356:	
	line	85
	line	86
	
l1345:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 35 in file "D:\MCUProject\YCQ\src\interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  r1_data         1    0[COMMON] unsigned char 
;;  r2_data         1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1C/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"D:\MCUProject\YCQ\src\interrupt.c"
	line	35
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	opt	stack 9
; Regs used in _isr: [wreg+fsr1l+fsr1h+status,2+status,0]
psect	intentry
	pagesel	$
	line	40
	
i1l8839:	
;interrupt.c: 37: unsigned char r1_data,r2_data;
;interrupt.c: 40: if (TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7	;volatile
	goto	u640_21
	goto	u640_20
u640_21:
	goto	i1l8943
u640_20:
	
i1l8841:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u641_21
	goto	u641_20
u641_21:
	goto	i1l8943
u641_20:
	line	42
	
i1l8843:	
;interrupt.c: 41: {
;interrupt.c: 42: TMR1IF = 0x00;
	bcf	(136/8),(136)&7	;volatile
	line	43
	
i1l8845:	
;interrupt.c: 43: TMR1H = 0xE0;
	movlw	(0E0h)
	movwf	(23)	;volatile
	line	44
;interrupt.c: 44: TMR1L = 0xC0;
	movlw	(0C0h)
	movwf	(22)	;volatile
	line	47
;interrupt.c: 47: if(system_run_time==0x01)
	movlb 1	; select bank1
	decf	(_system_run_time)^080h,w
	skipz
	goto	u642_21
	goto	u642_20
u642_21:
	goto	i1l8895
u642_20:
	line	50
	
i1l8847:	
;interrupt.c: 48: {
;interrupt.c: 50: system_time_count++;
	incf	(_system_time_count)^080h,f
	skipnz
	incf	(_system_time_count+1)^080h,f
	line	52
	
i1l8849:	
;interrupt.c: 52: if(system_time_count>1000)
	movlw	high(03E9h)
	subwf	(_system_time_count+1)^080h,w
	movlw	low(03E9h)
	skipnz
	subwf	(_system_time_count)^080h,w
	skipc
	goto	u643_21
	goto	u643_20
u643_21:
	goto	i1l8861
u643_20:
	line	54
	
i1l8851:	
;interrupt.c: 53: {
;interrupt.c: 54: system_time_count=0x00;
	clrf	(_system_time_count)^080h
	clrf	(_system_time_count+1)^080h
	line	57
	
i1l8853:	
;interrupt.c: 57: system_power_on_time_count++;
	incf	(_system_power_on_time_count)^080h,f
	skipnz
	incf	(_system_power_on_time_count+1)^080h,f
	line	59
	
i1l8855:	
;interrupt.c: 59: if(system_power_on_time_count>=120)
	movlw	high(078h)
	subwf	(_system_power_on_time_count+1)^080h,w
	movlw	low(078h)
	skipnz
	subwf	(_system_power_on_time_count)^080h,w
	skipc
	goto	u644_21
	goto	u644_20
u644_21:
	goto	i1l8861
u644_20:
	line	61
	
i1l8857:	
;interrupt.c: 60: {
;interrupt.c: 61: system_power_on_time_count=0x00;
	clrf	(_system_power_on_time_count)^080h
	clrf	(_system_power_on_time_count+1)^080h
	line	63
	
i1l8859:	
;interrupt.c: 63: (LATAbits.LATA3 = 0x01);
	movlb 2	; select bank2
	bsf	(268)^0100h,3	;volatile
	line	68
	
i1l8861:	
;interrupt.c: 64: }
;interrupt.c: 66: }
;interrupt.c: 68: scan_key_time_count++;
	movlb 1	; select bank1
	incf	(_scan_key_time_count)^080h,f
	line	70
	
i1l8863:	
;interrupt.c: 70: if(scan_key_time_count>=40)
	movlw	(028h)
	subwf	(_scan_key_time_count)^080h,w
	skipc
	goto	u645_21
	goto	u645_20
u645_21:
	goto	i1l8869
u645_20:
	line	72
	
i1l8865:	
;interrupt.c: 71: {
;interrupt.c: 72: scan_key_time_count=0x00;
	clrf	(_scan_key_time_count)^080h
	line	74
	
i1l8867:	
;interrupt.c: 74: handle_scan_key_flag=0x01;
	clrf	(_handle_scan_key_flag)^080h
	incf	(_handle_scan_key_flag)^080h,f
	line	77
	
i1l8869:	
;interrupt.c: 75: }
;interrupt.c: 77: display_lcd_time_count++;
	incf	(_display_lcd_time_count)^080h,f
	skipnz
	incf	(_display_lcd_time_count+1)^080h,f
	line	79
	
i1l8871:	
;interrupt.c: 79: if(display_lcd_time_count>=400)
	movlw	high(0190h)
	subwf	(_display_lcd_time_count+1)^080h,w
	movlw	low(0190h)
	skipnz
	subwf	(_display_lcd_time_count)^080h,w
	skipc
	goto	u646_21
	goto	u646_20
u646_21:
	goto	i1l8879
u646_20:
	line	81
	
i1l8873:	
;interrupt.c: 80: {
;interrupt.c: 81: display_lcd_time_count=0x00;
	clrf	(_display_lcd_time_count)^080h
	clrf	(_display_lcd_time_count+1)^080h
	line	83
	
i1l8875:	
;interrupt.c: 83: dat_flag = dat_flag^0x01;
	movlw	(01h)
	xorwf	(_dat_flag)^080h,f
	line	85
	
i1l8877:	
;interrupt.c: 85: display_lcd_flag=0x01;
	clrf	(_display_lcd_flag)^080h
	incf	(_display_lcd_flag)^080h,f
	line	89
	
i1l8879:	
;interrupt.c: 86: }
;interrupt.c: 89: if(poll_time_enable)
	movf	(_poll_time_enable)^080h,w
	skipz
	goto	u647_20
	goto	i1l8889
u647_20:
	line	91
	
i1l8881:	
;interrupt.c: 90: {
;interrupt.c: 91: poll_time_count++;
	incf	(_poll_time_count)^080h,f
	skipnz
	incf	(_poll_time_count+1)^080h,f
	line	93
	
i1l8883:	
;interrupt.c: 93: if(poll_time_count>=1000)
	movlw	high(03E8h)
	subwf	(_poll_time_count+1)^080h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_poll_time_count)^080h,w
	skipc
	goto	u648_21
	goto	u648_20
u648_21:
	goto	i1l8889
u648_20:
	line	95
	
i1l8885:	
;interrupt.c: 94: {
;interrupt.c: 95: poll_time_count=0x00;
	clrf	(_poll_time_count)^080h
	clrf	(_poll_time_count+1)^080h
	line	97
	
i1l8887:	
;interrupt.c: 97: poll_task_flag=0x01;
	clrf	(_poll_task_flag)^080h
	incf	(_poll_task_flag)^080h,f
	line	102
	
i1l8889:	
;interrupt.c: 98: }
;interrupt.c: 99: }
;interrupt.c: 102: if(beep_delay_time_count>0)
	movf	(_beep_delay_time_count)^080h,w
	skipz
	goto	u649_20
	goto	i1l8895
u649_20:
	line	104
	
i1l8891:	
;interrupt.c: 103: {
;interrupt.c: 104: beep_delay_time_count--;
	decf	(_beep_delay_time_count)^080h,f
	line	106
;interrupt.c: 106: if(beep_delay_time_count==0x00)
	movf	(_beep_delay_time_count)^080h,f
	skipz
	goto	u650_21
	goto	u650_20
u650_21:
	goto	i1l8895
u650_20:
	line	108
	
i1l8893:	
;interrupt.c: 107: {
;interrupt.c: 108: (LATAbits.LATA0 = 0x00);
	movlb 2	; select bank2
	bcf	(268)^0100h,0	;volatile
	line	117
	
i1l8895:	
;interrupt.c: 109: }
;interrupt.c: 110: }
;interrupt.c: 113: }
;interrupt.c: 117: if (uart1_time_count > 0x00)
	movlb 1	; select bank1
	movf	(_uart1_time_count)^080h,w
	skipz
	goto	u651_20
	goto	i1l8931
u651_20:
	line	119
	
i1l8897:	
;interrupt.c: 118: {
;interrupt.c: 119: uart1_time_count--;
	decf	(_uart1_time_count)^080h,f
	line	121
;interrupt.c: 121: if(uart1_time_count==0)
	movf	(_uart1_time_count)^080h,f
	skipz
	goto	u652_21
	goto	u652_20
u652_21:
	goto	i1l8931
u652_20:
	line	123
	
i1l8899:	
;interrupt.c: 122: {
;interrupt.c: 123: if((uart1_receive_byte_count==16)&&(uart1_rx_buf[1]==0xB1)&&(uart1_rx_buf[15]==0xAA))
	movf	(_uart1_receive_byte_count),w
	xorlw	010h&0ffh
	skipz
	goto	u653_21
	goto	u653_20
u653_21:
	goto	i1l8907
u653_20:
	
i1l8901:	
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+01h,w
	xorlw	0B1h&0ffh
	skipz
	goto	u654_21
	goto	u654_20
u654_21:
	goto	i1l8907
u654_20:
	
i1l8903:	
	movf	0+(_uart1_rx_buf)^0100h+0Fh,w
	xorlw	0AAh&0ffh
	skipz
	goto	u655_21
	goto	u655_20
u655_21:
	goto	i1l8907
u655_20:
	line	125
	
i1l8905:	
;interrupt.c: 124: {
;interrupt.c: 125: rx_frame_kind=0x01;
	movlb 1	; select bank1
	clrf	(_rx_frame_kind)^080h
	incf	(_rx_frame_kind)^080h,f
	line	127
;interrupt.c: 127: uart1_receive_flag=TRUE;
	clrf	(_uart1_receive_flag)^080h
	incf	(_uart1_receive_flag)^080h,f
	line	128
;interrupt.c: 128: }
	goto	i1l8931
	line	129
	
i1l8907:	
;interrupt.c: 129: else if((uart1_receive_byte_count==10)&&(uart1_rx_buf[1]==0xB2)&&(uart1_rx_buf[9]==0xAA))
	movf	(_uart1_receive_byte_count),w
	xorlw	0Ah&0ffh
	skipz
	goto	u656_21
	goto	u656_20
u656_21:
	goto	i1l8917
u656_20:
	
i1l8909:	
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+01h,w
	xorlw	0B2h&0ffh
	skipz
	goto	u657_21
	goto	u657_20
u657_21:
	goto	i1l8917
u657_20:
	
i1l8911:	
	movf	0+(_uart1_rx_buf)^0100h+09h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u658_21
	goto	u658_20
u658_21:
	goto	i1l8917
u658_20:
	line	131
	
i1l8913:	
;interrupt.c: 130: {
;interrupt.c: 131: rx_frame_kind=0x02;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_rx_frame_kind)^080h
	line	133
	
i1l8915:	
;interrupt.c: 133: uart1_receive_flag=TRUE;
	clrf	(_uart1_receive_flag)^080h
	incf	(_uart1_receive_flag)^080h,f
	line	134
;interrupt.c: 134: }
	goto	i1l8931
	line	135
	
i1l8917:	
;interrupt.c: 135: else if((uart1_receive_byte_count==6)&&(uart1_rx_buf[1]==0xB3)&&(uart1_rx_buf[5]==0xAA))
	movf	(_uart1_receive_byte_count),w
	xorlw	06h&0ffh
	skipz
	goto	u659_21
	goto	u659_20
u659_21:
	goto	i1l120
u659_20:
	
i1l8919:	
	movlb 2	; select bank2
	movf	0+(_uart1_rx_buf)^0100h+01h,w
	xorlw	0B3h&0ffh
	skipz
	goto	u660_21
	goto	u660_20
u660_21:
	goto	i1l120
u660_20:
	
i1l8921:	
	movf	0+(_uart1_rx_buf)^0100h+05h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u661_21
	goto	u661_20
u661_21:
	goto	i1l120
u661_20:
	line	137
	
i1l8923:	
;interrupt.c: 136: {
;interrupt.c: 137: rx_frame_kind=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_rx_frame_kind)^080h
	goto	i1l8915
	line	141
	
i1l120:	
	line	143
;interrupt.c: 141: else
;interrupt.c: 142: {
;interrupt.c: 143: if (RCSTAbits.FERR || RCSTAbits.OERR)
	movlb 3	; select bank3
	btfsc	(413)^0180h,2	;volatile
	goto	u662_21
	goto	u662_20
u662_21:
	goto	i1l124
u662_20:
	
i1l8927:	
	btfss	(413)^0180h,1	;volatile
	goto	u663_21
	goto	u663_20
u663_21:
	goto	i1l8929
u663_20:
	
i1l124:	
	line	145
;interrupt.c: 144: {
;interrupt.c: 145: RCSTAbits.CREN = 0x00;
	bcf	(413)^0180h,4	;volatile
	line	146
;interrupt.c: 146: RCSTAbits.SPEN = 0x00;
	bcf	(413)^0180h,7	;volatile
	line	147
;interrupt.c: 147: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	148
;interrupt.c: 148: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	149
;interrupt.c: 149: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	150
;interrupt.c: 150: RCSTAbits.CREN = 0x01;
	movlb 3	; select bank3
	bsf	(413)^0180h,4	;volatile
	line	151
;interrupt.c: 151: RCSTAbits.SPEN = 0x01;
	bsf	(413)^0180h,7	;volatile
	line	154
	
i1l8929:	
;interrupt.c: 152: }
;interrupt.c: 154: uart1_receive_byte_count=0x00;
	clrf	(_uart1_receive_byte_count)
	line	160
	
i1l8931:	
;interrupt.c: 155: }
;interrupt.c: 156: }
;interrupt.c: 158: }
;interrupt.c: 160: if (uart_send_delay_timer > 0x00)
	movlb 1	; select bank1
	movf	(_uart_send_delay_timer)^080h,w
	skipz
	goto	u664_20
	goto	i1l8937
u664_20:
	line	162
	
i1l8933:	
;interrupt.c: 161: {
;interrupt.c: 162: uart_send_delay_timer--;
	decf	(_uart_send_delay_timer)^080h,f
	line	164
;interrupt.c: 164: if (uart_send_delay_timer == 0x00)
	movf	(_uart_send_delay_timer)^080h,f
	skipz
	goto	u665_21
	goto	u665_20
u665_21:
	goto	i1l8937
u665_20:
	line	166
	
i1l8935:	
;interrupt.c: 165: {
;interrupt.c: 166: TXIE = 0x01;
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	171
	
i1l8937:	
;interrupt.c: 167: }
;interrupt.c: 169: }
;interrupt.c: 171: if (uart_send_end_flag == 0x01)
	decf	(_uart_send_end_flag)^080h,w
	skipz
	goto	u666_21
	goto	u666_20
u666_21:
	goto	i1l8943
u666_20:
	line	173
	
i1l8939:	
;interrupt.c: 172: {
;interrupt.c: 173: if (TXSTAbits.TRMT)
	movlb 3	; select bank3
	btfss	(414)^0180h,1	;volatile
	goto	u667_21
	goto	u667_20
u667_21:
	goto	i1l8943
u667_20:
	line	175
	
i1l8941:	
;interrupt.c: 174: {
;interrupt.c: 175: uart_send_end_flag = 0x00;
	movlb 1	; select bank1
	clrf	(_uart_send_end_flag)^080h
	line	186
	
i1l8943:	
;interrupt.c: 176: }
;interrupt.c: 178: }
;interrupt.c: 182: }
;interrupt.c: 186: if (TXIE && TXIF)
	movlb 1	; select bank1
	btfss	(1164/8)^080h,(1164)&7	;volatile
	goto	u668_21
	goto	u668_20
u668_21:
	goto	i1l129
u668_20:
	
i1l8945:	
	movlb 0	; select bank0
	btfss	(140/8),(140)&7	;volatile
	goto	u669_21
	goto	u669_20
u669_21:
	goto	i1l129
u669_20:
	line	188
	
i1l8947:	
;interrupt.c: 187: {
;interrupt.c: 188: if (uart_send_byte_count > 0x00)
	movlb 1	; select bank1
	movf	(_uart_send_byte_count)^080h,w
	skipz
	goto	u670_20
	goto	i1l8955
u670_20:
	line	190
	
i1l8949:	
;interrupt.c: 189: {
;interrupt.c: 190: uart_send_byte_count--;
	decf	(_uart_send_byte_count)^080h,f
	line	191
	
i1l8951:	
;interrupt.c: 191: TXREG = *uart_send_point;
	movf	(_uart_send_point)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	192
	
i1l8953:	
;interrupt.c: 192: uart_send_point++;
	movlb 1	; select bank1
	incf	(_uart_send_point)^080h,f
	line	193
;interrupt.c: 193: }
	goto	i1l129
	line	194
	
i1l8955:	
;interrupt.c: 194: else if (uart_send_byte_count == 0x00)
	movf	(_uart_send_byte_count)^080h,f
	skipz
	goto	u671_21
	goto	u671_20
u671_21:
	goto	i1l132
u671_20:
	line	196
	
i1l8957:	
;interrupt.c: 195: {
;interrupt.c: 196: uart_send_end_flag = 0x01;
	clrf	(_uart_send_end_flag)^080h
	incf	(_uart_send_end_flag)^080h,f
	line	197
;interrupt.c: 197: TXIE = 0x00;
	bcf	(1164/8)^080h,(1164)&7	;volatile
	line	198
;interrupt.c: 198: }
	goto	i1l129
	line	199
	
i1l132:	
	line	201
;interrupt.c: 199: else
;interrupt.c: 200: {
;interrupt.c: 201: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	203
	
i1l129:	
	line	205
;interrupt.c: 202: }
;interrupt.c: 203: }
;interrupt.c: 205: if(RCIF && RCIE)
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u672_21
	goto	u672_20
u672_21:
	goto	i1l137
u672_20:
	
i1l8959:	
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7	;volatile
	goto	u673_21
	goto	u673_20
u673_21:
	goto	i1l137
u673_20:
	line	208
	
i1l8961:	
;interrupt.c: 206: {
;interrupt.c: 208: r1_data=RCREG;
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	movwf	(isr@r1_data)
	line	210
;interrupt.c: 210: uart1_time_count=0x0A;
	movlw	(0Ah)
	movlb 1	; select bank1
	movwf	(_uart1_time_count)^080h
	line	212
;interrupt.c: 212: if( (uart1_receive_byte_count<16)&&(uart1_receive_flag==FALSE) )
	movlw	(010h)
	subwf	(_uart1_receive_byte_count),w
	skipnc
	goto	u674_21
	goto	u674_20
u674_21:
	goto	i1l137
u674_20:
	
i1l8963:	
	movf	(_uart1_receive_flag)^080h,f
	skipz
	goto	u675_21
	goto	u675_20
u675_21:
	goto	i1l137
u675_20:
	line	214
	
i1l8965:	
;interrupt.c: 213: {
;interrupt.c: 214: uart1_rx_buf[uart1_receive_byte_count]=r1_data;
	movf	(_uart1_receive_byte_count),w
	addlw	_uart1_rx_buf&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(isr@r1_data),w
	movwf	indf1
	line	216
	
i1l8967:	
;interrupt.c: 216: if(uart1_rx_buf[0]==0x55)
	movlb 2	; select bank2
	movf	(_uart1_rx_buf)^0100h,w
	xorlw	055h&0ffh
	skipz
	goto	u676_21
	goto	u676_20
u676_21:
	goto	i1l137
u676_20:
	line	218
	
i1l8969:	
;interrupt.c: 217: {
;interrupt.c: 218: uart1_receive_byte_count++;
	incf	(_uart1_receive_byte_count),f
	line	230
	
i1l137:	
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
global	___latbits
___latbits	equ	3
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
