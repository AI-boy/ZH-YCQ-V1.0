  
#ifndef _ZH_KEY_H
#define _ZH_KEY_H


//**--------------宏定义-----------------------------------------------------

#define   K1_TRIS   (TRISBbits.TRISB3)
#define   K2_TRIS   (TRISBbits.TRISB0)
#define   K3_TRIS   (TRISCbits.TRISC4)
#define   K4_TRIS   (TRISBbits.TRISB4)
#define   K5_TRIS   (TRISBbits.TRISB1)
#define   K6_TRIS   (TRISAbits.TRISA1)
#define   K7_TRIS   (TRISBbits.TRISB5)
#define   K8_TRIS   (TRISBbits.TRISB2)
#define   K9_TRIS   (TRISAbits.TRISA2)
#define   K10_TRIS  (TRISBbits.TRISB6)
#define   K11_TRIS  (TRISBbits.TRISB7)
#define   K12_TRIS  (TRISAbits.TRISA7)


#define	  K1_GET	(PORTBbits.RB3)      
#define	  K2_GET	(PORTBbits.RB0)
#define	  K3_GET	(PORTCbits.RC4)
#define	  K4_GET	(PORTBbits.RB4)
#define	  K5_GET	(PORTBbits.RB1)
#define	  K6_GET	(PORTAbits.RA1)
#define	  K7_GET	(PORTBbits.RB5)
#define	  K8_GET	(PORTBbits.RB2)
#define	  K9_GET	(PORTAbits.RA2)
#define	  K10_GET	(PORTBbits.RB6)
#define	  K11_GET	(PORTBbits.RB7)
#define	  K12_GET	(PORTAbits.RA7)


//**--------------数据结构-------------------------------------------------------


typedef enum KEY_CURRENT_STATE
       {
         KEY_UP  =0x00,
         KEY_DOWN=0x01
       } KEY_STATE_NU ;

typedef enum KEY_CURRENT_VALUE
       {
         KNOP =0x10,
         K1   =0x01,
         K2   =0x02,
         K3   =0x03,
         K4   =0x04,
         K5   =0x05,
         K6   =0x06,
         K7   =0x07,
         K8   =0x08,
         K9   =0x09, 
         K10  =0x0A,
         K11  =0x0B, 
         K12  =0x0C           
       } KEY_VALUE_NU ;


//**--------------全局声明-------------------------------------------------------



extern KEY_STATE_NU  KEY_STATE;

extern KEY_VALUE_NU  KEY_VALUE;


extern unsigned char scan_key_time_count;

extern unsigned char handle_scan_key_flag;

//extern unsigned char menu_index;

extern unsigned char menu_index_q;

extern unsigned char zhuangtai_cnt;

extern unsigned char canshu_cnt;

extern unsigned char key1_time_count;

extern unsigned char canshu_1_weizhi;

extern unsigned char canshu_2_weizhi;

extern unsigned char canshu_3_weizhi;

extern unsigned char canshu_4_weizhi;

extern unsigned char canshu_5_weizhi;

extern unsigned char canshu_6_weizhi;

extern unsigned char canshu_7_weizhi;

extern unsigned char canshu_8_weizhi;

extern unsigned char canshu_9_weizhi;

extern unsigned char canshu_10_weizhi;

extern unsigned char canshu_11_weizhi;

extern unsigned char canshu_12_weizhi;

extern unsigned char canshu_13_weizhi;

extern unsigned char canshu_14_weizhi;

extern unsigned char poll_time_enable;

extern unsigned char poll_task_flag;

extern unsigned int poll_time_count;

extern unsigned char set_status;

extern unsigned char work_mode;

extern unsigned char day_index;










extern void init_key(void);

extern void scan_key_value(void);

























	


#endif 
