

#include <xc.h>
#include <GenericTypeDefs.h>
#include"userdefine.h"







unsigned char system_run_time=0x00;   //ϵͳ���������ʱ��

unsigned int system_time_count=0x00;  

//unsigned char delay_time_count=0x00;

//unsigned char xinhao_cnt=0x00;

unsigned int display_lcd_time_count=0x00;
							
unsigned char display_lcd_flag=0x01;

unsigned char dat_flag=0x00;



/**********************************************************************
*�������ƣ�interrupt isr
*�������жϷ������
*�������ͣ�void
*�����βΣ�void
***********************************************************************/
void interrupt isr(void)
{
	unsigned char r1_data;
	
	//---------------------------------------------------------------------------------------------------------------------
	if (TMR1IE && TMR1IF) // ��ʱ��1�ж� 1ms���
	{
					TMR1IF = 0x00;
					TMR1H = 0xE0;
					TMR1L = 0xC0; // ��ʱ1ms   
					
					//------------------------------------------------------
					if(system_run_time==0x01)
					{
						//-----------------------------------------------------------------------------------
						system_time_count++;
					
						if(system_time_count>1000)  //1s
						{
							system_time_count=0x00;
							
							
							system_power_on_time_count++;
						
							if(system_power_on_time_count>=180)//180s���ް����������Զ��ػ�
							{
								system_power_on_time_count=0x00;
								
								POWER_OFF;
							}
																											
						}
						//---------------------------------------------------------------------------------
						scan_key_time_count++;
						
						if(scan_key_time_count>=40)    //50msɨ�谴��
						{
							scan_key_time_count=0x00;
							
							handle_scan_key_flag=0x01;
						}
						//---------------------------------------------------------------------------------
						display_lcd_time_count++;
						
						if(display_lcd_time_count>=400) //500msˢ��LCD��ʾ
						{
							display_lcd_time_count=0x00;
							
							dat_flag = dat_flag^0x01;
							
							display_lcd_flag=0x01;
						}
						//---------------------------------------------------------------------------------
						
						if(poll_time_enable)
						{
							poll_time_count++;
						
							if(poll_time_count>=1000)
							{
								poll_time_count=0x00;
								
								poll_task_flag=0x01;
							}
						}
					
						//---------------------------------------------------------------------------------
						if(beep_delay_time_count>0)
						{
							beep_delay_time_count--;

							if(beep_delay_time_count==0x00)
							{
								BEEP_OFF;
							}
						}
						
						
					}
									
					//------------------------------------------------------
		
					if (uart1_time_count > 0x00)   //UART1���ܽ�������
					{
						uart1_time_count--;
						
						if(uart1_time_count==0)
						{
							if((uart1_receive_byte_count==54)&&(uart1_rx_buf[1]==0xB1)&&(uart1_rx_buf[53]==0xAA))
							{
								rx_frame_kind=0x01;
								
								uart1_receive_flag=TRUE;
							}
							else if((uart1_receive_byte_count==21)&&(uart1_rx_buf[1]==0xB2)&&(uart1_rx_buf[20]==0xAA))
							{
								rx_frame_kind=0x02;
								
								uart1_receive_flag=TRUE;
							}
							else if((uart1_receive_byte_count==6)&&(uart1_rx_buf[1]==0xB3)&&(uart1_rx_buf[5]==0xAA))
							{
								rx_frame_kind=0x03;
								
								uart1_receive_flag=TRUE;
							}
							else if((uart1_receive_byte_count==6)&&(uart1_rx_buf[1]==0xB4)&&(uart1_rx_buf[5]==0xAA))
							{
								rx_frame_kind=0x04;
								
								uart1_receive_flag=TRUE;
							}
							else if((uart1_receive_byte_count==6)&&(uart1_rx_buf[1]==0xB5)&&(uart1_rx_buf[5]==0xAA))
							{
								rx_frame_kind=0x05;
								
								uart1_receive_flag=TRUE;
							}
							else if((uart1_receive_byte_count==6)&&(uart1_rx_buf[1]==0xB6)&&(uart1_rx_buf[5]==0xAA))
							{
								rx_frame_kind=0x06;
								
								uart1_receive_flag=TRUE;
							}
							else
							{
									if (RCSTAbits.FERR || RCSTAbits.OERR)  //uart2 RS485
										{
											RCSTAbits.CREN = 0x00;
											RCSTAbits.SPEN = 0x00;
											NOP();
											NOP();
											NOP();
											RCSTAbits.CREN = 0x01;
											RCSTAbits.SPEN = 0x01;				
										}
			
										uart1_receive_byte_count=0x00;
							}
						}
						
					}				    		
		
					if (uart_send_delay_timer > 0x00)   //��ʱ����
					{
						uart_send_delay_timer--;
						
						if (uart_send_delay_timer == 0x00)
						{							
							TXIE = 0x01; // ʹ��UART1�����ж�
						}
						
					}
					
					if (uart_send_end_flag == 0x01)    //�������������������
			       	{
				       	if (TXSTAbits.TRMT) 			// ���ע��
			           	{			            				
							uart_send_end_flag = 0x00;  							
			          	}
			          	
			      	}
			      	
			      	
			      	
	}


	//---------------------------------------------------------------------------------------------------------------------	
	if (TXIE && TXIF) // �����ж� 
	{
		if (uart_send_byte_count > 0x00)
       	{
          	uart_send_byte_count--;
           	TXREG = *uart_send_point;
           	uart_send_point++;
      	}
       	else if (uart_send_byte_count == 0x00)
      	{
          	uart_send_end_flag = 0x01;
          	TXIE = 0x00;
      	}
		else
		{
			NOP();
		}	
	}
	
	if(RCIF && RCIE)    //uart1 
     {
           
            r1_data=RCREG;
                  
             uart1_time_count=0x0A;//UART1�������� ���5ms����ʾһ֡���ݵĽ���  9600--0x05   2400--0x0A

            if( (uart1_receive_byte_count<60)&&(uart1_receive_flag==FALSE) )
              {
                 uart1_rx_buf[uart1_receive_byte_count]=r1_data;
          
                  if(uart1_rx_buf[0]==0x55)
                    {
                       uart1_receive_byte_count++;
                    } 
               }     
          
                                    
                
     }
     
    
     
     
		
}

/******************************************************************************
** �������� : init_interrupt
** ������� : ��
** ������� : ��
** �������� : ��ʼ���ж�
			  ʹ�������ж�
			  ʹ��ȫ���ж�
** ȫ�ֱ��� : ��
** ��    �� : caiwk
** ��    �� : 2018-01-31
** ��    �� : ��
** ��    �� : V1.0
*******************************************************************************/
void init_interrupt(void)
{
		
	PEIE = 0x01; // ʹ�������ж�
	GIE = 0x01; // ʹ��ȫ���ж�	   
}
