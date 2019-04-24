/******************************************************************************
**                           ־����ҵ���޹�˾
**
**                           
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��	: main.c
** ��ǰ    �汾	: V1.0 
** ��        �� : ң����������
** ��   ��   �� : xc8
** Ӳ        �� : ң����
**--------------��ʷ�汾��Ϣ---------------------------------------------------
** ��ʼ��������	: 2018-01-31
** ��   ��   ��	: ��ά��
** ��  	     �� : V1.0
** �衡      �� : 

**-----------------------------------------------------------------------------
*******************************************************************************/

//**--------------ͷ�ļ�-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include <stdio.h>
#include <string.h>

#include"userdefine.h"







//**--------------����λ(ֻ���PICϵ�е�Ƭ��)----------------------------------

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



//**--------------ȫ�ֱ���-----------------------------------------------------

unsigned int system_power_on_time_count=0x00;

//**--------------�궨��-------------------------------------------------------

//**--------------��������-----------------------------------------------------

//**--------------��������-----------------------------------------------------







/**********************************************************************
*�������ƣ�init_osc
*������ϵͳʱ�ӳ�����
*�������ͣ�void
*�����βΣ�void
***********************************************************************/
void init_osc(void)
{
	OSCCON = 0x70;				 // 0b0111 0000 �������ƼĴ���  �ڲ�ʱ�� 8MHz/32MHz
	WDTCONbits.WDTPS=0b01110;    //���Ź����� 16s
}






/**********************************************************************
*�������ƣ�init_port
*�������˿ڳ�ʼ��
*�������ͣ�void
*�����βΣ�void
***********************************************************************/
void init_port(void)
{
	ANSELA = 0x00; // �� RA<5:0>����ѡ��Ϊ���ֹ���
	ANSELB = 0x00; // �� RB<5:0> ����ѡ��Ϊ���ֹ���
	
	POWER_TRIS = 0;	
	POWER_ON;
	

}




/**********************************************************************
*�������ƣ�driver_init
*�������������ʼ��
*�������ͣ�void
*�����βΣ�void
***********************************************************************/
void driver_init(void)
{
	init_osc();	    	//ϵͳʱ������
		
	init_port();		//IO�˿ڼ�����˿ڳ�ʼ��
	
	init_led();     	//��ʼ��LEDָʾ��
	
	init_beep();		//��ʼ��BEEP������
	
	init_timer1();  	//��ʼ����ʱ��TIMER1
	
	init_uart1();   	//��ʼ��uart
		
	init_pwm();     	//��ʼ��pwm 38KHz �����ز�Ƶ���ź�
	
	init_lcd();			//��ʼ��LCD  Һ����ʾCOG
	
	init_key();			//��ʼ��key 
	
	init_interrupt();	//��ʼ���ж�
	
	
}




/**********************************************************************
*�������ƣ�middle_init
*�������м���ʼ��
*�������ͣ�void
*�����βΣ�void
***********************************************************************/
void middle_init(void)
{
	read_param_eeprom();  //��ȡϵͳ����
}







/**********************************************************************
*�������ƣ�application_init
*������Ӧ�ò��ʼ��
*�������ͣ�void
*�����βΣ�void
***********************************************************************/
void application_init(void)
{
	unsigned char a[]="Solar Remote!";
	unsigned char b[]="Welcoming....";
	unsigned char c[]="[-V1.0]";
	unsigned char d[]="--ZH and POWER--";
	TMR1ON =1;//����ʱ����ʱ�� 1ms��С����
	
	system_run_time=0x01;
	
	system_power_on_time_count=0x00;
	
    
    display_string_8x16(1,1,d);
    display_string_8x16(3,17,a);
    display_string_8x16(5,17,b);
    display_string_8x16(7,76,c);
    
    delay_ms(100);
    	
}







/*---------------------------------------------------------------------
*�������ƣ�main
*������
*�������ͣ�int
*�����βΣ�void
---------------------------------------------------------------------*/
int main(void) // ������
{
	driver_init(); 		// �������ʼ��
	middle_init(); 		// �м���ʼ��
	application_init(); // Ӧ�ò��ʼ��
	
	
	while(1)
	{
		
		CLRWDT();  //ι��  ���Ź�����16s				
		
		if(handle_scan_key_flag==0x01)
		{
			scan_key_value();
			
			handle_scan_key_flag=0x00;
		}
		
		if((poll_task_flag==0x01)&&(menu_index_q==0x01))   //������ѯ��ȡ��������������
		{
			read_run_data();
						
			poll_task_flag=0x00;  //!!
		}
		
		if(display_lcd_flag==0x01)
		{
			if(menu_index_q==0x01)   //����״̬������ʾˢ��
			{
				if(zhuangtai_cnt==1)
				{
					sprintf(buf, "%5.2fV\n", p_v/100);   //��������ѹ
					 			 	
					display_string_8x16(3,80,buf);
					 			 	
					sprintf(buf, "%5.2fV\n", b_v/100);   //��ض˵�ѹ
					 			 	
					display_string_8x16(5,80,buf);
					 			 	
					sprintf(buf, "%5.2fV\n", load_v/100); //����˵�ѹ
					 			 	
					display_string_8x16(7,80,buf);
				}
				else if(zhuangtai_cnt==2)
				{
					sprintf(buf, "%5.2fA\n", charge_I/100);  //������
					 			 	
					display_string_8x16(3,80,buf);
					 			 	
					sprintf(buf, "%5.2fA\n", load_I/100);    //����˸��ص���
					 			 	
					display_string_8x16(5,80,buf);
					 
					if(work_mode==0x01)	//����ģʽ--���ֶ�ģʽ
					{
						sprintf(buf, " %02x H\n", sys_mode);
						
						display_string_8x16(7,80,buf);
						
					}
					else//�Զ�ģʽ
					{
						sprintf(buf, " %02x A\n", sys_mode);       //̫���ܿ���������ģʽ��0-����    1-���    2-�ŵ�
					 			 	
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
				else //��ʷ��¼ ��ص�ѹ
				{
					sprintf(buf, "BT_%02d_HV->%5.2fV\n",day_index,bt_dy[2*day_index]/100);   
					 			 	
					display_string_8x16(3,1,buf);
					 			 	
					sprintf(buf, "BT_%02d_LV->%5.2fV\n",day_index,bt_dy[2*day_index+1]/100);   
					 			 	
					display_string_8x16(5,1,buf);
				}
			}
			else if(menu_index_q==0x02)  //�豸������ʾˢ��
			{
				if(canshu_cnt==1)
				{
					sprintf(buf, "%5.2fV\n", light_pv/100);  //��ص�ѹ�趨--����������ҹͨ��������ѹ
		 			 	
					display_string_8x16(3,82,buf);
		 			 	
					sprintf(buf, "%5.2fA\n", load_cc_I/100);  //���ع��������趨
					 			 	
					display_string_8x16(5,82,buf);
					
					
					 			 	
					sprintf(buf, "%3d%%\n", step_01_load_percent);  //��1�׶� ���ܰٷֱ�
					 			 	
					display_string_8x16(7,82,buf);	
					
					sprintf(buf, "%2d\n", step_01_time_limit);      //��1�׶� ʱ��
					 			 	
					display_string_8x16(7,114,buf);
				}
				else if(canshu_cnt==2)
				{
					sprintf(buf, "%3d%%\n", step_02_load_percent);  //��2�׶� ���ܰٷֱ�
		 			 	
					display_string_8x16(3,82,buf);
					
					sprintf(buf, "%2d\n", step_02_time_limit);      //��2�׶� ʱ��
					 			 	
					display_string_8x16(3,114,buf);
					
		 			 	
					sprintf(buf, "%3d%%\n", step_03_load_percent);  //��3�׶� ���ܰٷֱ�
					 			 	
					display_string_8x16(5,82,buf);
					
					sprintf(buf, "%2d\n", step_03_time_limit);      //��3�׶� ʱ��
					 			 	
					display_string_8x16(5,114,buf);
					
					 			 	
					sprintf(buf, "%3d%%\n", step_04_load_percent);  //��4�׶� ���ܰٷֱ�
					 			 	
					display_string_8x16(7,82,buf);	
					
					sprintf(buf, "%2d\n", step_04_time_limit);      //��4�׶� ʱ��
					 			 	
					display_string_8x16(7,114,buf);
				}
				else
				{
					sprintf(buf, "%3d%%\n", step_05_load_percent);  //��5�׶� ���ܰٷֱ�
		 			 	
					display_string_8x16(3,82,buf);
					
					sprintf(buf, "%2d\n", step_05_time_limit);      //��5�׶� ʱ��
					 			 	
					display_string_8x16(3,114,buf);
					
					
		 			 	
					sprintf(buf, "%2d\n", bt_id);  			    //�������
					 			 	
					display_string_8x16(5,82,buf);
					 			 	
					sprintf(buf, "%2dmin\n", light_time);  		//���ʱ��
					 			 	
					display_string_8x16(7,82,buf);
				}
					
			}
			else if(menu_index_q==0x03)
			{
					if(canshu_cnt==1)
					{
						sprintf(buf, "%5.2fV\n", light_pv/100);  //��ص�ѹ�趨--����������ҹͨ��������ѹ
		 			 	
						display_string_8x16(3,82,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%5.2fA\n", load_cc_I/100);  //���ع��������趨
						 			 	
						display_string_8x16(5,82,buf);
						 			 	
						sprintf(buf, "%3d%%\n", step_01_load_percent);  
						 			 	
						display_string_8x16(7,82,buf);
						
						sprintf(buf, "%2d\n", step_01_time_limit);      //��1�׶� ʱ��
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=0x03;//!!!!!!!!!!!!	
					}
					else if(canshu_cnt==2)
					{
						sprintf(buf, "%3d%%\n", step_02_load_percent); 
		 			 	
						display_string_8x16(3,82,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%2d\n", step_02_time_limit);      //��2�׶� ʱ��
					 			 	
						display_string_8x16(3,114,buf);
						
						
						sprintf(buf, "%3d%%\n", step_03_load_percent);   
						 			 	
						display_string_8x16(5,82,buf);
						
						sprintf(buf, "%2d\n", step_03_time_limit);      //��3�׶� ʱ��
					 			 	
						display_string_8x16(5,114,buf);
						
						 			 	
						sprintf(buf, "%3d%%\n", step_04_load_percent);  
						 			 	
						display_string_8x16(7,82,buf);
						
						sprintf(buf, "%2d\n", step_04_time_limit);      //��4�׶� ʱ��
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=0x03;//!!!!!!!!!!!!
					}
					else
					{
						sprintf(buf, "%3d%%\n", step_05_load_percent); 
		 			 	
						display_string_8x16(3,82,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%2d\n", step_05_time_limit);      //��5�׶� ʱ��
					 			 	
						display_string_8x16(3,114,buf);
						
						
						
						sprintf(buf, "%2d\n", bt_id);  			    //�������
					 			 	
						display_string_8x16(5,82,buf);
						 			 	
						sprintf(buf, "%2dmin\n", light_time);  		//���ʱ��
						 			 	
						display_string_8x16(7,82,buf);
						
						menu_index_q=0x03;//!!!!!!!!!!!!
					}
					
					
					//---------------------------------
			}
			else if(menu_index_q==0x05)
			{
					if(canshu_cnt==1)
					{
						sprintf(buf, "%5.2fA\n", load_cc_I/100);  //���ع��������趨
					 			 	
						display_string_8x16(5,82,buf);
										
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ					
							
						sprintf(buf, "%5.2fV\n", light_pv/100);  //��ص�ѹ�趨--����������ҹͨ��������ѹ
			 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%3d%%\n", step_01_load_percent);  
						 			 	
						display_string_8x16(7,82,buf);
						
						sprintf(buf, "%2d\n", step_01_time_limit);      //��1�׶� ʱ��
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=0x05;//!!!!!!!!!!!!	
					}
					else if(canshu_cnt==2)
					{
						sprintf(buf, "%2d\n", step_02_time_limit);      //��2�׶� ʱ��
					 			 	
						display_string_8x16(3,114,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%3d%%\n", step_02_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						
						sprintf(buf, "%3d%%\n", step_03_load_percent); 
		 			 	
						display_string_8x16(5,82,buf);
						
						sprintf(buf, "%2d\n", step_03_time_limit);      //��3�׶� ʱ��
					 			 	
						display_string_8x16(5,114,buf);
						 			 	
						sprintf(buf, "%3d%%\n", step_04_load_percent);  
						 			 	
						display_string_8x16(7,82,buf);
						
						sprintf(buf, "%2d\n", step_04_time_limit);      //��4�׶� ʱ��
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=0x05;//!!!!!!!!!!!!
					}
					else
					{
						sprintf(buf, "%2d\n", step_05_time_limit);      //��5�׶� ʱ��
					 			 	
						display_string_8x16(3,114,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%3d%%\n", step_05_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						
						sprintf(buf, "%2d\n", bt_id);  			    //�������
					 			 	
						display_string_8x16(5,82,buf);
						 			 	
						sprintf(buf, "%2dmin\n", light_time);  		//���ʱ�� 
						 			 	
						display_string_8x16(7,82,buf);
						
						menu_index_q=0x05;//!!!!!!!!!!!!
					}
					
					
					//---------------------------------
			}
			else if(menu_index_q==0x07)
			{
					if(canshu_cnt==1)
					{
						sprintf(buf, "%3d%%\n", step_01_load_percent);  //����ģʽ ����������ʰٷֱȣ�����ص����½���һ������ʱ����������ģʽ ����޶��ӳ�LED�Ƶĵ���ʱ�䣩
					 			 	
						display_string_8x16(7,82,buf);
						
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%2d\n", step_01_time_limit);      //��1�׶� ʱ��
					 			 	
						display_string_8x16(7,114,buf);
						
						sprintf(buf, "%5.2fA\n", load_cc_I/100);  //���ع��������趨
						 			 	
						display_string_8x16(5,82,buf);					 			 	
						
						sprintf(buf, "%5.2fV\n", light_pv/100);  //��ص�ѹ�趨--����������ҹͨ��������ѹ
			 			 	
						display_string_8x16(3,82,buf);
						
						menu_index_q=0x07;//!!!!!!!!!!!!	
					}
					else if(canshu_cnt==2)
					{
						sprintf(buf, "%3d%%\n", step_03_load_percent);  
						 			 	
						display_string_8x16(5,82,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%3d%%\n", step_02_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%2d\n", step_02_time_limit);      //��2�׶� ʱ��
					 			 	
						display_string_8x16(3,114,buf);
						
						
						sprintf(buf, "%2d\n", step_03_time_limit);      //��3�׶� ʱ��
					 			 	
						display_string_8x16(5,114,buf);
						
						sprintf(buf, "%3d%%\n", step_04_load_percent); 
		 			 	
						display_string_8x16(7,82,buf);
						
						sprintf(buf, "%2d\n", step_04_time_limit);      //��4�׶� ʱ��
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=0x07;//!!!!!!!!!!!!
					}
					else
					{
						
						sprintf(buf, "%2d\n", bt_id);  
						 			 	
						display_string_8x16(5,82,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%3d%%\n", step_05_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%2d\n", step_05_time_limit);      //��5�׶� ʱ��
					 			 	
						display_string_8x16(3,114,buf);
						
						sprintf(buf, "%2dmin\n", light_time);  		//���ʱ��
					 			 	
						display_string_8x16(7,82,buf);
						
						menu_index_q=0x07;//!!!!!!!!!!!!
					}
					
					
					//---------------------------------
			}
			else if(menu_index_q==0x09)
			{
					if(canshu_cnt==1)
					{
						
						sprintf(buf, "%2d\n", step_01_time_limit);      //��1�׶� ʱ��
					 			 	
						display_string_8x16(7,114,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%3d%%\n", step_01_load_percent);  //����ģʽ ����������ʰٷֱȣ�����ص����½���һ������ʱ����������ģʽ ����޶��ӳ�LED�Ƶĵ���ʱ�䣩
					 			 	
						display_string_8x16(7,82,buf);
								
						
						sprintf(buf, "%5.2fA\n", load_cc_I/100);  //���ع��������趨
						 			 	
						display_string_8x16(5,82,buf);					 			 	
						
						sprintf(buf, "%5.2fV\n", light_pv/100);  //��ص�ѹ�趨--����������ҹͨ��������ѹ
			 			 	
						display_string_8x16(3,82,buf);
						
						menu_index_q=0x09;//!!!!!!!!!!!!	
					}
					else if(canshu_cnt==2)
					{
						
						sprintf(buf, "%2d\n", step_03_time_limit);      //��3�׶� ʱ��
					 			 	
						display_string_8x16(5,114,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%3d%%\n", step_02_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%2d\n", step_02_time_limit);      //��2�׶� ʱ��
					 			 	
						display_string_8x16(3,114,buf);
						
						sprintf(buf, "%3d%%\n", step_03_load_percent);  
						 			 	
						display_string_8x16(5,82,buf);
						
						
						sprintf(buf, "%3d%%\n", step_04_load_percent); 
		 			 	
						display_string_8x16(7,82,buf);
						
						sprintf(buf, "%2d\n", step_04_time_limit);      //��4�׶� ʱ��
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=0x09;//!!!!!!!!!!!!
					}
					else
					{
						
						sprintf(buf, "%2dmin\n", light_time);  		//���ʱ��
					 			 	
						display_string_8x16(7,82,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%3d%%\n", step_05_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%2d\n", step_05_time_limit);      //��5�׶� ʱ��
					 			 	
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
												
						sprintf(buf, "%5.2fV\n", light_pv/100);  //��ص�ѹ�趨--����������ҹͨ��������ѹ
			 			 	
						display_string_8x16(3,82,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%3d%%\n", step_01_load_percent);  
					 			 	
						display_string_8x16(7,82,buf);
								
						sprintf(buf, "%2d\n", step_01_time_limit);      //��1�׶� ʱ��
					 			 	
						display_string_8x16(7,114,buf);
						
						sprintf(buf, "%5.2fA\n", load_cc_I/100);  //���ع��������趨
						 			 	
						display_string_8x16(5,82,buf);					 			 	
																	
						menu_index_q=11;//!!!!!!!!!!!!	
					}
					else if(canshu_cnt==2)
					{
						
						sprintf(buf, "%3d%%\n", step_04_load_percent); 
		 			 	
						display_string_8x16(7,82,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%3d%%\n", step_02_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%2d\n", step_02_time_limit);      //��2�׶� ʱ��
					 			 	
						display_string_8x16(3,114,buf);
						
						sprintf(buf, "%3d%%\n", step_03_load_percent);  
						 			 	
						display_string_8x16(5,82,buf);
						
						sprintf(buf, "%2d\n", step_03_time_limit);      //��3�׶� ʱ��
					 			 	
						display_string_8x16(5,114,buf);
						
						
						sprintf(buf, "%2d\n", step_04_time_limit);      //��4�׶� ʱ��
					 			 	
						display_string_8x16(7,114,buf);
						
						menu_index_q=11;//!!!!!!!!!!!!
					}
					else
					{
						sprintf(buf, "%3d%%\n", step_05_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ					
						 			 	
						sprintf(buf, "%2d\n", step_05_time_limit);      //��5�׶� ʱ��
					 			 	
						display_string_8x16(3,114,buf);
						
						sprintf(buf, "%2d\n", bt_id);  
						 			 	
						display_string_8x16(5,82,buf);
												
						sprintf(buf, "%2dmin\n", light_time);  		//���ʱ��
					 			 	
						display_string_8x16(7,82,buf);
						
						menu_index_q=11;//!!!!!!!!!!!!
					}
					
					
					//---------------------------------
			}
			else if(menu_index_q==13)
			{
					if(canshu_cnt==1)
					{
												
						sprintf(buf, "%5.2fA\n", load_cc_I/100);  //���ع��������趨
						 			 	
						display_string_8x16(5,82,buf);	
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%3d%%\n", step_01_load_percent);  
					 			 	
						display_string_8x16(7,82,buf);
								
						sprintf(buf, "%2d\n", step_01_time_limit);      //��1�׶� ʱ��
					 			 	
						display_string_8x16(7,114,buf);
						
						sprintf(buf, "%5.2fV\n", light_pv/100);  //��ص�ѹ�趨--����������ҹͨ��������ѹ
			 			 	
						display_string_8x16(3,82,buf);										 			 	
																	
						menu_index_q=13;//!!!!!!!!!!!!	
					}
					else if(canshu_cnt==2)
					{
						
						sprintf(buf, "%2d\n", step_04_time_limit);      //��4�׶� ʱ��
					 			 	
						display_string_8x16(7,114,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ
						
						sprintf(buf, "%3d%%\n", step_02_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);
						 			 	
						sprintf(buf, "%2d\n", step_02_time_limit);      //��2�׶� ʱ��
					 			 	
						display_string_8x16(3,114,buf);
						
						sprintf(buf, "%3d%%\n", step_03_load_percent);  
						 			 	
						display_string_8x16(5,82,buf);
						
						sprintf(buf, "%2d\n", step_03_time_limit);      //��3�׶� ʱ��
					 			 	
						display_string_8x16(5,114,buf);
						
						sprintf(buf, "%3d%%\n", step_04_load_percent); 
		 			 	
						display_string_8x16(7,82,buf);
												
						menu_index_q=13;//!!!!!!!!!!!!
					}
					else
					{
						
						sprintf(buf, "%2d\n", step_05_time_limit);      //��5�׶� ʱ��
					 			 	
						display_string_8x16(3,114,buf);
						//---------------------------------
						menu_index_q=0x02;//!!!!!!!!!!!�л���ʾ	
						
						sprintf(buf, "%3d%%\n", step_05_load_percent);   
						 			 	
						display_string_8x16(3,82,buf);										
						
						sprintf(buf, "%2d\n", bt_id);  
						 			 	
						display_string_8x16(5,82,buf);
												
						sprintf(buf, "%2dmin\n", light_time);  		//���ʱ��
					 			 	
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
             
         if(uart1_receive_flag==TRUE)  //�������ݴ���
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
