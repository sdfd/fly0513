#ifndef __LED_H
#define __LED_H

#include "stm32f10x.h"
#include "Time.h"
#include "main.h"

#define Led1(x) x?GPIO_SetBits(GPIOF,GPIO_Pin_1):GPIO_ResetBits(GPIOF,GPIO_Pin_1);
#define Led2(x) x?GPIO_SetBits(GPIOF,GPIO_Pin_2):GPIO_ResetBits(GPIOF,GPIO_Pin_2);

void Led_Init(void);
void Led_Control(u8 num,u8 state);
void Ledx_ONOFF(u8 num);
#endif
