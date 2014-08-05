/******************** (C) COPYRIGHT 2012 WildFire Team ***************************
 * �ļ���  ��usart1.c
 * ����    ����printf�����ض���USART1�������Ϳ�����printf��������Ƭ��������
 *           ��ӡ��PC�ϵĳ����ն˻򴮿ڵ������֡�         
 * Ӳ�����ӣ�------------------------
 *          | PA9  - USART1(Tx)      |
 *          | PA10 - USART1(Rx)      |
 *           ------------------------
 * ��汾  ��ST3.5.0
**********************************************************************************/	
#include "usart1.h"
#include "misc.h"
uint8_t ReadBuffer[READBUFF_SIZE];
/*
 * ��������USART1_Config
 * ����  ��USART1 GPIO ����,����ģʽ����
 * ����  ����
 * ���  : ��
 * ����  ���ⲿ����
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
 * ��������fputc
 * ����  ���ض���c�⺯��printf��USART1
 * ����  ����
 * ���  ����
 * ����  ����printf����
 */
int fputc(int ch, FILE *f)
{
	/* ��Printf���ݷ������� */
	USART_SendData(USART1, (unsigned char) ch);
	while (!(USART1->SR & USART_FLAG_TXE));
	
	return (ch);
}



static void NVIC_Config(void)
{
  NVIC_InitTypeDef NVIC_InitStructure;
  
  /* Configure one bit for preemption priority */
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
  
  /* ����P[A|B|C|D|E]0Ϊ�ж�Դ */
  NVIC_InitStructure.NVIC_IRQChannel = DMA1_Channel5_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void DMA_Usart1_Config(void)
{
    DMA_InitTypeDef DMA_InitStructure;

	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);	//����DMAʱ��
	NVIC_Config();	   			//����DMA�ж�

 	/*����DMAԴ���ڴ��ַ&�������ݼĴ�����ַ*/
    DMA_InitStructure.DMA_PeripheralBaseAddr = (u32)USART1_DR_Base;	   

	/*�ڴ��ַ(Ҫ����ı�����ָ��)*/
    DMA_InitStructure.DMA_MemoryBaseAddr = (u32)ReadBuffer;
	
	/*���򣺴����赽�ڴ�*/		
    DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;	
	
	/*�����СDMA_BufferSize=SENDBUFF_SIZE*/	
    DMA_InitStructure.DMA_BufferSize = READBUFF_SIZE;
	
	/*�����ַ����*/	    
    DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable; 
	
	/*�ڴ��ַ����*/
    DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;	
	
	/*�������ݵ�λ*/	
    DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
	
	/*�ڴ����ݵ�λ 8bit*/
    DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;	 
	
	/*DMAģʽ��һ�δ��䣬ѭ��*/
    DMA_InitStructure.DMA_Mode = DMA_Mode_Circular;	 
	
	/*���ȼ�����*/	
    DMA_InitStructure.DMA_Priority = DMA_Priority_VeryHigh;  
	
	/*��ֹ�ڴ浽�ڴ�Ĵ���	*/
    DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
	
	/*����DMA1�9ͨ��*/		   
    DMA_Init(DMA1_Channel5, &DMA_InitStructure); 
		
	USART_DMACmd(USART1,USART_DMAReq_Rx,ENABLE);
	DMA_ITConfig(DMA1_Channel5,DMA_IT_TC,ENABLE);  //����DMA������ɺ�����ж�
	DMA_Cmd(DMA1_Channel5,ENABLE);					//ʹ��DMA	
}
