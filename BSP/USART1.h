#ifndef __USART1_H
#define	__USART1_H

#include "stm32f10x.h"
#include <stdio.h>

#define USART1_DR_Base  (&(USART1->DR))
#define READBUFF_SIZE 23

void USART1_Config(void);
void NVIC_Configuration(void);
int fputc(int ch, FILE *f);
void DMA_Usart1_Config(void);
extern uint8_t ReadBuffer[];
#endif
