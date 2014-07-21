/******************** (C) COPYRIGHT 2012 WildFire Team **************************
 * ÎÄ¼şÃû  £ºusart2.c
 * ÃèÊö    £º½«printfº¯ÊıÖØ¶¨Ïòµ½USART2¡£ÕâÑù¾Í¿ÉÒÔÓÃprintfº¯Êı½«µ¥Æ¬»úµÄÊı¾İ
 *           ´òÓ¡µ½PCÉÏµÄ³¬¼¶ÖÕ¶Ë»ò´®¿Úµ÷ÊÔÖúÊÖ¡£         
 * ÊµÑéÆ½Ì¨£ºÒ°»ğSTM32¿ª·¢°å
 * Ó²¼şÁ¬½Ó£º---------------------
 *          | 									  |
 *          | PA2  - USART2(Tx)   |
 *          | PA3  - USART2(Rx)   |
 *          |                     |
 *           ---------------------
 * ¿â°æ±¾  £ºST3.5.0
 *
 * ×÷Õß    £ºwildfire team 
 * ÂÛÌ³    £ºhttp://www.amobbs.com/forum-1008-1.html
 * ÌÔ±¦    £ºhttp://firestm32.taobao.com
**********************************************************************************/
#include "usart2.h"
#include <stdarg.h>
#include "misc.h"

uint8_t ReadBuffer[READBUFF_SIZE];
/*
 * º¯ÊıÃû£ºUSART2_Config
 * ÃèÊö  £ºUSART2 GPIO ÅäÖÃ,¹¤×÷Ä£Ê½ÅäÖÃ
 * ÊäÈë  £ºÎŞ
 * Êä³ö  : ÎŞ
 * µ÷ÓÃ  £ºÍâ²¿µ÷ÓÃ
 */
void USART2_Config(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	/* config USART2 clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);

	/* USART2 GPIO config */
   /* Configure USART2 Tx (PA.02) as alternate function push-pull */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
	    
  /* Configure USART2 Rx (PA.03) as input floating */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
	  
	/* USART2 mode config */
	USART_InitStructure.USART_BaudRate = 115200;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No ;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	USART_Init(USART2, &USART_InitStructure); 
	USART_Cmd(USART2, ENABLE);
}

/*
 * º¯ÊıÃû£ºfputc
 * ÃèÊö  £ºÖØ¶¨Ïòc¿âº¯Êıprintfµ½USART2
 * ÊäÈë  £ºÎŞ
 * Êä³ö  £ºÎŞ
 * µ÷ÓÃ  £ºÓÉprintfµ÷ÓÃ
 */
 #if 0
int fputc(int ch, FILE *f)
{
/* ½«PrintfÄÚÈİ·¢Íù´®¿Ú */
  USART_SendData(USART2, (unsigned char) ch);
  while (!(USART2->SR & USART_FLAG_TXE));
 
  return (ch);
}
#endif
/*
 * º¯ÊıÃû£ºNVIC_Config
 * ÃèÊö  £ºDMA ÖĞ¶ÏÅäÖÃ
 * ÊäÈë  £ºÎŞ
 * Êä³ö  : ÎŞ
 * µ÷ÓÃ  £ºÍâ²¿µ÷ÓÃconflict
 */
static void NVIC_Config(void)
{
  NVIC_InitTypeDef NVIC_InitStructure;
  
  /* Configure one bit for preemption priority */
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_1);
  
  /* ÅäÖÃP[A|B|C|D|E]0ÎªÖĞ¶ÏÔ´ */
  NVIC_InitStructure.NVIC_IRQChannel = DMA1_Channel6_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

/*
 * º¯ÊıÃû£ºitoa
 * ÃèÊö  £º½«ÕûĞÎÊı¾İ×ª»»³É×Ö·û´®
 * ÊäÈë  £º-radix =10 ±íÊ¾10½øÖÆ£¬ÆäËû½á¹ûÎª0
 *         -value Òª×ª»»µÄÕûĞÎÊı
 *         -buf ×ª»»ºóµÄ×Ö·û´®
 *         -radix = 10
 * Êä³ö  £ºÎŞ
 * ·µ»Ø  £ºÎŞ
 * µ÷ÓÃ  £º±»USART2_printf()µ÷ÓÃ
 */

static char *itoa(int value, char *string, int radix)
{
    int     i, d;
    int     flag = 0;
    char    *ptr = string;

    /* This implementation only works for decimal numbers. */
    if (radix != 10)
    {
        *ptr = 0;
        return string;
    }

    if (!value)
    {
        *ptr++ = 0x30;
        *ptr = 0;
        return string;
    }

    /* if this is a negative value insert the minus sign. */
    if (value < 0)
    {
        *ptr++ = '-';

        /* Make the value positive. */
        value *= -1;
    }

    for (i = 10000; i > 0; i /= 10)
    {
        d = value / i;

        if (d || flag)
        {
            *ptr++ = (char)(d + 0x30);
            value -= (d * i);
            flag = 1;
        }
    }

    /* Null terminate the string. */
    *ptr = 0;

    return string;

} /* NCL_Itoa */

/*
 * º¯ÊıÃû£ºUSART2_printf
 * ÃèÊö  £º¸ñÊ½»¯Êä³ö£¬ÀàËÆÓÚC¿âÖĞµÄprintf£¬µ«ÕâÀïÃ»ÓĞÓÃµ½C¿â
 * ÊäÈë  £º-USARTx ´®¿ÚÍ¨µÀ£¬ÕâÀïÖ»ÓÃµ½ÁË´®¿Ú2£¬¼´USART2
 *		     -Data   Òª·¢ËÍµ½´®¿ÚµÄÄÚÈİµÄÖ¸Õë
 *			   -...    ÆäËû²ÎÊı
 * Êä³ö  £ºÎŞ
 * ·µ»Ø  £ºÎŞ 
 * µ÷ÓÃ  £ºÍâ²¿µ÷ÓÃ
 *         µäĞÍÓ¦ÓÃUSART2_printf( USART2, "\r\n this is a demo \r\n" );
 *            		 USART2_printf( USART2, "\r\n %d \r\n", i );
 *            		 USART2_printf( USART2, "\r\n %s \r\n", j );
 */

void USART2_printf(USART_TypeDef* USARTx, uint8_t *Data,...)
{
	const char *s;
  int d;   
  char buf[16];

  va_list ap;
  va_start(ap, Data);

	while ( *Data != 0)     // ÅĞ¶ÏÊÇ·ñµ½´ï×Ö·û´®½áÊø·û
	{				                          
		if ( *Data == 0x5c )  //'\'
		{									  
			switch ( *++Data )
			{
				case 'r':							          //»Ø³µ·û
					USART_SendData(USARTx, 0x0d);
					Data ++;
					break;

				case 'n':							          //»»ĞĞ·û
					USART_SendData(USARTx, 0x0a);	
					Data ++;
					break;
				
				default:
					Data ++;
				    break;
			}			 
		}
		else if ( *Data == '%')
		{									  //
			switch ( *++Data )
			{				
				case 's':										  //×Ö·û´®
					s = va_arg(ap, const char *);
          for ( ; *s; s++) 
					{
						USART_SendData(USARTx,*s);
						while( USART_GetFlagStatus(USARTx, USART_FLAG_TC) == RESET );
          }
					Data++;
          break;

        case 'd':										//Ê®½øÖÆ
          d = va_arg(ap, int);
          itoa(d, buf, 10);
          for (s = buf; *s; s++) 
					{
						USART_SendData(USARTx,*s);
						while( USART_GetFlagStatus(USARTx, USART_FLAG_TC) == RESET );
          }
					Data++;
          break;
				 default:
						Data++;
				    break;
			}		 
		} /* end of else if */
		else USART_SendData(USARTx, *Data++);
		while( USART_GetFlagStatus(USARTx, USART_FLAG_TC) == RESET );
	}
}

/*
 * º¯ÊıÃû£ºDMA_Config
 * ÃèÊö  £ºDMA ´®¿ÚµÄ³õÊ¼»¯ÅäÖÃ
 * ÊäÈë  £ºÎŞ
 * Êä³ö  : ÎŞ
 * µ÷ÓÃ  £ºÍâ²¿µ÷ÓÃ
 */
void DMA_Config(void)
{
    DMA_InitTypeDef DMA_InitStructure;

	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);	//¿ªÆôDMAÊ±ÖÓ
	NVIC_Config();	   			//ÅäÖÃDMAÖĞ¶Ï

 	/*ÉèÖÃDMAÔ´£ºÄÚ´æµØÖ·&´®¿ÚÊı¾İ¼Ä´æÆ÷µØÖ·*/
    DMA_InitStructure.DMA_PeripheralBaseAddr = (u32)USART2_DR_Base;	   

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
    DMA_InitStructure.DMA_Priority = DMA_Priority_High;  
	
	/*½ûÖ¹ÄÚ´æµ½ÄÚ´æµÄ´«Êä	*/
    DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
	
	/*ÅäÖÃDMA1µ9Í¨µÀ*/		   
    DMA_Init(DMA1_Channel6, &DMA_InitStructure); 
		
	USART_DMACmd(USART2,USART_DMAReq_Rx,ENABLE);
	DMA_ITConfig(DMA1_Channel6,DMA_IT_TC,ENABLE);  //ÅäÖÃDMA·¢ËÍÍê³Éºó²úÉúÖĞ¶Ï
	DMA_Cmd(DMA1_Channel6,ENABLE);					//Ê¹ÄÜDMA	
}

/******************* (C) COPYRIGHT 2012 WildFire Team *****END OF FILE************/
