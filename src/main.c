/******************************************************************************
**                           志和兴业有限公司
**
**                           
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名	: main.c
** 当前    版本	: V1.0 
** 描        述 : 遥控器主程序
** 编   译   器 : xc8
** 硬        件 : 遥控器
**--------------历史版本信息---------------------------------------------------
** 开始创建日期	: 2018-01-31
** 创   建   人	: 蔡维凯
** 版  	     本 : V1.0
** 描　      述 : 

**-----------------------------------------------------------------------------
*******************************************************************************/

//**--------------头文件-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include <stdio.h>
#include <string.h>

#include"userdefine.h"







//**--------------配置位(只针对PIC系列单片机)----------------------------------

//Register: CONFIG1 @ 0x8007

#pragma config   CPD =    OFF		 //Data Memory Code Protection 
									 //OFF Data memory code protection is disabled 
									 //ON Data memory code protection is enabled 
									
#pragma config   BOREN = ON
									//Brown-out Reset Enable 
									//OFF Brown-out Reset disabled 
									//ON Brown-out Reset enabled 
									//NSLEEP Brown-out Reset enabled while running and disabled in Sleep 
									//SBODEN Brown-out Reset controlled by the SBOREN bit in the BORCON register 

#pragma config   IESO = OFF 
									//Internal/External Switchover 
									//OFF Internal/External Switchover mode is disabled 
									//ON Internal/External Switchover mode is enabled 

#pragma config   FOSC = INTOSC
									//Oscillator Selection 
									//ECM ECM, External Clock, Medium Power Mode (0.5-4 MHz): device clock supplied to CLKIN pin 
									//XT XT Oscillator, Crystal/resonator connected between OSC1 and OSC2 pins 
									//LP LP Oscillator, Low-power crystal connected between OSC1 and OSC2 pins 
									//EXTRC EXTRC oscillator: External RC circuit connected to CLKIN pin 
									//ECH ECH, External Clock, High Power Mode (4-32 MHz): device clock supplied to CLKIN pin 
									//ECL ECL, External Clock, Low Power Mode (0-0.5 MHz): device clock supplied to CLKIN pin 
									//INTOSC INTOSC oscillator: I/O function on CLKIN pin 
									//HS HS Oscillator, High-speed crystal/resonator connected between OSC1 and OSC2 pins 

#pragma config   FCMEN = OFF
									//Fail-Safe Clock Monitor Enable 
									//OFF Fail-Safe Clock Monitor is disabled 
									//ON Fail-Safe Clock Monitor is enabled 

#pragma config   MCLRE = OFF
									//MCLR Pin Function Select 
									//OFF MCLR/VPP pin function is digital input 
									//ON MCLR/VPP pin function is MCLR 

#pragma config   WDTE = ON
									//Watchdog Timer Enable 
									//OFF WDT disabled 
									//ON WDT enabled 
									//NSLEEP WDT enabled while running and disabled in Sleep 
									//SWDTEN WDT controlled by the SWDTEN bit in the WDTCON register 

#pragma config   CP = OFF
									//Flash Program Memory Code Protection 
									//OFF Program memory code protection is disabled 
									//ON Program memory code protection is enabled 

#pragma config   PWRTE = OFF
									//Power-up Timer Enable 
									//OFF PWRT disabled 
									//ON PWRT enabled 

#pragma config   CLKOUTEN = OFF
									//Clock Out Enable 
									//OFF CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin 
									//ON CLKOUT function is enabled on the CLKOUT pin 

//----------------------------------Register: CONFIG2 @ 0x8008

#pragma config   PLLEN = ON
									//PLL Enable 
									//OFF 4x PLL disabled 
									//ON 4x PLL enabled 

#pragma config   WRT = OFF
									//Flash Memory Self-Write Protection 
									//OFF Write protection off 
									//BOOT 000h to 1FFh write protected, 200h to 3FFFh may be modified by EECON control 
									//HALF 000h to 1FFFh write protected, 2000h to 3FFFh may be modified by EECON control 
									//ALL 000h to 3FFFh write protected, no addresses may be modified by EECON control 

#pragma config   STVREN = ON
									//Stack Overflow/Underflow Reset Enable 
									//OFF Stack Overflow or Underflow will not cause a Reset 
									//ON Stack Overflow or Underflow will cause a Reset 

#pragma config   BORV = LO
									//Brown-out Reset Voltage Selection 
									//LO Brown-out Reset Voltage (Vbor), low trip point selected. 
									//HI Brown-out Reset Voltage (Vbor), high trip point selected. 

#pragma config   VCAPEN = RA6
									//Voltage Regulator Capacitor Enable 
									//RA5 VCAP functionality is enabled on RA5 
									//OFF All VCAP pin functionality is disabled 
									//RA6 VCAP functionality is enabled on RA6 
									//RA0 VCAP functionality is enabled on RA0 

#pragma config   LVP = ON
									//Low-Voltage Programming Enable 
									//OFF High-voltage on MCLR/VPP must be used for programming 
									//ON Low-voltage programming enabled 			



//**--------------全局变量-----------------------------------------------------

unsigned int system_power_on_time_count=0x00;

//**--------------宏定义-------------------------------------------------------

//**--------------函数申明-----------------------------------------------------

//**--------------函数定义-----------------------------------------------------







/**********************************************************************
*函数名称：init_osc
*描述：系统时钟初配置
*返回类型：void
*输入形参：void
***********************************************************************/
void init_osc(void)
{
	OSCCON = 0x70;				 // 0b0111 0000 振荡器控制寄存器  内部时钟 8MHz/32MHz
	WDTCONbits.WDTPS=0b01110;    //看门狗周期 16s
}






/**********************************************************************
*函数名称：init_port
*描述：端口初始化
*返回类型：void
*输入形参：void
***********************************************************************/
void init_port(void)
{
	ANSELA = 0x00; // 将 RA<5:0>引脚选择为数字功能
	ANSELB = 0x00; // 将 RB<5:0> 引脚选择为数字功能
	
	POWER_TRIS = 0;	
	POWER_ON;
	

}




/**********************************************************************
*函数名称：driver_init
*描述：驱动层初始化
*返回类型：void
*输入形参：void
***********************************************************************/
void driver_init(void)
{
	init_osc();	    	//系统时钟配置
		
	init_port();		//IO端口及外设端口初始化
	
	init_led();     	//初始化LED指示灯
	
	init_beep();		//初始化BEEP蜂鸣器
	
	init_timer1();  	//初始化定时器TIMER1
	
	init_uart1();   	//初始化uart
		
	init_pwm();     	//初始化pwm 38KHz 红外载波频率信号
	
	init_lcd();			//初始化LCD  液晶显示COG
	
	init_key();			//初始化key 
	
	init_interrupt();	//初始化中断
	
	
}




/**********************************************************************
*函数名称：middle_init
*描述：中间层初始化
*返回类型：void
*输入形参：void
***********************************************************************/
void middle_init(void)
{
	read_param_eeprom();  //读取系统参数
}







/**********************************************************************
*函数名称：application_init
*描述：应用层初始化
*返回类型：void
*输入形参：void
***********************************************************************/
void application_init(void)
{
	unsigned char a[]="Solar Remote!";
	unsigned char b[]="Welcoming....";
	unsigned char c[]="[-V1.0]";
	unsigned char d[]="--ZH and POWER--";
	TMR1ON =1;//开启时基定时器 1ms最小周期
	
	system_run_time=0x01;
	
	system_power_on_time_count=0x00;
	
    
    display_string_8x16(1,1,d);
    display_string_8x16(3,17,a);
    display_string_8x16(5,17,b);
    display_string_8x16(7,76,c);
    
    delay_ms(100);
    	
}







/*---------------------------------------------------------------------
*函数名称：main
*描述：
*返回类型：int
*输入形参：void
---------------------------------------------------------------------*/
int main(void) // 主程序
{
	driver_init(); 		// 驱动层初始化
	middle_init(); 		// 中间层初始化
	application_init(); // 应用层初始化
	
	
	while(1)
	{
		
		CLRWDT();  //喂狗  看门狗周期16s				
		
		if(handle_scan_key_flag==0x01)
		{
			scan_key_value();
			
			handle_scan_key_flag=0x00;
		}
		
		if((poll_task_flag==0x01)&&(menu_index_q==0x01))   //周期轮询读取控制器运行数据
		{
			read_run_data();
						
			poll_task_flag=0x00;  //!!
		}
		
		if(display_lcd_flag==0x01)
		{
			if(menu_index_q==0x01)   //运行状态数据显示刷新
			{
				if(zhuangtai_cnt==1)
				{
					sprintf(buf, "%5.2fV\n", p_v/100);   //光伏输入电压
					 			 	
					display_string_8x16(3,80,buf);
					 			 	
					sprintf(buf, "%5.2fV\n", b_v/100);   //电池端电压
					 			 	
					display_string_8x16(5,80,buf);
					 			 	
					sprintf(buf, "%5.2fV\n", load_v/100); //输出端电压
					 			 	
					display_string_8x16(7,80,buf);
				}
				else if(zhuangtai_cnt==2)
				{
					sprintf(buf, "%5.2fA\n", charge_I/100);  //充电电流
					 			 	
					display_string_8x16(3,80,buf);
					 			 	
					sprintf(buf, "%5.2fA\n", load_I/100);    //输出端负载电流
					 			 	
					display_string_8x16(5,80,buf);
					 
					if(work_mode==0x01)	//测试模式--即手动模式
					{
						sprintf(buf, " %02x H\n", sys_mode);
						
						display_string_8x16(7,80,buf);
						
					}
					else//自动模式
					{
						sprintf(buf, " %02x A\n", sys_mode);       //太阳能控制器工作模式：0-待机    1-充电    2-放电
					 			 	
						display_string_8x16(7,80,buf);
						
					}		 	
					
				}
				else if(zhuangtai_cnt==3)
				{
					sprintf(buf, "7.I_in=%04d\n", charge_current_value);  
					 			 	
					display_string_8x16(3,1,buf);
					 			 	
					sprintf(buf, "8.I_ou=%04d\n", discharge_current_value);  
					 			 	
					display_string_8x16(5,1,buf);
					 			 	
					sprintf(buf, "9.T_ad=%04d\n", temperature_value);      
					 			 	
					display_string_8x16(7,1,buf);
				}
				else //历史记录 电池电压
				{
					sprintf(buf, "BT_%02d_HV->%5.2fV\n",day_index,bt_dy[2*day_index]/100);   
					 			 	
					display_string_8x16(3,1,buf);
					 			 	
					sprintf(buf, "BT_%02d_LV->%5.2fV\n",day_index,bt_dy[2*day_index+1]/100);   
					 			 	
					display_string_8x16(5,1,buf);
				}
			}
			else if(menu_index_q==0x02)  //设备参数显示刷新
			{
				if(canshu_cnt==1)
				{
					sprintf(buf, "%5.2fV\n", light_pv/100);  //光控电压设定--鉴别白天与黑夜通过光伏板电压
		 			 	
					display_string_8x16(3,82,buf);
		 			 	
					sprintf(buf, "%5.2fA\n", load_cc_I/100);  //负载工作电流设定
					 			 	
					display_string_8x16(5,82,buf);
					
					
					 			 	
					sprintf(buf, "%3d%%\n", step_01_load_percent);  //第1阶段 节能百分比
					 			 	
					display_string_8x16(7,82,buf);	
					
					sprintf(buf, "%2d\n", step_01_time_limit);      //第1阶段 时长
					 			 	
					display_string_8x16(7,114,buf);
				}
				else if(canshu_cnt==2)
				{
					sprintf(buf, "%3d%%\n", step_02_load_percent);  //第2阶段 节能百分比
		 			 	
					display_string_8x16(3,82,buf);
					
					sprintf(buf, "%2d\n", step_02_time_limit);      //第2阶段 时长
					 			 	
					display_string_8x16(3,114,buf);
					
		 			 	
					sprintf(buf, "%3d%%\n", step_03_load_percent);  //第3阶段 节能百分比
					 			 	
					display_string_8x16(5,82,buf);
					
					sprintf(buf, "%2d\n", step_03_time_limit);      //第3阶段 时长
					 			 	
					display_string_8x16(5,114,buf);
					
					 			 	
					sprintf(buf, "%3d%%\n", step_04_load_percent);  //第4阶段 节能百分比
					 			 	
					display_string_8x16(7,82,buf);	
					
					sprintf(buf, "%2d\n", step_04_time_limit);      //第4阶段 时长
					 			 	
					display_string_8x16(7,114,buf);
				}
				else
				{
					sprintf(buf, "%3d%%\n", step_05_load_percent);  //第5阶段 节能百分比
		 			 	
					display_string_8x16(3,82,buf);
					
					sprintf(buf, "%2d\n", step_05_time_limit);      //第5阶段 时长
					 			 	
					display_string_8x16(3,114,buf);
					
					
		 			 	
					sprintf(buf, "%2d\n", bt_id);  			    //电池类型
					 			 	
					display_string_8x16(5,82,buf);
					 			 	
					sprintf(buf, "%2dmin\n", light_time);  		//光控时间
					 			 	
					display_string_8x16(7,82,buf);
				}
					
			}
			else if(menu_index_q==0x03)
			{
					if(canshu_cnt==1)
					{
						sprintf(buf, "%5.2fV\n", light_pv/100);  //光控电压设定--鉴别白天与黑夜通过光伏板电压
		 			 	
						display_string_8x16(3,82,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%5.2fA\n", load_cc_I/100);  //负载工作电流设定
						 			 	
						display_string_8x16(5,82,buf);
						 			 	
						sprintf(buf, "%3d%%\n", step_01_load_percent);  
						 			 	
						display_string_8x16(7,82,buf);
						
						sprintf(buf, "%2d\n", step_01_time_limit);      //第1阶段 时长
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=0x03;//!!!!!!!!!!!!	
					}
					else if(canshu_cnt==2)
					{
						sprintf(buf, "%3d%%\n", step_02_load_percent); 
		 			 	
						display_string_8x16(3,82,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%2d\n", step_02_time_limit);      //第2阶段 时长
					 			 	
						display_string_8x16(3,114,buf);
						
						
						sprintf(buf, "%3d%%\n", step_03_load_percent);   
						 			 	
						display_string_8x16(5,82,buf);
						
						sprintf(buf, "%2d\n", step_03_time_limit);      //第3阶段 时长
					 			 	
						display_string_8x16(5,114,buf);
						
						 			 	
						sprintf(buf, "%3d%%\n", step_04_load_percent);  
						 			 	
						display_string_8x16(7,82,buf);
						
						sprintf(buf, "%2d\n", step_04_time_limit);      //第4阶段 时长
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=0x03;//!!!!!!!!!!!!
					}
					else
					{
						sprintf(buf, "%3d%%\n", step_05_load_percent); 
		 			 	
						display_string_8x16(3,82,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%2d\n", step_05_time_limit);      //第5阶段 时长
					 			 	
						display_string_8x16(3,114,buf);
						
						
						
						sprintf(buf, "%2d\n", bt_id);  			    //电池类型
					 			 	
						display_string_8x16(5,82,buf);
						 			 	
						sprintf(buf, "%2dmin\n", light_time);  		//光控时间
						 			 	
						display_string_8x16(7,82,buf);
						
						menu_index_q=0x03;//!!!!!!!!!!!!
					}
					
					
					//---------------------------------
			}
			else if(menu_index_q==0x05)
			{
					if(canshu_cnt==1)
					{
						sprintf(buf, "%5.2fA\n", load_cc_I/100);  //负载工作电流设定
					 			 	
						display_string_8x16(5,82,buf);
										
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示					
							
						sprintf(buf, "%5.2fV\n", light_pv/100);  //光控电压设定--鉴别白天与黑夜通过光伏板电压
			 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%3d%%\n", step_01_load_percent);  
						 			 	
						display_string_8x16(7,82,buf);
						
						sprintf(buf, "%2d\n", step_01_time_limit);      //第1阶段 时长
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=0x05;//!!!!!!!!!!!!	
					}
					else if(canshu_cnt==2)
					{
						sprintf(buf, "%2d\n", step_02_time_limit);      //第2阶段 时长
					 			 	
						display_string_8x16(3,114,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%3d%%\n", step_02_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						
						sprintf(buf, "%3d%%\n", step_03_load_percent); 
		 			 	
						display_string_8x16(5,82,buf);
						
						sprintf(buf, "%2d\n", step_03_time_limit);      //第3阶段 时长
					 			 	
						display_string_8x16(5,114,buf);
						 			 	
						sprintf(buf, "%3d%%\n", step_04_load_percent);  
						 			 	
						display_string_8x16(7,82,buf);
						
						sprintf(buf, "%2d\n", step_04_time_limit);      //第4阶段 时长
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=0x05;//!!!!!!!!!!!!
					}
					else
					{
						sprintf(buf, "%2d\n", step_05_time_limit);      //第5阶段 时长
					 			 	
						display_string_8x16(3,114,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%3d%%\n", step_05_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						
						sprintf(buf, "%2d\n", bt_id);  			    //电池类型
					 			 	
						display_string_8x16(5,82,buf);
						 			 	
						sprintf(buf, "%2dmin\n", light_time);  		//光控时间 
						 			 	
						display_string_8x16(7,82,buf);
						
						menu_index_q=0x05;//!!!!!!!!!!!!
					}
					
					
					//---------------------------------
			}
			else if(menu_index_q==0x07)
			{
					if(canshu_cnt==1)
					{
						sprintf(buf, "%3d%%\n", step_01_load_percent);  //节能模式 负载输出功率百分比（当电池电量下降到一定门限时进入节能输出模式 最大限度延长LED灯的点亮时间）
					 			 	
						display_string_8x16(7,82,buf);
						
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%2d\n", step_01_time_limit);      //第1阶段 时长
					 			 	
						display_string_8x16(7,114,buf);
						
						sprintf(buf, "%5.2fA\n", load_cc_I/100);  //负载工作电流设定
						 			 	
						display_string_8x16(5,82,buf);					 			 	
						
						sprintf(buf, "%5.2fV\n", light_pv/100);  //光控电压设定--鉴别白天与黑夜通过光伏板电压
			 			 	
						display_string_8x16(3,82,buf);
						
						menu_index_q=0x07;//!!!!!!!!!!!!	
					}
					else if(canshu_cnt==2)
					{
						sprintf(buf, "%3d%%\n", step_03_load_percent);  
						 			 	
						display_string_8x16(5,82,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%3d%%\n", step_02_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%2d\n", step_02_time_limit);      //第2阶段 时长
					 			 	
						display_string_8x16(3,114,buf);
						
						
						sprintf(buf, "%2d\n", step_03_time_limit);      //第3阶段 时长
					 			 	
						display_string_8x16(5,114,buf);
						
						sprintf(buf, "%3d%%\n", step_04_load_percent); 
		 			 	
						display_string_8x16(7,82,buf);
						
						sprintf(buf, "%2d\n", step_04_time_limit);      //第4阶段 时长
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=0x07;//!!!!!!!!!!!!
					}
					else
					{
						
						sprintf(buf, "%2d\n", bt_id);  
						 			 	
						display_string_8x16(5,82,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%3d%%\n", step_05_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%2d\n", step_05_time_limit);      //第5阶段 时长
					 			 	
						display_string_8x16(3,114,buf);
						
						sprintf(buf, "%2dmin\n", light_time);  		//光控时间
					 			 	
						display_string_8x16(7,82,buf);
						
						menu_index_q=0x07;//!!!!!!!!!!!!
					}
					
					
					//---------------------------------
			}
			else if(menu_index_q==0x09)
			{
					if(canshu_cnt==1)
					{
						
						sprintf(buf, "%2d\n", step_01_time_limit);      //第1阶段 时长
					 			 	
						display_string_8x16(7,114,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%3d%%\n", step_01_load_percent);  //节能模式 负载输出功率百分比（当电池电量下降到一定门限时进入节能输出模式 最大限度延长LED灯的点亮时间）
					 			 	
						display_string_8x16(7,82,buf);
								
						
						sprintf(buf, "%5.2fA\n", load_cc_I/100);  //负载工作电流设定
						 			 	
						display_string_8x16(5,82,buf);					 			 	
						
						sprintf(buf, "%5.2fV\n", light_pv/100);  //光控电压设定--鉴别白天与黑夜通过光伏板电压
			 			 	
						display_string_8x16(3,82,buf);
						
						menu_index_q=0x09;//!!!!!!!!!!!!	
					}
					else if(canshu_cnt==2)
					{
						
						sprintf(buf, "%2d\n", step_03_time_limit);      //第3阶段 时长
					 			 	
						display_string_8x16(5,114,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%3d%%\n", step_02_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%2d\n", step_02_time_limit);      //第2阶段 时长
					 			 	
						display_string_8x16(3,114,buf);
						
						sprintf(buf, "%3d%%\n", step_03_load_percent);  
						 			 	
						display_string_8x16(5,82,buf);
						
						
						sprintf(buf, "%3d%%\n", step_04_load_percent); 
		 			 	
						display_string_8x16(7,82,buf);
						
						sprintf(buf, "%2d\n", step_04_time_limit);      //第4阶段 时长
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=0x09;//!!!!!!!!!!!!
					}
					else
					{
						
						sprintf(buf, "%2dmin\n", light_time);  		//光控时间
					 			 	
						display_string_8x16(7,82,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%3d%%\n", step_05_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%2d\n", step_05_time_limit);      //第5阶段 时长
					 			 	
						display_string_8x16(3,114,buf);
						
						sprintf(buf, "%2d\n", bt_id);  
						 			 	
						display_string_8x16(5,82,buf);
												
						
						menu_index_q=0x09;//!!!!!!!!!!!!
					}
					
					
					//---------------------------------
			}
			else if(menu_index_q==11)
			{
					if(canshu_cnt==1)
					{
												
						sprintf(buf, "%5.2fV\n", light_pv/100);  //光控电压设定--鉴别白天与黑夜通过光伏板电压
			 			 	
						display_string_8x16(3,82,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%3d%%\n", step_01_load_percent);  
					 			 	
						display_string_8x16(7,82,buf);
								
						sprintf(buf, "%2d\n", step_01_time_limit);      //第1阶段 时长
					 			 	
						display_string_8x16(7,114,buf);
						
						sprintf(buf, "%5.2fA\n", load_cc_I/100);  //负载工作电流设定
						 			 	
						display_string_8x16(5,82,buf);					 			 	
																	
						menu_index_q=11;//!!!!!!!!!!!!	
					}
					else if(canshu_cnt==2)
					{
						
						sprintf(buf, "%3d%%\n", step_04_load_percent); 
		 			 	
						display_string_8x16(7,82,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%3d%%\n", step_02_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%2d\n", step_02_time_limit);      //第2阶段 时长
					 			 	
						display_string_8x16(3,114,buf);
						
						sprintf(buf, "%3d%%\n", step_03_load_percent);  
						 			 	
						display_string_8x16(5,82,buf);
						
						sprintf(buf, "%2d\n", step_03_time_limit);      //第3阶段 时长
					 			 	
						display_string_8x16(5,114,buf);
						
						
						sprintf(buf, "%2d\n", step_04_time_limit);      //第4阶段 时长
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=11;//!!!!!!!!!!!!
					}
					else
					{
						sprintf(buf, "%3d%%\n", step_05_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示					
						 			 	
						sprintf(buf, "%2d\n", step_05_time_limit);      //第5阶段 时长
					 			 	
						display_string_8x16(3,114,buf);
						
						sprintf(buf, "%2d\n", bt_id);  
						 			 	
						display_string_8x16(5,82,buf);
												
						sprintf(buf, "%2dmin\n", light_time);  		//光控时间
					 			 	
						display_string_8x16(7,82,buf);
						
						menu_index_q=11;//!!!!!!!!!!!!
					}
					
					
					//---------------------------------
			}
			else if(menu_index_q==13)
			{
					if(canshu_cnt==1)
					{
												
						sprintf(buf, "%5.2fA\n", load_cc_I/100);  //负载工作电流设定
						 			 	
						display_string_8x16(5,82,buf);	
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%3d%%\n", step_01_load_percent);  
					 			 	
						display_string_8x16(7,82,buf);
								
						sprintf(buf, "%2d\n", step_01_time_limit);      //第1阶段 时长
					 			 	
						display_string_8x16(7,114,buf);
						
						sprintf(buf, "%5.2fV\n", light_pv/100);  //光控电压设定--鉴别白天与黑夜通过光伏板电压
			 			 	
						display_string_8x16(3,82,buf);										 			 	
																	
						menu_index_q=13;//!!!!!!!!!!!!	
					}
					else if(canshu_cnt==2)
					{
						
						sprintf(buf, "%2d\n", step_04_time_limit);      //第4阶段 时长
					 			 	
						display_string_8x16(7,114,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示
						
						sprintf(buf, "%3d%%\n", step_02_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%2d\n", step_02_time_limit);      //第2阶段 时长
					 			 	
						display_string_8x16(3,114,buf);
						
						sprintf(buf, "%3d%%\n", step_03_load_percent);  
						 			 	
						display_string_8x16(5,82,buf);
						
						sprintf(buf, "%2d\n", step_03_time_limit);      //第3阶段 时长
					 			 	
						display_string_8x16(5,114,buf);
						
						sprintf(buf, "%3d%%\n", step_04_load_percent); 
		 			 	
						display_string_8x16(7,82,buf);
												
						menu_index_q=13;//!!!!!!!!!!!!
					}
					else
					{
						
						sprintf(buf, "%2d\n", step_05_time_limit);      //第5阶段 时长
					 			 	
						display_string_8x16(3,114,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!切换显示	
						
						sprintf(buf, "%3d%%\n", step_05_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);										
						
						sprintf(buf, "%2d\n", bt_id);  
						 			 	
						display_string_8x16(5,82,buf);
												
						sprintf(buf, "%2dmin\n", light_time);  		//光控时间
					 			 	
						display_string_8x16(7,82,buf);
						
						menu_index_q=13;//!!!!!!!!!!!!
					}
					
					
					//---------------------------------
			}
			display_lcd_flag=0x00;
			
		}
	
		
		if (RCSTAbits.FERR || RCSTAbits.OERR)  //uart1 
			{
						RCSTAbits.CREN = 0x00;
						RCSTAbits.SPEN = 0x00;
						NOP();
						NOP();
						NOP();
						RCSTAbits.CREN = 0x01;
						RCSTAbits.SPEN = 0x01;
			}				 
             
         if(uart1_receive_flag==TRUE)  //红外数据处理
             {                				
                handle_uart_rx_buf();
                
				if (RCSTAbits.FERR || RCSTAbits.OERR)  //uart1 
				{
							RCSTAbits.CREN = 0x00;
							RCSTAbits.SPEN = 0x00;
							NOP();
							NOP();
							NOP();
							RCSTAbits.CREN = 0x01;
							RCSTAbits.SPEN = 0x01;
				}
				
	 			rx_frame_kind=0x00;
	 			
                uart1_receive_byte_count=0x00;  //!!!!!!!!!

                uart1_receive_flag=FALSE;       //!!!!!!!!!

             } 
		
		
	}
	
}
