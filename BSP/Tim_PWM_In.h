#ifndef __TIM_PWM_IN_H
#define __TIM_PWM_IN_H

#include "stm32f10x.h"
#include "main.h"

void Rc_GetValue(T_RC_Data *temp);

void Tim_Pwm_In_Init(void);
void Tim4_Pwm_In_Irq(void);
void Rc_GetValue(T_RC_Data *temp);

#endif
