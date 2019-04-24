
#ifndef _ZH_UART_H
#define _ZH_UART_H

//**--------------�����ļ�-----------------------------------------------------

//**--------------�궨��-------------------------------------------------------
#define FRQ_SYS      32000000 	// ϵͳʱ��
#define BDRT         2400 		// ������
#define BDRT_S_H      0x03		//(FRQ_SYS / (16 * BDRT) - 1) / 256		//0
#define BDRT_S_L      0x40		//(FRQ_SYS / (16 * BDRT) - 1) % 256     //207



#define UART1_TX_TRIS 		(TRISCbits.TRISC6) // RC6
#define UART1_RX_TRIS  		(TRISCbits.TRISC7) // RC7

#define  IRD_BY_UART	1


//**--------------���ݽṹ-----------------------------------------------------

//**--------------��������-----------------------------------------------------
extern void init_uart1(void);
	
extern void uart1_send_byte(BYTE data);

extern void uart1_send_nbyte(BYTE *data,DWORD size);
	
extern BYTE uart1_read_byte(void);
	
extern void uart1_read_nbyte(BYTE *buffer,BYTE length);	

extern bit handle_even_check(unsigned char databyte);
	
extern void handle_uart_rx_buf(void);		

extern void  read_run_data(void);

extern void read_sys_parameter(void);

extern void save_sys_parameter(void);





extern unsigned char uart1_rx_buf[80];

extern unsigned char uart1_tx_buf[80];


unsigned char rx_frame_kind;  //����֡ ���  01--��������֡		02--��������֡		03--�������淵��ȷ��֡
unsigned char tx_frame_kind; //����֡




extern unsigned char uart1_time_count;

extern unsigned char uart1_receive_byte_count;

extern BOOL uart1_receive_flag;

//extern  unsigned char uart1_rx_control_flag;


extern  unsigned char uart_send_delay_timer;
extern  unsigned char uart_send_end_flag;
extern  unsigned char uart_send_byte_count;
extern  unsigned char*uart_send_point;






#endif 