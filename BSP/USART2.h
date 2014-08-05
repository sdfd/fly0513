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
extern u8 ReadBuffer[];
void Uart2_Put_Buf(unsigned char *DataToSend , u8 data_num);
#endif /* __USART2_H */
