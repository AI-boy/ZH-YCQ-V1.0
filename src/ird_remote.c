#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"



//**--------------全局变量-----------------------------------------------------

//**--------------函数申明-----------------------------------------------------

//**--------------函数定义-----------------------------------------------------

//系统运行状态数据及设置参数
//------------------------------------------------------------------------------//
		__EEPROM_DATA(0x02, 0x58, 0x00, 0x21, 0x14, 0x3C, 0x50, 0x3C);
		
		__EEPROM_DATA(0x14, 0x01, 0x01, 0x01, 0x01, 0x03, 0x04, 0x03);
		
		__EEPROM_DATA(0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
//------------------------------------------------------------------------------//
//-----------------------运行数据
float p_v=0;    						//当前光伏电压

float b_v=0;							//当前电池电压

float load_v=0;							//当前负载电压

float charge_I =0; 						//当前充电电流

float load_I =0;    					//当前负载电流

unsigned char  sys_mode=0;     		//当前设备工作模式

unsigned int charge_current_value=0x00;  //当前充电电流采样值

unsigned int discharge_current_value=0x00;  //当前负载电流采样值

unsigned int temperature_value=0x00;    //当前环境温度采样值

//----------------------参数设置

float light_pv=600;						//光控电压

float load_cc_I=33;						//LED灯工作电流  负载设定值


unsigned char step_01_load_percent=20;  		//节能输出百分比 20%

unsigned char step_02_load_percent=60;  		//节能输出百分比 60%

unsigned char step_03_load_percent=80;  		//节能输出百分比 80%

unsigned char step_04_load_percent=60;  		//节能输出百分比 60%

unsigned char step_05_load_percent=20;  		//节能输出百分比 20% 

unsigned char step_01_time_limit=0x01;   //时长 1 h

unsigned char step_02_time_limit=0x03;   //时长 3 h

unsigned char step_03_time_limit=0x04;   //时长 4 h

unsigned char step_04_time_limit=0x03;   //时长 3 h

unsigned char step_05_time_limit=0x01;   //时长 1 h

unsigned char  bt_id=1;						//电池类型  1：锂电池  2：铅酸电池

unsigned char light_time=1;						//光控时间：默认1分钟 单位(分钟)

float bt_00_hv=0;		//0天前电池电压最高值 (即今天)
float bt_00_lv=0;		//0天前电池电压最低值 (即今天)

float bt_01_hv=0;		//1天前电池电压最高值
float bt_01_lv=0;		//1天前电池电压最低值

float bt_02_hv=0;		//2天前电池电压最高值
float bt_02_lv=0;		//2天前电池电压最低值

float bt_03_hv=0;		//3天前电池电压最高值
float bt_03_lv=0;		//3天前电池电压最低值

float bt_04_hv=0;		//4天前电池电压最高值
float bt_04_lv=0;		//4天前电池电压最低值

float bt_05_hv=0;		//5天前电池电压最高值
float bt_05_lv=0;		//5天前电池电压最低值

float bt_06_hv=0;		//6天前电池电压最高值
float bt_06_lv=0;		//6天前电池电压最低值

float bt_07_hv=0;		//7天前电池电压最高值
float bt_07_lv=0;		//7天前电池电压最低值

float bt_dy[16]={0.0};


/**********************************************************************
*函数名称：read_param_eeprom
*描述：获取系统参数
*返回类型：void
*输入形参：void
***********************************************************************/
void read_param_eeprom(void)
{
	unsigned char byte_h,byte_l;
	
	//------------------------------------
	byte_h=eeprom_read(0x00);
	
	byte_l=eeprom_read(0x01);
		
	light_pv=(byte_h<<8)|byte_l;   //光控电压
	
	
	//------------------------------------
	byte_h=eeprom_read(0x02);
	
	byte_l=eeprom_read(0x03);
		
	load_cc_I=(byte_h<<8)|byte_l; //负载工作电流
	
	
	//------------------------------------
	byte_l=eeprom_read(0x04);
								
	step_01_load_percent=byte_l;		 //第一阶段降载输出百分比
	
	//------------------------------------
	byte_l=eeprom_read(0x05);
								
	step_02_load_percent=byte_l;		 //第二阶段降载输出百分比
	
	//------------------------------------
	byte_l=eeprom_read(0x06);
								
	step_03_load_percent=byte_l;		 //第三阶段降载输出百分比
	
	//------------------------------------
	byte_l=eeprom_read(0x07);
								
	step_04_load_percent=byte_l;		 //第四阶段降载输出百分比
	
	//------------------------------------
	byte_l=eeprom_read(0x08);
								
	step_05_load_percent=byte_l;		 //第五阶段降载输出百分比
	
	//------------------------------------
	byte_l=eeprom_read(0x0a);
								
	bt_id=byte_l;						//系统电池类型!!!!!!
	//------------------------------------
	byte_l=eeprom_read(0x0b);
								
	light_time=byte_l;					//光控时间
	//------------------------------------
	byte_l=eeprom_read(0x0c);
								
	step_01_time_limit=byte_l;			//第一阶段时长
	//------------------------------------
	byte_l=eeprom_read(0x0d);
								
	step_02_time_limit=byte_l;			//第二一阶段时长
	//------------------------------------
	byte_l=eeprom_read(0x0e);
								
	step_03_time_limit=byte_l;			//第三一阶段时长
	//------------------------------------
	byte_l=eeprom_read(0x0f);
								
	step_04_time_limit=byte_l;			//第四一阶段时长
	//------------------------------------
	byte_l=eeprom_read(0x10);
								
	step_05_time_limit=byte_l;			//第五阶段时长
	
	
}


