 #ifndef _USERDEFINE_H
 #define _USERDEFINE_H
 
 
#include	<stdio.h>
#include	<stdarg.h>
#include	<string.h>
 


//------------------------------------------------------------------------------------------------��������ͷ�ļ�
 	#include"delay.h"
	#include"interrupt.h"
	#include"led.h"
	#include"timer.h"
	#include"uart.h"
	#include"pwm.h"
	#include"Modbus.h"
	#include"lcd12864.h"
	#include"beep.h"
	#include"key.h"
	#include"ird_remote.h"
//-------------------------------------------------------------------------------------------------


//-------------------------------------------------------------------------------------------------

//��Դ����
#define POWER_TRIS			(TRISAbits.TRISA3) 				// RA1
#define POWER_ON			(LATAbits.LATA3 = 0x00) 		// ����͵�ƽ   ����
#define POWER_OFF			(LATAbits.LATA3 = 0x01) 		// ����ߵ�ƽ   �ػ�



#define BIT0  0
#define BIT1  1
#define BIT2  2
#define BIT3  3
#define BIT4  4
#define BIT5  5
#define BIT6  6
#define BIT7  7



#define MAC_ADDR   0x55         //����ң���豸��ַ


#define _XTAL_FREQ	32000000


#define uchar unsigned char
#define uint  unsigned int
#define ulong unsigned long





//ȫ�ֱ�������

extern unsigned int system_power_on_time_count;



















#endif