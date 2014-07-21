#ifndef __ADC_H
#define __ADC_H

#include "stm32f10x.h"

#define ADC1_DR_Address    ((u32)0x4001244C)

extern volatile u16 ADC_ConvertedValue;

void ADC1_Init(void);

#endif
