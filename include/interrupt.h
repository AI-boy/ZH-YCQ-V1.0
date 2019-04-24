
#ifndef _ZH_INTERRUPT_H
#define _ZH_INTERRUPT_H

//**--------------包含文件-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------

//**--------------数据结构-----------------------------------------------------

//**--------------函数申明-----------------------------------------------------
extern void init_interrupt(void);
	
//**--------------全局变量-----------------------------------------------------



extern unsigned char system_run_time;

extern unsigned int system_time_count;

//extern unsigned char delay_time_count;

//extern unsigned char xinhao_cnt;

extern unsigned int display_lcd_time_count;
							
extern unsigned char display_lcd_flag;

extern unsigned char dat_flag;









#endif 
