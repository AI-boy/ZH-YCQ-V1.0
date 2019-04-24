
#ifndef _ZH_LED_H
#define _ZH_LED_H


//**--------------包含文件-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------



//照明LED
#define RUN_LED_TRIS		(TRISAbits.TRISA1) 				// RA1
#define RUN_LED_OFF			(LATAbits.LATA1 = 0x00) 		// 输出低电平
#define RUN_LED_ON			(LATAbits.LATA1 = 0x01) 		// 输出高电平
#define RUN_LED_TOG			(LATAbits.LATA1 ^= 0x01) 		// 输出反电平










//**--------------数据结构-----------------------------------------------------

//**--------------函数申明-----------------------------------------------------


extern void init_led(void);
	


#endif 
