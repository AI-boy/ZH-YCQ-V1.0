 
#ifndef _ZH_BEEP_H
#define _ZH_BEEP_H


//**--------------�����ļ�-----------------------------------------------------

//**--------------�궨��-------------------------------------------------------



//����LED
#define BEEP_TRIS			(TRISAbits.TRISA0) 				// RA1
#define BEEP_OFF			(LATAbits.LATA0 = 0x00) 		// ����͵�ƽ
#define BEEP_ON				(LATAbits.LATA0 = 0x01) 		// ����ߵ�ƽ
#define BEEP_TOG			(LATAbits.LATA0 ^= 0x01) 		// �������ƽ








//**--------------���ݽṹ-----------------------------------------------------

extern unsigned char beep_delay_time_count;

//**--------------��������-----------------------------------------------------


extern void init_beep(void);

extern void BEEP_SPEAK(void);
	


#endif 
