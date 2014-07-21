#ifndef __CONTROL_H
#define __CONTROL_H

#include "stm32f10x.h"
#include "main.h"
#include "Motor.h"
typedef struct PID{
									float P;
									float pout;
									float I;
									float iout;
									float D;
									float dout;
									float IMAX;
									float OUT;}PID;

extern PID PID_ROL,PID_PIT,PID_YAW,PID_ALT,PID_POS;

extern vs16 Moto_PWM_1,Moto_PWM_2,Moto_PWM_3,Moto_PWM_4;

void Control(T_float_angle *att_in,T_int16_xyz *gyr_in, T_RC_Data *rc_in, u8 armed);

#endif
