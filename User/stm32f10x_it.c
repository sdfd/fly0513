/**
  ******************************************************************************
  * @file    Project/STM32F10x_StdPeriph_Template/stm32f10x_it.c 
  * @author  MCD Application Team
  * @version V3.5.0
  * @date    08-April-2011
  * @brief   Main Interrupt Service Routines.
  *          This file provides template for all exceptions handler and 
  *          peripherals interrupt service routine.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm32f10x_it.h"
#include "main.h"

double Roll,Pitch,Yaw;
uint32_t Dlt_Tim,Pre_Tim;
/** @addtogroup STM32F10x_StdPeriph_Template
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/******************************************************************************/
/*            Cortex-M3 Processor Exceptions Handlers                         */
/******************************************************************************/

/**
  * @brief  This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
}

/**
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
  /* Go to infinite loop when Hard Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
  /* Go to infinite loop when Memory Manage exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
  /* Go to infinite loop when Bus Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
  /* Go to infinite loop when Usage Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
}

/**
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
}

/**
  * @brief  This function handles PendSVC exception.
  * @param  None
  * @retval None
  */
void PendSV_Handler(void)
{
}

/**
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  
void SysTick_Handler(void)
{
}
*/
/******************************************************************************/
/*                 STM32F10x Peripherals Interrupt Handlers                   */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32f10x_xx.s).                                            */
/******************************************************************************/
static u8 RxState1 = 0;
static u8 RxBuffer1[50];
void USART1_IRQHandler(void)
{
	uint8_t sum=0,j=0;
	uint32_t now_time;
	T_float_angle Pre_Angle;
	static u16 count1=0;
	now_time = time_nowMs();
	Dlt_Tim = now_time - Pre_Tim;
	Pre_Tim = now_time;
	Pre_Angle=Att_Angle;
	if (USART_GetFlagStatus(USART1, USART_FLAG_ORE) != RESET)//??!????if(USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)???
    {
        USART_ReceiveData(USART1);
    }
		
	//if((USART1->SR & (1<<7))&&(USART1->CR1 & USART_CR1_TXEIE))//if(USART_GetITStatus(USART1,USART_IT_TXE)!=RESET)
	//{
//		USART1->DR = TxBuffer[TxCounter++]; //写DR清除中断标志          
//		if(TxCounter == count)
//		{
//			USART1->CR1 &= ~USART_CR1_TXEIE;		//关闭TXE中断
			//USART_ITConfig(USART1,USART_IT_TXE,DISABLE);
//		}
//	}
	if(USART1->SR & (1<<5))//if(USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)    
	{
		u8 com_data = USART1->DR;
		static u8 _data_len = 0,_data_cnt = 0;
		if(RxState1==0&&com_data==0x55)
		{
			RxState1=1;
			RxBuffer1[0]=com_data;
		}
		else if(RxState1==1&&com_data==0x53)
		{
			RxState1=2;
			RxBuffer1[1]=com_data;
			_data_len = 8;
			_data_cnt = 0;
		}
		else if(RxState1==2&&_data_len>0)
		{
			_data_len--;
			RxBuffer1[2+_data_cnt++]=com_data;
			if(_data_len==0)
				RxState1 = 3;
		}
		else if(RxState1==3)
		{
			RxState1 = 0;
			RxBuffer1[2+_data_cnt]=com_data;
			for(j=0;j<10;j++)
				{
					sum += RxBuffer1[j];
//					printf("%X ",ReadBuffer[i+j]);
				}
//				printf("%X ",ReadBuffer[i+j+1]);
//				printf("%d\n",sum);
				if(RxBuffer1[10]==sum)
				{
					Att_Angle.rol=((int16_t)((RxBuffer1[3]<<8)|RxBuffer1[2]))/32768.0*180;
					Att_Angle.pit=((int16_t)((RxBuffer1[5]<<8)|RxBuffer1[4]))/32768.0*180;
					Att_Angle.yaw=((int16_t)((RxBuffer1[7]<<8)|RxBuffer1[6]))/32768.0*180;
//					printf("Roll=%4.3f,Pitch=%4.3f,Yaw=%4.3f\n",Roll,Pitch,Yaw);
//					Gyr.Y=((float)(Att_Angle.rol-Pre_Angle.rol)/(float)Dlt_Tim);
//					Gyr.X=((float)(Att_Angle.pit-Pre_Angle.pit)/(float)Dlt_Tim);
//					Gyr.Z=((float)(Att_Angle.yaw-Pre_Angle.yaw)/(float)Dlt_Tim);
					Gyr.Y=((float)(Pre_Angle.rol-Att_Angle.rol)/(float)Dlt_Tim);
					Gyr.X=((float)(Pre_Angle.pit-Att_Angle.pit)/(float)Dlt_Tim);
					Gyr.Z=((float)(Pre_Angle.yaw-Att_Angle.yaw)/(float)Dlt_Tim);
					if (count1 <200)
					{
						count1++;
						Att_Angle_Offset.pit += Att_Angle.pit;
						Att_Angle_Offset.rol += Att_Angle.rol;
						Att_Angle_Offset.yaw += Att_Angle.yaw;
					}
					else if (count1 == 200)
					{
						Att_Angle_Offset.pit /= count1;
						Att_Angle_Offset.rol /= count1;
						Att_Angle_Offset.yaw /= count1;
						Angle_Offset_Ok = 1;
						count1++;
					}
					if(Angle_Offset_Ok)
					{
						Att_Angle.pit -= Att_Angle_Offset.pit;
						Att_Angle.rol -= Att_Angle_Offset.rol;
						Att_Angle.yaw -= Att_Angle_Offset.yaw;
					}
			}
			else
				RxState1 = 0;
		}	 
	}
}
static u8 RxState = 0;
static u8 RxBuffer[50];
extern u8 TxCounter;
extern u8 TxBuffer[];
extern u8 count;
void USART2_IRQHandler(void)
{
	if (USART_GetFlagStatus(USART2, USART_FLAG_ORE) != RESET)//??!????if(USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)???
    {
        USART_ReceiveData(USART2);
    }
		
	if((USART2->SR & (1<<7))&&(USART2->CR1 & USART_CR1_TXEIE))//if(USART_GetITStatus(USART1,USART_IT_TXE)!=RESET)
	{
		USART2->DR = TxBuffer[TxCounter++]; //写DR清除中断标志          
		if(TxCounter == count)
		{
			USART2->CR1 &= ~USART_CR1_TXEIE;		//关闭TXE中断
			//USART_ITConfig(USART1,USART_IT_TXE,DISABLE);
		}
	}
	if(USART2->SR & (1<<5))//if(USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)    
	{
		u8 com_data = USART2->DR;
		static u8 _data_len = 0,_data_cnt = 0;
		if(RxState==0&&com_data==0xAA)
		{
			RxState=1;
			RxBuffer[0]=com_data;
		}
		else if(RxState==1&&com_data==0xAF)
		{
			RxState=2;
			RxBuffer[1]=com_data;
		}
		else if(RxState==2&&com_data>0&&com_data<=0X10)
		{
			RxState=3;
			RxBuffer[2]=com_data;
		}
		else if(RxState==3&&com_data<50)
		{
			RxState = 4;
			RxBuffer[3]=com_data;
			_data_len = com_data;
			_data_cnt = 0;
		}
		else if(RxState==4&&_data_len>0)
		{
			_data_len--;
			RxBuffer[4+_data_cnt++]=com_data;
			if(_data_len==0)
				RxState = 5;
		}
		else if(RxState==5)
		{
			RxState = 0;
			RxBuffer[4+_data_cnt]=com_data;
			Data_Receive_Anl(RxBuffer,_data_cnt+5);
		}
		else
			RxState = 0;
	}	 
}


void DMA1_Channel5_IRQHandler(void)
{	
	uint16_t i,j;
	uint8_t sum=0;
	uint32_t now_time;
	T_float_angle Pre_Angle;
	static u16 count=0;
//判断是否为DMA发送完成中断
//	printf("123\n");
	DMA_ITConfig(DMA1_Channel5,DMA_IT_TC,DISABLE);
	now_time = time_nowMs();
	Dlt_Tim = now_time - Pre_Tim;
	Pre_Tim = now_time;
	Pre_Angle=Att_Angle;
//	DMA_Cmd(DMA1_Channel6,DISABLE);
   if(DMA_GetFlagStatus(DMA1_FLAG_TC5)==SET) 
  {  
		for(i=0;i<(READBUFF_SIZE-11);i++)
		{
			if((ReadBuffer[i]==0x55)&&(ReadBuffer[i+1]==0x53))
			{
				for(j=0;j<10;j++)
				{
					sum += ReadBuffer[i+j];
//					printf("%X ",ReadBuffer[i+j]);
				}
//				printf("%X ",ReadBuffer[i+j+1]);
//				printf("%d\n",sum);
				if(ReadBuffer[i+10]==sum)
				{
					Att_Angle.rol=((int16_t)((ReadBuffer[i+3]<<8)|ReadBuffer[i+2]))/32768.0*180;
					Att_Angle.pit=((int16_t)((ReadBuffer[i+5]<<8)|ReadBuffer[i+4]))/32768.0*180;
					Att_Angle.yaw=((int16_t)((ReadBuffer[i+7]<<8)|ReadBuffer[i+6]))/32768.0*180;
//					printf("Roll=%4.3f,Pitch=%4.3f,Yaw=%4.3f\n",Roll,Pitch,Yaw);
//					Gyr.Y=((float)(Att_Angle.rol-Pre_Angle.rol)/(float)Dlt_Tim);
//					Gyr.X=((float)(Att_Angle.pit-Pre_Angle.pit)/(float)Dlt_Tim);
//					Gyr.Z=((float)(Att_Angle.yaw-Pre_Angle.yaw)/(float)Dlt_Tim);
					Gyr.Y=((float)(Pre_Angle.rol-Att_Angle.rol)/(float)Dlt_Tim);
					Gyr.X=((float)(Pre_Angle.pit-Att_Angle.pit)/(float)Dlt_Tim);
					Gyr.Z=((float)(Pre_Angle.yaw-Att_Angle.yaw)/(float)Dlt_Tim);
					if (count <200)
					{
						count++;
						Att_Angle_Offset.pit += Att_Angle.pit;
						Att_Angle_Offset.rol += Att_Angle.rol;
						Att_Angle_Offset.yaw += Att_Angle.yaw;
					}
					else if (count == 200)
					{
						Att_Angle_Offset.pit /= count;
						Att_Angle_Offset.rol /= count;
						Att_Angle_Offset.yaw /= count;
						Angle_Offset_Ok = 1;
						count++;
					}
					if(Angle_Offset_Ok)
					{
						Att_Angle.pit -= Att_Angle_Offset.pit;
						Att_Angle.rol -= Att_Angle_Offset.rol;
						Att_Angle.yaw -= Att_Angle_Offset.yaw;
					}
					goto L1;
				}
			}
		}
//		DMA_ClearFlag(DMA1_FLAG_TC6);
L1:		
//		DMA1_Channel6->CPAR=(u32)USART2_DR_Base;
//		DMA1_Channel6->CMAR=(u32)ReadBuffer;
//		DMA1_Channel6->CNDTR=READBUFF_SIZE;
//		RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);
//		USART2_Config();
		
		DMA_ClearFlag(DMA1_FLAG_TC5);
//		DMA_Config();
//		DMA_Cmd(DMA1_Channel6,ENABLE);
		DMA_ITConfig(DMA1_Channel5,DMA_IT_TC,ENABLE);
//		USART_DMACmd(USART2,USART_DMAReq_Rx,ENABLE);
		
	}	
}

void TIM4_IRQHandler(void)		//0.5ms中断一次
{	
	Tim4_Pwm_In_Irq();
}
/**
  * @brief  This function handles PPP interrupt request.
  * @param  None
  * @retval None
  */
/*void PPP_IRQHandler(void)
{
}*/

/**
  * @}
  */ 
void TIM2_IRQHandler(void)		//0.5ms中断一次
{	
	static u8 ms1_cnt=0;
	if(TIM2->SR & TIM_IT_Update)		//if ( TIM_GetITStatus(TIM3 , TIM_IT_Update) != RESET ) 
	{     
		TIM2->SR = ~TIM_FLAG_Update;//TIM_ClearITPendingBit(TIM3 , TIM_FLAG_Update);   //清除中断标志
		TIM2_IRQCNT++;		
		ms1_cnt++;
		if(ms1_cnt == 2)
		{
			ms1_cnt = 0;
			FLAG_ATT = 1;
		}
		Data_Exchange();
	}
}

/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
