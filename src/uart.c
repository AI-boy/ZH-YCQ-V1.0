/******************************************************************************
**                           ־����ҵ���޹�˾
**
**                           
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��	: 
** ��ǰ    �汾	: V1.0 
** ��        �� : 
** ��   ��   �� : xc8
** Ӳ        �� : ̫����·�ƿ�����
**--------------��ʷ�汾��Ϣ---------------------------------------------------
** ��ʼ��������	: 2017-12-11
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

//**--------------ȫ�ֱ���-----------------------------------------------------


unsigned char uart1_rx_buf[80];

unsigned char uart1_tx_buf[80];

unsigned char rx_frame_kind=0x00;  //����֡ ���  01--��������֡		02--��������֡		03--�������淵��ȷ��֡
unsigned char tx_frame_kind=0x00; //����֡									  





unsigned char uart1_time_count=0x00;

unsigned char uart1_receive_byte_count=0;

BOOL uart1_receive_flag=FALSE;

//unsigned char uart1_rx_control_flag=0x00;


unsigned char uart_send_delay_timer=0x00;

unsigned char uart_send_end_flag=0x00;

unsigned char uart_send_byte_count=0x00;

unsigned char*uart_send_point=NULL;


//**--------------�궨��-------------------------------------------------------

//**--------------��������-----------------------------------------------------

//**--------------��������-----------------------------------------------------






/**********************************************************************
*�������ƣ�init_uart1
*������uart1��ʼ�� ������2400 8 1 N
*�������ͣ�void
*�����βΣ�void
***********************************************************************/
void init_uart1(void)
{

	SP1BRGL = BDRT_S_L;
	SP1BRGH = BDRT_S_H;
	BAUDCON = 0x08; 	 // �����ʿ��ƼĴ���
	  	                 // bit7 ABDOVF �Զ������ʼ�����λ �첽ģʽ:1 = �Զ������ʶ�ʱ����� 0 = �Զ������ʶ�ʱ��δ��� ͬ��ģʽ:�޹�λ R/W-0 
	  	                 // bit6 RCIDL ���տ��б�־λ �첽ģʽ:1 = ���������� 0 = �Ѽ�⵽����λ�ҽ��������ڻ״̬ ͬ��ģʽ:�޹�λ R-1 
	  	                 // bit5 DTRXP ���ݽ��ռ���ѡ��λ �첽ģʽ:1 = �������ݷ���(�͵�ƽ��Ч) 0 = ��������δ����(�ߵ�ƽ��Ч) ͬ��ģʽ:�޹�λ R/W-0 
	  	                 // bit4 
	  	                 // bit3 BRG16 16λ�����ʷ�����λ 1 = ʹ��16λ�����ʷ�����(SPBRGHx:SPBRGx) 0 = ʹ��8λ�����ʷ�����(SPBRGx)
	  	                 // bit2
	  	                 // bit1
	  	                 // bit0
	  					 // ʹ��16λ�����ʷ�����
  	UART1_TX_TRIS = 0x00;
  	UART1_RX_TRIS = 0x01;
	TXSTA = 0x20;
		  	               // bit7 CSRC:ʱ��Դѡ��λ �첽ģʽ:�޹�λ ͬ��ģʽ:1 = ��ģʽ(ʱ�����ڲ�BRG����) 0 = ��ģʽ(ʱ�������ⲿʱ��Դ) R/W-0
		  	               // bit6 TX9:9λ����ʹ��λ 1 = ѡ��9λ���� 0 = ѡ��8λ���� R/W-0
		  	               // bit5 TXEN:����ʹ��λ 1 = ʹ�ܷ��� 0 = ��ֹ���� R/W-0
		  	               // bit4 SYNC:EUSARTģʽѡ��λ 1 = ͬ��ģʽ 0 = �첽ģʽ R/W-0
		  	               // bit3 SENDB:���ͼ���ַ�λ �첽ģʽ:1 = ����һ�η���ʱ����ͬ������ַ�(���ʱ��Ӳ������) 0 = ͬ������ַ�������� ͬ��ģʽ:�޹�λ R/W-0
		  	               // bit2 BRGH:�߲�����ѡ��λ �첽ģʽ:1 = ���� 0 = ���� ͬ��ģʽ:�ڴ�ģʽ��δʹ�� R/W-0
		  	               // bit1 TRMT:������λ�Ĵ���״̬λ 1 = TSR�� 0 = TSR�� R-1
		  	               // bit0 TX9D:�������ݵĵ�9λ �����ǵ�ַ/����λ����żУ��λ
	RCSTA = 0x90;
	RCIE = 0x01; 			// ʹ��UART1�����ж�
}

/**********************************************************************
*�������ƣ�uart1_send_byte
*������
*�������ͣ�void
*�����βΣ�BYTE  data
***********************************************************************/
void uart1_send_byte(BYTE data)
{  
	while (!TXSTAbits.TRMT); // �ȴ�������λ�Ĵ�����
	
	#if defined(IRD_BY_UART)	
		CCPR5L=(unsigned char)(0x114>>2);				
		CCP5CONbits.DC5B=(unsigned char)(0x114&0b11);
		TMR2ON=1;
		PWM_IRD_TRIS=0;		
	#endif
	
	TXREG = data;
	
	while (!TXSTAbits.TRMT); // �ȴ�������λ�Ĵ�����
	
	#if defined(IRD_BY_UART)
		CCPR5L=(unsigned char)(0x00>>2);				
		CCP5CONbits.DC5B=(unsigned char)(0x00&0b11);	
		TMR2ON=0;
		PWM_IRD_TRIS=1;
	#endif
}


/**********************************************************************
*�������ƣ�uart1_send_nbyte
*������
*�������ͣ�void
*�����βΣ�BYTE *data,DWORD size
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
*�������ƣ�uart1_read_byte
*������
*�������ͣ�BYTE 
*�����βΣ�void
***********************************************************************/
BYTE uart1_read_byte(void)
{
	BYTE data;

	while (!PIR1bits.RCIF); // �ȴ����ջ�������
	data = RCREG;

  	return data;
}

/**********************************************************************
*�������ƣ�uart1_read_nbyte
*������
*�������ͣ�void 
*�����βΣ�BYTE *buffer,BYTE length
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
*�������ƣ�uart1_read_nbyte
*������
*�������ͣ�void 
*�����βΣ�BYTE *buffer,BYTE length
*----��żУ��--------
*----żУ��(%2)--
*----��У��(/2)-----
***********************************************************************/

bit handle_even_check(unsigned char databyte)
{
	unsigned char i=0;
	
	unsigned char num=0;
	
	num=0x00;//----!!!!!!!!!!!!!!�ֲ�������������
	
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
*�������ƣ�handle_uart_rx_buf
*������
*�������ͣ�void 
*�����βΣ�void
***********************************************************************/

void handle_uart_rx_buf(void)
{
	unsigned char i=0;
	
	unsigned int crc_in;
	
	if(rx_frame_kind==tx_frame_kind)
	{
		switch(rx_frame_kind)
		{
			case 0x01:  //��������
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

//---------------------------------��ȡ���������������ݡ�
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

//��ȡ��������ϵͳ������
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
//���桰ϵͳ������
void save_sys_parameter(void)
{
	//-----------------------------------------------------------�����ص�ѹ����
	eeprom_write(0x00,(unsigned char)(light_pv/256));
			
	eeprom_write(0x01,(unsigned char)light_pv);
								
	//-----------------------------------------------------------���渺�ع�����������
	eeprom_write(0x02,(unsigned char)(load_cc_I/256));
			
	eeprom_write(0x03,(unsigned char)load_cc_I);
								
	//-----------------------------------------------------------�����������ٷֱȲ���
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
	
	//---------------------------------------------------------���Ͳ�����������							
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