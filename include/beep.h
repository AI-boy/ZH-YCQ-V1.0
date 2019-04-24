 
#ifndef _ZH_BEEP_H
#define _ZH_BEEP_H


//**--------------包含文件-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------



//照明LED
#define BEEP_TRIS			(TRISAbits.TRISA0) 				// RA1
#define BEEP_OFF			(LATAbits.LATA0 = 0x00) 		// 输出低电平
#define BEEP_ON				(LATAbits.LATA0 = 0x01) 		// 输出高电平
#define BEEP_TOG			(LATAbits.LATA0 ^= 0x01) 		// 输出反电平








//**--------------数据结构-----------------------------------------------------

extern unsigned char beep_delay_time_count;

//**--------------函数申明-----------------------------------------------------


extern void init_beep(void);

extern void BEEP_SPEAK(void);
	


#endif 
