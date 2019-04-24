

#include <xc.h>
#include <GenericTypeDefs.h>
#include"userdefine.h"







unsigned char system_run_time=0x00;   //系统运行软件定时器

unsigned int system_time_count=0x00;  

//unsigned char delay_time_count=0x00;

//unsigned char xinhao_cnt=0x00;

unsigned int display_lcd_time_count=0x00;
							
unsigned char display_lcd_flag=0x01;

unsigned char dat_flag=0x00;



/**********************************************************************
*函数名称：interrupt isr
*描述：中断服务程序
*返回类型：void
*输入形参：void
***********************************************************************/
void interrupt isr(void)
{
	unsigned char r1_data;
	
	//---------------------------------------------------------------------------------------------------------------------
	if (TMR1IE && TMR1IF) // 定时器1中断 1ms间隔
	{
					TMR1IF = 0x00;
					TMR1H = 0xE0;
					TMR1L = 0xC0; // 定时1ms   
					
					//------------------------------------------------------
					if(system_run_time==0x01)
					{
						//-----------------------------------------------------------------------------------
						system_time_count++;
					
						if(system_time_count>1000)  //1s
						{
							system_time_count=0x00;
							
							
							system_power_on_time_count++;
						
							if(system_power_on_time_count>=180)//180s内无按键按下则自动关机
							{
								system_power_on_time_count=0x00;
								
								POWER_OFF;
							}
																											
						}
						//---------------------------------------------------------------------------------
						scan_key_time_count++;
						
						if(scan_key_time_count>=40)    //50ms扫描按键
						{
							scan_key_time_count=0x00;
							
							handle_scan_key_flag=0x01;
						}
						//---------------------------------------------------------------------------------
						display_lcd_time_count++;
						
						if(display_lcd_time_count>=400) //500ms刷新LCD显示
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
		
					if (uart1_time_count > 0x00)   //UART1接受结束鉴别
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
		
					if (uart_send_delay_timer > 0x00)   //延时发送
					{
						uart_send_delay_timer--;
						
						if (uart_send_delay_timer == 0x00)
						{							
							TXIE = 0x01; // 使能UART1发送中断
						}
						
					}
					
					if (uart_send_end_flag == 0x01)    //鉴别数据真正发送完毕
			       	{
				       	if (TXSTAbits.TRMT) 			// 务必注意
			           	{			            				
							uart_send_end_flag = 0x00;  							
			          	}
			          	
			      	}
			      	
			      	
			      	
	}


	//---------------------------------------------------------------------------------------------------------------------	
	if (TXIE && TXIF) // 发送中断 
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
                  
             uart1_time_count=0x0A;//UART1接收数据 相隔5ms即表示一帧数据的结束  9600--0x05   2400--0x0A

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
** 函数名称 : init_interrupt
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 初始化中断
			  使能外设中断
			  使能全局中断
** 全局变量 : 无
** 作    者 : caiwk
** 日    期 : 2018-01-31
** 修    改 : 无
** 版    本 : V1.0
*******************************************************************************/
void init_interrupt(void)
{
		
	PEIE = 0x01; // 使能外设中断
	GIE = 0x01; // 使能全局中断	   
}
