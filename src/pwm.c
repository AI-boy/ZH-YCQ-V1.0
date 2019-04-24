 
 
 
#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"






/**********************************************************************
*函数名称：init_pwm
*描述：CPP1 CCP2 CCP3 CCP4 CCP5   Time2/Time4/Time6/    
*返回类型：void
*输入形参：void
***********************************************************************/
void init_pwm(void)
{

	
	//----------------------------红外载波频率38kHz   CCP5  TIME2
	
	PWM_IRD_TRIS=0;					//红外载波频率38kHz 端口设置为输出模式
	
	PR2=0xCE;  		   				//PWM周期设置	Fosc=32MHz  PWM输出频率fp=38Khz  分辨率10位    PR2= Fosc/4/fp - 1
	
	CCP5CONbits.CCP5M=0b1100;
	
	CCP5CONbits.P5M=0b00;
	
	CCPTMRS1bits.C5TSEL=0b00;      					//CCP5 选择TIME2 
														
	CCPR5L=(unsigned char)(0x114>>2);				//占空比设置  脉冲宽度  1/3
	
	CCP5CONbits.DC5B=(unsigned char)(0x114&0b11);	
	
	TMR2IF=0;
	
	T2CONbits.T2OUTPS=0b0000;
	
	TMR2ON=0;
	
	T2CONbits.T2CKPS=0b00;    	  //预分频值为1
	
}



