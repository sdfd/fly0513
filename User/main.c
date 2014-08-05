#include "main.h"

u8 FLAG_ATT=0;
T_int16_xyz 		Acc,Gyr;	//两次综合后的传感器数据
T_int16_xyz			Acc_AVG;
T_float_angle 	Att_Angle;	//ATT函数计算出的姿态角
T_float_angle		Att_Angle_Offset;
u8 Angle_Offset_Ok = 0;

vs32				Alt;
T_RC_Data 			Rc_D;		//遥控通道数据
T_RC_Control		Rc_C;		//遥控功能数据


void Sys_Init()
{
	NVIC_Configuration();	
	time_init();
	Spi1_Init();	
	PWM_Init();
	motor_Init();	
	Nrf24l01_Init(4,40);
	Tim_Pwm_In_Init();
	ADC1_Init();
	IMU_Init();
	Led_Init();
	Tim2_Init();
//	DMA_Usart1_Config();
	USART2_Config();
	PID_ROL.P = 0;
	PID_ROL.I = 0;
	PID_ROL.D = 0;	
	PID_PIT.P = 3.5;
	PID_PIT.I = 0;
	PID_PIT.D = 10;
	PID_YAW.P = 0;
	PID_YAW.I = 0;
	PID_YAW.D = 0;
}
int main()
{
	static u8 att_cnt=0;
	static u8 rc_cnt=0;
	static u8 status_cnt=0,dt_rc_cnt=0,dt_moto_cnt=0;
	
	Sys_Init();
	if(Nrf24l01_Check() == SUCCESS)
		Led_Control(2,0);
	time_waitMs(100);
	while(1)
	{
		if(FLAG_ATT && Angle_Offset_Ok)
		{
			FLAG_ATT = 0;
			att_cnt++;
			rc_cnt++;
			
			if(rc_cnt==20)
			{
				rc_cnt = 0;
				Rc_GetValue(&Rc_D);
				Rc_Fun(&Rc_D,&Rc_C);
			}
//			if(att_cnt==1);
//				MPU6050_Dataanl(&mpu6050_dataacc1,&mpu6050_datagyr1);
			else
			{
				att_cnt = 0;
				
				Control(&Att_Angle,&Gyr,&Rc_D,Rc_C.ARMED);
				if(Rc_C.ARMED)
					Ledx_ONOFF(2);
				else
					Led_Control(2,1);
					
				status_cnt++;
				dt_rc_cnt++;
				dt_moto_cnt++;
		
				if(status_cnt==1)
				{
					status_cnt = 0;
					Send_Status = 1;
				}
				if(dt_rc_cnt==2)
				{
					dt_rc_cnt=0;
					Send_RCData = 1;
				}
				if(dt_moto_cnt==3)
				{
					dt_moto_cnt=0;
					Send_MotoPwm = 1;
				}
			}
		}
	}
}
