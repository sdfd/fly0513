#ifndef __MAIN_H
#define __MAIN_H

#include "stm32f10x.h"
#include "USART1.h"
#include "SPI1.h"
#include "Led.h"
#include "Motor.h"
#include "Time.h"
#include "NRF24L.h"
#include "ADC.h"
#include "IMU.h"
#include "Tim3.h"
#include "Data_Transfer.h"
#define RC_FUN_MIN	1200
#define RC_FUN_MAX	1800

typedef struct{
				float rol;
				float pit;
				float yaw;}T_float_angle;

typedef struct{
				float X;
				float Y;
				float Z;}T_float_xyz;

typedef struct{
				int16_t X;
				int16_t Y;
				int16_t Z;}T_int16_xyz;

typedef struct int16_rcget{
				int16_t ROLL;
				int16_t PITCH;
				int16_t THROTTLE;
				int16_t YAW;}T_RC_Data;
typedef struct{
				u8	ARMED;}T_RC_Control;
#include "Tim_PWM_In.h"
#include "Rc.h"
#include "Control.h"

extern u8 FLAG_ATT;
extern T_int16_xyz 		Acc,Gyr;	//两次综合后的传感器数据
extern T_float_angle 	Att_Angle;	//ATT函数计算出的姿态角
extern vs32				Alt;
extern T_RC_Data 		Rc_D;		//遥控通道数据
extern T_RC_Control		Rc_C;		//遥控功能数据
extern u32				Debug_cnt;
extern T_float_angle		Att_Angle_Offset;
extern	u8 Angle_Offset_Ok;
#endif
