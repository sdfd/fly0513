/******************** (C) COPYRIGHT 2012 WildFire Team ***************************
 * ÎÄ¼şÃû  £ºusart1.c
 * ÃèÊö    £º½«printfº¯ÊıÖØ¶¨Ïòµ½USART1¡£ÕâÑù¾Í¿ÉÒÔÓÃprintfº¯Êı½«µ¥Æ¬»úµÄÊı¾İ
 *           ´òÓ¡µ½PCÉÏµÄ³¬¼¶ÖÕ¶Ë»ò´®¿Úµ÷ÊÔÖúÊÖ¡£         
 * Ó²¼şÁ¬½Ó£º------------------------
 *          | PA9  - USART1(Tx)      |
 *          | PA10 - USART1(Rx)      |
 *           ------------------------
 * ¿â°æ±¾  £ºST3.5.0
**********************************************************************************/	
#include "usart1.h"
#include "misc.h"
uint8_t ReadBuffer[READBUFF_SIZE];
/*
 * º¯ÊıÃû£ºUSART1_Config
 * ÃèÊö  £ºUSART1 GPIO ÅäÖÃ,¹¤×÷Ä£Ê½ÅäÖÃ
 * ÊäÈë  £ºÎŞ
 * Êä³ö  : ÎŞ
 * µ÷ÓÃ  £ºÍâ²¿µ÷ÓÃ
 */
void USART1_Config(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;
	
	/* config USART1 clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1 | RCC_APB2Periph_GPIOA, ENABLE);
	
	/* USART1 GPIO config */
	/* Configure USART1 Tx (PA.09) as alternate function push-pull */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);    
	/* Configure USART1 Rx (PA.10) as input floating */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	
	/* USART1 mode config */
	USART_InitStructure.USART_BaudRate = 115200;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No ;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	
	USART_Init(USART1, &USART_InitStructure);
	USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);
	
	USART_Cmd(USART1, ENABLE);
}


void NVIC_Configuration(void)
{
	NVIC_InitTypeDef NVIC_InitStructure; 
	/* Configure the NVIC Preemption Priority Bits */  
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
	
	/* Enable the USARTy Interrupt */
	NVIC_InitStructure.NVIC_IRQChannel = USART2_IRQn;	 
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
	NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;	 
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
}



/*
 * º¯ÊıÃû£ºfputc
 * ÃèÊö  £ºÖØ¶¨Ïòc¿âº¯Êıprintfµ½USART1
 * ÊäÈë  £ºÎŞ
 * Êä³ö  £ºÎŞ
 * µ÷ÓÃ  £ºÓÉprintfµ÷ÓÃ
 */
int fputc(int ch, FILE *f)
{
	/* ½«PrintfÄÚÈİ·¢Íù´®¿Ú */
	USART_SendData(USART1, (unsigned char) ch);
	while (!(USART1->SR & USART_FLAG_TXE));
	
	return (ch);
}



static void NVIC_Config(void)
{
  NVIC_InitTypeDef NVIC_InitStructure;
  
  /* Configure one bit for preemption priority */
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
  
  /* ÅäÖÃP[A|B|C|D|E]0ÎªÖĞ¶ÏÔ´ */
  NVIC_InitStructure.NVIC_IRQChannel = DMA1_Channel5_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void DMA_Usart1_Config(void)
{
    DMA_InitTypeDef DMA_InitStructure;

	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);	//¿ªÆôDMAÊ±ÖÓ
	NVIC_Config();	   			//ÅäÖÃDMAÖĞ¶Ï

 	/*ÉèÖÃDMAÔ´£ºÄÚ´æµØÖ·&´®¿ÚÊı¾İ¼Ä´æÆ÷µØÖ·*/
    DMA_InitStructure.DMA_PeripheralBaseAddr = (u32)USART1_DR_Base;	   

	/*ÄÚ´æµØÖ·(Òª´«ÊäµÄ±äÁ¿µÄÖ¸Õë)*/
    DMA_InitStructure.DMA_MemoryBaseAddr = (u32)ReadBuffer;
	
	/*·½Ïò£º´ÓÍâÉèµ½ÄÚ´æ*/		
    DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;	
	
	/*´«Êä´óĞ¡DMA_BufferSize=SENDBUFF_SIZE*/	
    DMA_InitStructure.DMA_BufferSize = READBUFF_SIZE;
	
	/*ÍâÉèµØÖ·²»Ôö*/	    
    DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable; 
	
	/*ÄÚ´æµØÖ·×ÔÔö*/
    DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;	
	
	/*ÍâÉèÊı¾İµ¥Î»*/	
    DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
	
	/*ÄÚ´æÊı¾İµ¥Î» 8bit*/
    DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;	 
	
	/*DMAÄ£Ê½£ºÒ»´Î´«Êä£¬Ñ­»·*/
    DMA_InitStructure.DMA_Mode = DMA_Mode_Circular;	 
	
	/*ÓÅÏÈ¼¶£ºÖĞ*/	
    DMA_InitStructure.DMA_Priority = DMA_Priority_VeryHigh;  
	
	/*½ûÖ¹ÄÚ´æµ½ÄÚ´æµÄ´«Êä	*/
    DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
	
	/*ÅäÖÃDMA1µ9Í¨µÀ*/		   
    DMA_Init(DMA1_Channel5, &DMA_InitStructure); 
		
	USART_DMACmd(USART1,USART_DMAReq_Rx,ENABLE);
	DMA_ITConfig(DMA1_Channel5,DMA_IT_TC,ENABLE);  //ÅäÖÃDMA·¢ËÍÍê³Éºó²úÉúÖĞ¶Ï
	DMA_Cmd(DMA1_Channel5,ENABLE);					//Ê¹ÄÜDMA	
}
