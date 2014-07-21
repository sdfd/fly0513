#ifndef __MOTOR_H
#define __MOTOR_H

#include "stm32f10x.h"
#include "Time.h"

#define Max_CCR_Val 2000  //1ms-2ms对应定时器的值
#define Min_CCR_Val 1000

void PWM_Init(void);
//void PWM_Change(uint8_t channel,uint16_t CCR_Val);
void motor_Init(void);
void motor_Control(int16_t CCR_Val1,int16_t CCR_Val2,int16_t CCR_Val3,int16_t CCR_Val4);

#endif
