 #ifndef _IRD_REMOTE_H
 #define _IRD_REMOTE_H




//参数设置
extern float p_v;

extern float b_v;

extern float load_v;

extern float charge_I;

extern float load_I;

extern unsigned char sys_mode;

extern unsigned int charge_current_value;  //当前充电电流采样值

extern unsigned int discharge_current_value;  //当前负载电流采样值

extern unsigned int temperature_value;    //当前环境温度采样值

extern float light_pv;

extern float load_cc_I;


extern unsigned char step_01_load_percent;  		//节能输出百分比 20%

extern unsigned char step_02_load_percent;  		//节能输出百分比 60%

extern unsigned char step_03_load_percent;  		//节能输出百分比 80%

extern unsigned char step_04_load_percent;  		//节能输出百分比 60%

extern unsigned char step_05_load_percent;  		//节能输出百分比 20%

extern unsigned char  step_01_time_limit;   //时长 1 h

extern unsigned char  step_02_time_limit;   //时长 3 h

extern unsigned char  step_03_time_limit;   //时长 4 h

extern unsigned char  step_04_time_limit;   //时长 3 h

extern unsigned char  step_05_time_limit;   //时长 1 h

extern unsigned char bt_id;						//电池类型  1：锂电池  2：铅酸电池

extern unsigned char light_time;					//光控时间：默认1分钟 单位(分钟)


extern float bt_00_hv;		//0天前电池电压最高值 (即今天)
extern float bt_00_lv;		//0天前电池电压最低值 (即今天)

extern float bt_01_hv;		//1天前电池电压最高值
extern float bt_01_lv;		//1天前电池电压最低值

extern float bt_02_hv;		//2天前电池电压最高值
extern float bt_02_lv;		//2天前电池电压最低值

extern float bt_03_hv;		//3天前电池电压最高值
extern float bt_03_lv;		//3天前电池电压最低值

extern float bt_04_hv;		//4天前电池电压最高值
extern float bt_04_lv;		//4天前电池电压最低值

extern float bt_05_hv;		//5天前电池电压最高值
extern float bt_05_lv;		//5天前电池电压最低值

extern float bt_06_hv;		//6天前电池电压最高值
extern float bt_06_lv;		//6天前电池电压最低值

extern float bt_07_hv;		//7天前电池电压最高值
extern float bt_07_lv;		//7天前电池电压最低值

extern float bt_dy[16];






extern void read_param_eeprom(void);





#endif
