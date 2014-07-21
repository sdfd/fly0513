#ifndef __SPI1_H
#define __SPI1_H

#include "stm32f10x.h"

#define SPI_CSN_H()      GPIO_SetBits(GPIOA, GPIO_Pin_4)
#define SPI_CSN_L()      GPIO_ResetBits(GPIOA, GPIO_Pin_4)		 //csn÷√µÕ
#define SPI_CE_H()	   GPIO_SetBits(GPIOF,GPIO_Pin_0)
#define SPI_CE_L()	   GPIO_ResetBits(GPIOF,GPIO_Pin_0)			  //CE÷√µÕ

void Spi1_Init(void);
u8 Spi_RW(u8 dat);
#endif
