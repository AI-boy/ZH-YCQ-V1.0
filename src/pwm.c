 
 
 
#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"






/**********************************************************************
*�������ƣ�init_pwm
*������CPP1 CCP2 CCP3 CCP4 CCP5   Time2/Time4/Time6/    
*�������ͣ�void
*�����βΣ�void
***********************************************************************/
void init_pwm(void)
{

	
	//----------------------------�����ز�Ƶ��38kHz   CCP5  TIME2
	
	PWM_IRD_TRIS=0;					//�����ز�Ƶ��38kHz �˿�����Ϊ���ģʽ
	
	PR2=0xCE;  		   				//PWM��������	Fosc=32MHz  PWM���Ƶ��fp=38Khz  �ֱ���10λ    PR2= Fosc/4/fp - 1
	
	CCP5CONbits.CCP5M=0b1100;
	
	CCP5CONbits.P5M=0b00;
	
	CCPTMRS1bits.C5TSEL=0b00;      					//CCP5 ѡ��TIME2 
														
	CCPR5L=(unsigned char)(0x114>>2);				//ռ�ձ�����  ������  1/3
	
	CCP5CONbits.DC5B=(unsigned char)(0x114&0b11);	
	
	TMR2IF=0;
	
	T2CONbits.T2OUTPS=0b0000;
	
	TMR2ON=0;
	
	T2CONbits.T2CKPS=0b00;    	  //Ԥ��ƵֵΪ1
	
}



