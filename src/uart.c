/******************************************************************************
**                           志和兴业有限公司
**
**                           
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名	: 
** 当前    版本	: V1.0 
** 描        述 : 
** 编   译   器 : xc8
** 硬        件 : 太阳能路灯控制器
**--------------历史版本信息---------------------------------------------------
** 开始创建日期	: 2017-12-11
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

//**--------------全局变量-----------------------------------------------------


unsigned char uart1_rx_buf[80];

unsigned char uart1_tx_buf[80];

unsigned char rx_frame_kind=0x00;  //接受帧 类别  01--运行数据帧		02--参数数据帧		03--参数保存返回确认帧
unsigned char tx_frame_kind=0x00; //发送帧									  





unsigned char uart1_time_count=0x00;

unsigned char uart1_receive_byte_count=0;

BOOL uart1_receive_flag=FALSE;

//unsigned char uart1_rx_control_flag=0x00;


unsigned char uart_send_delay_timer=0x00;

unsigned char uart_send_end_flag=0x00;

unsigned char uart_send_byte_count=0x00;

unsigned char*uart_send_point=NULL;


//**--------------宏定义-------------------------------------------------------

//**--------------函数申明-----------------------------------------------------

//**--------------函数定义-----------------------------------------------------






/**********************************************************************
*函数名称：init_uart1
*描述：uart1初始化 波特率2400 8 1 N
*返回类型：void
*输入形参：void
***********************************************************************/
void init_uart1(void)
{

	SP1BRGL = BDRT_S_L;
	SP1BRGH = BDRT_S_H;
	BAUDCON = 0x08; 	 // 波特率控制寄存器
	  	                 // bit7 ABDOVF 自动波特率检测溢出位 异步模式:1 = 自动波特率定时器溢出 0 = 自动波特率定时器未溢出 同步模式:无关位 R/W-0 
	  	                 // bit6 RCIDL 接收空闲标志位 异步模式:1 = 接收器空闲 0 = 已检测到启动位且接收器处于活动状态 同步模式:无关位 R-1 
	  	                 // bit5 DTRXP 数据接收极性选择位 异步模式:1 = 接收数据反相(低电平有效) 0 = 接收数据未反相(高电平有效) 同步模式:无关位 R/W-0 
	  	                 // bit4 
	  	                 // bit3 BRG16 16位波特率发生器位 1 = 使用16位波特率发生器(SPBRGHx:SPBRGx) 0 = 使用8位波特率发生器(SPBRGx)
	  	                 // bit2
	  	                 // bit1
	  	                 // bit0
	  					 // 使用16位波特率发生器
  	UART1_TX_TRIS = 0x00;
  	UART1_RX_TRIS = 0x01;
	TXSTA = 0x20;
		  	               // bit7 CSRC:时钟源选择位 异步模式:无关位 同步模式:1 = 主模式(时钟由内部BRG产生) 0 = 从模式(时钟来自外部时钟源) R/W-0
		  	               // bit6 TX9:9位发送使能位 1 = 选择9位发送 0 = 选择8位发送 R/W-0
		  	               // bit5 TXEN:发送使能位 1 = 使能发送 0 = 禁止发送 R/W-0
		  	               // bit4 SYNC:EUSART模式选择位 1 = 同步模式 0 = 异步模式 R/W-0
		  	               // bit3 SENDB:发送间隔字符位 异步模式:1 = 在下一次发送时发送同步间隔字符(完成时由硬件清零) 0 = 同步间隔字符发送完成 同步模式:无关位 R/W-0
		  	               // bit2 BRGH:高波特率选择位 异步模式:1 = 高速 0 = 低速 同步模式:在此模式下未使用 R/W-0
		  	               // bit1 TRMT:发送移位寄存器状态位 1 = TSR空 0 = TSR满 R-1
		  	               // bit0 TX9D:发送数据的第9位 可以是地址/数据位或奇偶校验位
	RCSTA = 0x90;
	RCIE = 0x01; 			// 使能UART1接收中断
}

/**********************************************************************
*函数名称：uart1_send_byte
*描述：
*返回类型：void
*输入形参：BYTE  data
***********************************************************************/
void uart1_send_byte(BYTE data)
{  
	while (!TXSTAbits.TRMT); // 等待发送移位寄存器空
	
	#if defined(IRD_BY_UART)	
		CCPR5L=(unsigned char)(0x114>>2);				
		CCP5CONbits.DC5B=(unsigned char)(0x114&0b11);
		TMR2ON=1;
		PWM_IRD_TRIS=0;		
	#endif
	
	TXREG = data;
	
	while (!TXSTAbits.TRMT); // 等待发送移位寄存器空
	
	#if defined(IRD_BY_UART)
		CCPR5L=(unsigned char)(0x00>>2);				
		CCP5CONbits.DC5B=(unsigned char)(0x00&0b11);	
		TMR2ON=0;
		PWM_IRD_TRIS=1;
	#endif
}


/**********************************************************************
*函数名称：uart1_send_nbyte
*描述：
*返回类型：void
*输入形参：BYTE *data,DWORD size
***********************************************************************/
void uart1_send_nbyte(BYTE *data,DWORD size)
{
	while (size)
    {
    	uart1_send_byte(*data);
    	data++;
    	size--;
    }
}

/**********************************************************************
*函数名称：uart1_read_byte
*描述：
*返回类型：BYTE 
*输入形参：void
***********************************************************************/
BYTE uart1_read_byte(void)
{
	BYTE data;

	while (!PIR1bits.RCIF); // 等待接收缓冲区满
	data = RCREG;

  	return data;
}

/**********************************************************************
*函数名称：uart1_read_nbyte
*描述：
*返回类型：void 
*输入形参：BYTE *buffer,BYTE length
***********************************************************************/
void uart1_read_nbyte(BYTE *buffer,BYTE length)
{
  	BYTE i;
  	BYTE data;

  	for (i = 0; i < length; i++)
  	{
    	data = uart1_read_byte(); // Get a character from the USART and save in the string
    	*buffer = data;
    	buffer++; // Increment the string pointer
  	}
}


/**********************************************************************
*函数名称：uart1_read_nbyte
*描述：
*返回类型：void 
*输入形参：BYTE *buffer,BYTE length
*----奇偶校验--------
*----偶校验(%2)--
*----奇校验(/2)-----
***********************************************************************/

bit handle_even_check(unsigned char databyte)
{
	unsigned char i=0;
	
	unsigned char num=0;
	
	num=0x00;//----!!!!!!!!!!!!!!局部变量必须清零
	
	for(i=0;i<8;i++)
	{
		if(databyte&(1<<i))
		{
			num++;
		}
	}
	
	return ((bit)(num%2));


}


/**********************************************************************
*函数名称：handle_uart_rx_buf
*描述：
*返回类型：void 
*输入形参：void
***********************************************************************/

void handle_uart_rx_buf(void)
{
	unsigned char i=0;
	
	unsigned int crc_in;
	
	if(rx_frame_kind==tx_frame_kind)
	{
		switch(rx_frame_kind)
		{
			case 0x01:  //运行数据
					if(uart1_rx_buf[1]==0xB1)
					{
						crc_in=crc16(&uart1_rx_buf[1],50);
						
						if(crc_in==( (uart1_rx_buf[51]<<8) | uart1_rx_buf[52]) )
						{
							p_v 		= (uart1_rx_buf[2]<<8) | uart1_rx_buf[3];
							
							b_v 		= (uart1_rx_buf[4]<<8) | uart1_rx_buf[5];
							
							load_v 		= (uart1_rx_buf[6]<<8) | uart1_rx_buf[7];
							
							charge_I 	= (uart1_rx_buf[8]<<8) | uart1_rx_buf[9];
							
							load_I		= (uart1_rx_buf[10]<<8) | uart1_rx_buf[11];
							
							sys_mode	= uart1_rx_buf[12];
							
							charge_current_value		= (uart1_rx_buf[13]<<8) | uart1_rx_buf[14];
							
							discharge_current_value		= (uart1_rx_buf[15]<<8) | uart1_rx_buf[16];
							
							temperature_value		= (uart1_rx_buf[17]<<8) | uart1_rx_buf[18];									
							
							//----------------------------------------------------------------	
							bt_00_hv = (uart1_rx_buf[19]<<8) | uart1_rx_buf[20];
							bt_00_lv = (uart1_rx_buf[21]<<8) | uart1_rx_buf[22];	
							
							bt_01_hv = (uart1_rx_buf[23]<<8) | uart1_rx_buf[24];
							bt_01_lv = (uart1_rx_buf[25]<<8) | uart1_rx_buf[26];
							
							bt_02_hv = (uart1_rx_buf[27]<<8) | uart1_rx_buf[28];
							bt_02_lv = (uart1_rx_buf[29]<<8) | uart1_rx_buf[30];
							
							bt_03_hv = (uart1_rx_buf[31]<<8) | uart1_rx_buf[32];
							bt_03_lv = (uart1_rx_buf[33]<<8) | uart1_rx_buf[34];
							
							bt_04_hv = (uart1_rx_buf[35]<<8) | uart1_rx_buf[36];
							bt_04_lv = (uart1_rx_buf[37]<<8) | uart1_rx_buf[38];
							
							bt_05_hv = (uart1_rx_buf[39]<<8) | uart1_rx_buf[40];
							bt_05_lv = (uart1_rx_buf[41]<<8) | uart1_rx_buf[42];	
							
							bt_06_hv = (uart1_rx_buf[43]<<8) | uart1_rx_buf[44];
							bt_06_lv = (uart1_rx_buf[45]<<8) | uart1_rx_buf[46];	
							
							bt_07_hv = (uart1_rx_buf[47]<<8) | uart1_rx_buf[48];
							bt_07_lv = (uart1_rx_buf[49]<<8) | uart1_rx_buf[50];
							
							bt_dy[0] = bt_00_hv;
							bt_dy[1] = bt_00_lv;
							
							bt_dy[2] = bt_01_hv;
							bt_dy[3] = bt_01_lv;
							
							bt_dy[4] = bt_02_hv;
							bt_dy[5] = bt_02_lv;
							
							bt_dy[6] = bt_03_hv;
							bt_dy[7] = bt_03_lv;
							
							bt_dy[8] = bt_04_hv;
							bt_dy[9] = bt_04_lv;
							
							bt_dy[10] = bt_05_hv;
							bt_dy[11] = bt_05_lv;
							
							bt_dy[12] = bt_06_hv;
							bt_dy[13] = bt_06_lv;
							
							bt_dy[14] = bt_07_hv;
							bt_dy[15] = bt_07_lv;	
							
							BEEP_SPEAK();
						}
					}
					break;
			
			case 0x02:
					if(uart1_rx_buf[1]==0xB2)
					{
						crc_in=crc16(&uart1_rx_buf[1],17);
						
						if(crc_in==( (uart1_rx_buf[18]<<8) | uart1_rx_buf[19]) )
						{
							light_pv 		= (uart1_rx_buf[2]<<8) | uart1_rx_buf[3];
							
							load_cc_I		= (uart1_rx_buf[4]<<8) | uart1_rx_buf[5];
							
							step_01_load_percent 	= uart1_rx_buf[6];
							
							step_02_load_percent 	= uart1_rx_buf[7];
							
							step_03_load_percent 	= uart1_rx_buf[8];
							
							step_04_load_percent 	= uart1_rx_buf[9];
							
							step_05_load_percent 	= uart1_rx_buf[10];
							
							bt_id					= uart1_rx_buf[11];
							
							light_time				= uart1_rx_buf[12];
							
							step_01_time_limit 	= uart1_rx_buf[13];
							
							step_02_time_limit 	= uart1_rx_buf[14];
							
							step_03_time_limit 	= uart1_rx_buf[15];
							
							step_04_time_limit 	= uart1_rx_buf[16];
							
							step_05_time_limit 	= uart1_rx_buf[17];
							
							BEEP_SPEAK();
						}
					}
					break;
			
			case 0x03:
					if(uart1_rx_buf[1]==0xB3)
					{
						crc_in=crc16(&uart1_rx_buf[1],2);
						
						if(crc_in==( (uart1_rx_buf[3]<<8) | uart1_rx_buf[4]) )
						{
							set_status 		= uart1_rx_buf[2];	
							
							if(set_status==0x01)
							{		 			 	
								display_string_8x16(5,0,"....Save OK!....");
								
								delay_ms(1000);
								
								clear_screen();
								display_canshu();
							}
							else
							{
								display_string_8x16(5,0,"...Set error!...");
								
								delay_ms(1000);
								
								clear_screen();
								display_canshu();
							}																			
						}
						else
						{
								display_string_8x16(5,0,"...CRC error!...");
								
								delay_ms(1000);
								
								clear_screen();
								display_canshu();
						}
					}
					break;
			case 0x04:
					if(uart1_rx_buf[1]==0xB4)
					{
						crc_in=crc16(&uart1_rx_buf[1],2);
						
						if(crc_in==( (uart1_rx_buf[3]<<8) | uart1_rx_buf[4]) )
						{
							set_status 		= uart1_rx_buf[2];	
							
							if(set_status==0x01)
							{	
								clear_screen();
																	 			 	
								display_string_8x16(1,0,"<<Handle mode!>>");
								
								display_string_8x16(5,0,"....charging!...");
								
								delay_ms(1000);
								
								clear_screen();
								display_run_data();
							}
							else
							{
								clear_screen();
								
								display_string_8x16(5,0,"...Set error!...");
								
								delay_ms(1000);
								
								clear_screen();
								display_run_data();
							}																			
						}
						else
						{
								clear_screen();
								
								display_string_8x16(5,0,"...CRC error!...");
								
								delay_ms(1000);
								
								clear_screen();
								display_run_data();
						}
					}
					break;
			case 0x05:
					if(uart1_rx_buf[1]==0xB5)
					{
						crc_in=crc16(&uart1_rx_buf[1],2);
						
						if(crc_in==( (uart1_rx_buf[3]<<8) | uart1_rx_buf[4]) )
						{
							set_status 		= uart1_rx_buf[2];	
							
							if(set_status==0x01)
							{	
								clear_screen();
																	 			 	
								display_string_8x16(1,0,"<<Handle mode!>>");
								
								display_string_8x16(5,0,"..discharging!..");
								
								delay_ms(1000);
								
								clear_screen();
								display_run_data();
							}
							else
							{
								clear_screen();
								
								display_string_8x16(5,0,"...Set error!...");
								
								delay_ms(1000);
								
								clear_screen();
								display_run_data();
							}																			
						}
						else
						{
								clear_screen();
								
								display_string_8x16(5,0,"...CRC error!...");
								
								delay_ms(1000);
								
								clear_screen();
								display_run_data();
						}
					}
					break;
			case 0x06:
					if(uart1_rx_buf[1]==0xB6)
					{
						crc_in=crc16(&uart1_rx_buf[1],2);
						
						if(crc_in==( (uart1_rx_buf[3]<<8) | uart1_rx_buf[4]) )
						{
							set_status 		= uart1_rx_buf[2];	
							
							if(set_status==0x01)
							{	
								clear_screen();
																	 			 	
								display_string_8x16(1,0," <<Auto mode!>> ");
								
								display_string_8x16(5,0,"....working!....");
								
								delay_ms(1000);
								
								clear_screen();
								display_run_data();
							}
							else
							{
								clear_screen();
								
								display_string_8x16(5,0,"...Set error!...");
								
								delay_ms(1000);
								
								clear_screen();
								display_run_data();
							}																			
						}
						else
						{
								clear_screen();
								
								display_string_8x16(5,0,"...CRC error!...");
								
								delay_ms(1000);
								
								clear_screen();
								display_run_data();
						}
					}
					break;
			default:break;
		}
	}
	
	memset (uart1_rx_buf,0,sizeof(uart1_rx_buf));
}

//---------------------------------读取控制器“运行数据”
void read_run_data(void)
{
	tx_frame_kind=0x01;
							     							  						         
	uart1_tx_buf[0]=0x55;
						         
	uart1_tx_buf[1]=0xA1;
						         
	crc_data=crc16(&uart1_tx_buf[1],1);
						         
	uart1_tx_buf[2]=crc_data/256;
						         
	uart1_tx_buf[3]=crc_data%256;
						         
	uart1_tx_buf[4]=0xAA;
						         
	uart1_send_nbyte(uart1_tx_buf,5);
	
}

//读取控制器“系统参数”
void read_sys_parameter(void)
{
	tx_frame_kind=0x02;
				         
	uart1_tx_buf[0]=0x55;
							         
	uart1_tx_buf[1]=0xA2;
							         
	crc_data=crc16(&uart1_tx_buf[1],1);
							         
	uart1_tx_buf[2]=crc_data/256;
							         
	uart1_tx_buf[3]=crc_data%256;
							         
	uart1_tx_buf[4]=0xAA;
							         
	uart1_send_nbyte(uart1_tx_buf,5);
	
}
//保存“系统参数”
void save_sys_parameter(void)
{
	//-----------------------------------------------------------保存光控电压参数
	eeprom_write(0x00,(unsigned char)(light_pv/256));
			
	eeprom_write(0x01,(unsigned char)light_pv);
								
	//-----------------------------------------------------------保存负载工作电流参数
	eeprom_write(0x02,(unsigned char)(load_cc_I/256));
			
	eeprom_write(0x03,(unsigned char)load_cc_I);
								
	//-----------------------------------------------------------保存节能输出百分比参数
	eeprom_write(0x04,(unsigned char)(step_01_load_percent));
								
	eeprom_write(0x05,(unsigned char)(step_02_load_percent));
								
	eeprom_write(0x06,(unsigned char)(step_03_load_percent));
								
	eeprom_write(0x07,(unsigned char)(step_04_load_percent));
								
	eeprom_write(0x08,(unsigned char)(step_05_load_percent));
								
	eeprom_write(0x0a,(unsigned char)(bt_id));
								
	eeprom_write(0x0b,(unsigned char)(light_time));
								
	eeprom_write(0x0c,(unsigned char)(step_01_time_limit));
								
	eeprom_write(0x0d,(unsigned char)(step_02_time_limit));
								
	eeprom_write(0x0e,(unsigned char)(step_03_time_limit));
								
	eeprom_write(0x0f,(unsigned char)(step_04_time_limit));
								
	eeprom_write(0x10,(unsigned char)(step_05_time_limit));
	
	//---------------------------------------------------------发送参数到控制器							
	tx_frame_kind=0x03;
				         
	uart1_tx_buf[0]=0x55;
							         
	uart1_tx_buf[1]=0xA3;
							         
	uart1_tx_buf[2]=(unsigned char )(light_pv/256);
							         
	uart1_tx_buf[3]=(unsigned char )light_pv;
							         
	uart1_tx_buf[4]=(unsigned char )(load_cc_I/256);	
							         
	uart1_tx_buf[5]=(unsigned char )load_cc_I;
							         
	uart1_tx_buf[6]=(unsigned char )(step_01_load_percent);	
	
	uart1_tx_buf[7]=(unsigned char )(step_02_load_percent);	
	
	uart1_tx_buf[8]=(unsigned char )(step_03_load_percent);	
	
	uart1_tx_buf[9]=(unsigned char )(step_04_load_percent);
	
	uart1_tx_buf[10]=(unsigned char )(step_05_load_percent);
	
	uart1_tx_buf[11]=(unsigned char )(bt_id);	
	
	uart1_tx_buf[12]=(unsigned char )(light_time);
	
	uart1_tx_buf[13]=(unsigned char )(step_01_time_limit);	
	
	uart1_tx_buf[14]=(unsigned char )(step_02_time_limit);	
	
	uart1_tx_buf[15]=(unsigned char )(step_03_time_limit);	
	
	uart1_tx_buf[16]=(unsigned char )(step_04_time_limit);
	
	uart1_tx_buf[17]=(unsigned char )(step_05_time_limit);
					   
							         
	crc_data=crc16(&uart1_tx_buf[1],17);
							         
	uart1_tx_buf[18]=crc_data/256;
							         
	uart1_tx_buf[19]=crc_data%256;
							         
	uart1_tx_buf[20]=0xAA;
							         
	uart1_send_nbyte(uart1_tx_buf,21);
	
}