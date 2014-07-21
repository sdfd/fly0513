#ifndef __USART2_H
#define	__USART2_H

#include "stm32f10x.h"
#include <stdio.h>

#define USART2_DR_Base  (&(USART2->DR))
#define READBUFF_SIZE 23

void USART2_Config(void);
//int fputc(int ch, FILE *f);
void USART2_printf(USART_TypeDef* USARTx, uint8_t *Data,...);
void DMA_Config(void);
extern uint8_t ReadBuffer[];

#endif /* __USART2_H */
