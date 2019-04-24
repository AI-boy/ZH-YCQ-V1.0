#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"



//**--------------ȫ�ֱ���-----------------------------------------------------

//**--------------��������-----------------------------------------------------

//**--------------��������-----------------------------------------------------

//ϵͳ����״̬���ݼ����ò���
//------------------------------------------------------------------------------//
		__EEPROM_DATA(0x02, 0x58, 0x00, 0x21, 0x14, 0x3C, 0x50, 0x3C);
		
		__EEPROM_DATA(0x14, 0x01, 0x01, 0x01, 0x01, 0x03, 0x04, 0x03);
		
		__EEPROM_DATA(0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
//------------------------------------------------------------------------------//
//-----------------------��������
float p_v=0;    						//��ǰ�����ѹ

float b_v=0;							//��ǰ��ص�ѹ

float load_v=0;							//��ǰ���ص�ѹ

float charge_I =0; 						//��ǰ������

float load_I =0;    					//��ǰ���ص���

unsigned char  sys_mode=0;     		//��ǰ�豸����ģʽ

unsigned int charge_current_value=0x00;  //��ǰ����������ֵ

unsigned int discharge_current_value=0x00;  //��ǰ���ص�������ֵ

unsigned int temperature_value=0x00;    //��ǰ�����¶Ȳ���ֵ

//----------------------��������

float light_pv=600;						//��ص�ѹ

float load_cc_I=33;						//LED�ƹ�������  �����趨ֵ


unsigned char step_01_load_percent=20;  		//��������ٷֱ� 20%

unsigned char step_02_load_percent=60;  		//��������ٷֱ� 60%

unsigned char step_03_load_percent=80;  		//��������ٷֱ� 80%

unsigned char step_04_load_percent=60;  		//��������ٷֱ� 60%

unsigned char step_05_load_percent=20;  		//��������ٷֱ� 20% 

unsigned char step_01_time_limit=0x01;   //ʱ�� 1 h

unsigned char step_02_time_limit=0x03;   //ʱ�� 3 h

unsigned char step_03_time_limit=0x04;   //ʱ�� 4 h

unsigned char step_04_time_limit=0x03;   //ʱ�� 3 h

unsigned char step_05_time_limit=0x01;   //ʱ�� 1 h

unsigned char  bt_id=1;						//�������  1��﮵��  2��Ǧ����

unsigned char light_time=1;						//���ʱ�䣺Ĭ��1���� ��λ(����)

float bt_00_hv=0;		//0��ǰ��ص�ѹ���ֵ (������)
float bt_00_lv=0;		//0��ǰ��ص�ѹ���ֵ (������)

float bt_01_hv=0;		//1��ǰ��ص�ѹ���ֵ
float bt_01_lv=0;		//1��ǰ��ص�ѹ���ֵ

float bt_02_hv=0;		//2��ǰ��ص�ѹ���ֵ
float bt_02_lv=0;		//2��ǰ��ص�ѹ���ֵ

float bt_03_hv=0;		//3��ǰ��ص�ѹ���ֵ
float bt_03_lv=0;		//3��ǰ��ص�ѹ���ֵ

float bt_04_hv=0;		//4��ǰ��ص�ѹ���ֵ
float bt_04_lv=0;		//4��ǰ��ص�ѹ���ֵ

float bt_05_hv=0;		//5��ǰ��ص�ѹ���ֵ
float bt_05_lv=0;		//5��ǰ��ص�ѹ���ֵ

float bt_06_hv=0;		//6��ǰ��ص�ѹ���ֵ
float bt_06_lv=0;		//6��ǰ��ص�ѹ���ֵ

float bt_07_hv=0;		//7��ǰ��ص�ѹ���ֵ
float bt_07_lv=0;		//7��ǰ��ص�ѹ���ֵ

float bt_dy[16]={0.0};


/**********************************************************************
*�������ƣ�read_param_eeprom
*��������ȡϵͳ����
*�������ͣ�void
*�����βΣ�void
***********************************************************************/
void read_param_eeprom(void)
{
	unsigned char byte_h,byte_l;
	
	//------------------------------------
	byte_h=eeprom_read(0x00);
	
	byte_l=eeprom_read(0x01);
		
	light_pv=(byte_h<<8)|byte_l;   //��ص�ѹ
	
	
	//------------------------------------
	byte_h=eeprom_read(0x02);
	
	byte_l=eeprom_read(0x03);
		
	load_cc_I=(byte_h<<8)|byte_l; //���ع�������
	
	
	//------------------------------------
	byte_l=eeprom_read(0x04);
								
	step_01_load_percent=byte_l;		 //��һ�׶ν�������ٷֱ�
	
	//------------------------------------
	byte_l=eeprom_read(0x05);
								
	step_02_load_percent=byte_l;		 //�ڶ��׶ν�������ٷֱ�
	
	//------------------------------------
	byte_l=eeprom_read(0x06);
								
	step_03_load_percent=byte_l;		 //�����׶ν�������ٷֱ�
	
	//------------------------------------
	byte_l=eeprom_read(0x07);
								
	step_04_load_percent=byte_l;		 //���Ľ׶ν�������ٷֱ�
	
	//------------------------------------
	byte_l=eeprom_read(0x08);
								
	step_05_load_percent=byte_l;		 //����׶ν�������ٷֱ�
	
	//------------------------------------
	byte_l=eeprom_read(0x0a);
								
	bt_id=byte_l;						//ϵͳ�������!!!!!!
	//------------------------------------
	byte_l=eeprom_read(0x0b);
								
	light_time=byte_l;					//���ʱ��
	//------------------------------------
	byte_l=eeprom_read(0x0c);
								
	step_01_time_limit=byte_l;			//��һ�׶�ʱ��
	//------------------------------------
	byte_l=eeprom_read(0x0d);
								
	step_02_time_limit=byte_l;			//�ڶ�һ�׶�ʱ��
	//------------------------------------
	byte_l=eeprom_read(0x0e);
								
	step_03_time_limit=byte_l;			//����һ�׶�ʱ��
	//------------------------------------
	byte_l=eeprom_read(0x0f);
								
	step_04_time_limit=byte_l;			//����һ�׶�ʱ��
	//------------------------------------
	byte_l=eeprom_read(0x10);
								
	step_05_time_limit=byte_l;			//����׶�ʱ��
	
	
}


