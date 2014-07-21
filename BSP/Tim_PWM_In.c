#include "Tim_PWM_In.h"

static u16 			Rc_Pwm_In[4];
static T_RC_Data 	Rc_Data;//2000~4000

static void Rc_DataAnl(void)
{
	Rc_Data.THROTTLE		=	Rc_Pwm_In[2];
	Rc_Data.YAW				=	Rc_Pwm_In[3];
	Rc_Data.ROLL			=	Rc_Pwm_In[1];
	Rc_Data.PITCH			=	Rc_Pwm_In[0];
	
}
void Rc_GetValue(T_RC_Data *temp)
{
	temp->THROTTLE	= Rc_Data.THROTTLE;
	temp->YAW		= Rc_Data.YAW;
	temp->ROLL		= Rc_Data.ROLL;
	temp->PITCH		= Rc_Data.PITCH;	
}
static void NVIC_Config(void)
{
  NVIC_InitTypeDef NVIC_InitStructure;
  
  /* Configure one bit for preemption priority */
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
  
  /* ÅäÖÃP[A|B|C|D|E]0ÎªÖÐ¶ÏÔ´ */
  NVIC_InitStructure.NVIC_IRQChannel = TIM4_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}
void Tim_Pwm_In_Init()
{
	GPIO_InitTypeDef GPIO_InitStructure;
	TIM_TimeBaseInitTypeDef TIM_TimeBaseInitStructure;
	TIM_ICInitTypeDef TIM_ICInitStructure;
	
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE); 
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD | RCC_APB2Periph_AFIO,ENABLE);
	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12 | GPIO_Pin_13 |GPIO_Pin_14 | GPIO_Pin_15;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOD,&GPIO_InitStructure);
	GPIO_PinRemapConfig(GPIO_Remap_TIM4, ENABLE);
	
	TIM_DeInit(TIM4);
	NVIC_Config();
	TIM_TimeBaseInitStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM_TimeBaseInitStructure.TIM_CounterMode = TIM_CounterMode_Up;
	TIM_TimeBaseInitStructure.TIM_Period = 0xffff;
	TIM_TimeBaseInitStructure.TIM_Prescaler = 71;

	TIM_TimeBaseInit(TIM4,&TIM_TimeBaseInitStructure);
	
	TIM_ICInitStructure.TIM_Channel = TIM_Channel_1;
	TIM_ICInitStructure.TIM_ICFilter = 0x0;
	TIM_ICInitStructure.TIM_ICPolarity = TIM_ICPolarity_Rising;
	TIM_ICInitStructure.TIM_ICPrescaler = TIM_ICPSC_DIV1;
	TIM_ICInitStructure.TIM_ICSelection = TIM_ICSelection_DirectTI;
	TIM_ICInit(TIM4,&TIM_ICInitStructure);
	
	TIM_ICInitStructure.TIM_Channel = TIM_Channel_2;
	TIM_ICInitStructure.TIM_ICFilter = 0x0;
	TIM_ICInitStructure.TIM_ICPolarity = TIM_ICPolarity_Rising;
	TIM_ICInitStructure.TIM_ICPrescaler = TIM_ICPSC_DIV1;
	TIM_ICInitStructure.TIM_ICSelection = TIM_ICSelection_DirectTI;
	TIM_ICInit(TIM4,&TIM_ICInitStructure);
	
	TIM_ICInitStructure.TIM_Channel = TIM_Channel_3;
	TIM_ICInitStructure.TIM_ICFilter = 0x0;
	TIM_ICInitStructure.TIM_ICPolarity = TIM_ICPolarity_Rising;
	TIM_ICInitStructure.TIM_ICPrescaler = TIM_ICPSC_DIV1;
	TIM_ICInitStructure.TIM_ICSelection = TIM_ICSelection_DirectTI;
	TIM_ICInit(TIM4,&TIM_ICInitStructure);
	
	TIM_ICInitStructure.TIM_Channel = TIM_Channel_4;
	TIM_ICInitStructure.TIM_ICFilter = 0x0;
	TIM_ICInitStructure.TIM_ICPolarity = TIM_ICPolarity_Rising;
	TIM_ICInitStructure.TIM_ICPrescaler = TIM_ICPSC_DIV1;
	TIM_ICInitStructure.TIM_ICSelection = TIM_ICSelection_DirectTI;
	TIM_ICInit(TIM4,&TIM_ICInitStructure);
	
	TIM_Cmd(TIM4,ENABLE);
	
	TIM_ITConfig(TIM4,TIM_IT_CC1,ENABLE);
	TIM_ITConfig(TIM4,TIM_IT_CC2,ENABLE);
	TIM_ITConfig(TIM4,TIM_IT_CC3,ENABLE);
	TIM_ITConfig(TIM4,TIM_IT_CC4,ENABLE);
}

void Tim4_Pwm_In_Irq()
{
	static u16 temp_cnt1,temp_cnt1_2,temp_cnt2,temp_cnt2_2,temp_cnt3,temp_cnt3_2,temp_cnt4,temp_cnt4_2;
	
	if(TIM4->SR & TIM_IT_CC1)//if(TIM_GetITStatus(TIM2, TIM_IT_CC1) == SET)
	{
		u16 ccr1 = TIM4->CCR1;
		TIM4->SR &= ~TIM_FLAG_CC1OF;
		if(GPIOD->IDR & GPIO_Pin_12)
		{
			temp_cnt1 = ccr1;
			TIM4->CCER |= (1<<1);
		}
		else
		{
			temp_cnt1_2 = ccr1;
			TIM4->CCER &= ~(1<<1);
			if(temp_cnt1_2>=temp_cnt1)
				Rc_Pwm_In[0] = temp_cnt1_2-temp_cnt1;
			else
				Rc_Pwm_In[0] = 0xffff-temp_cnt1+temp_cnt1_2;
		}
	}
	if(TIM4->SR & TIM_IT_CC2)
	{
		u16 ccr2 = TIM4->CCR2;
		if(GPIOD->IDR & GPIO_Pin_13)
		{
			temp_cnt2 = ccr2;
			TIM4->CCER |= (1<<5);
		}
		else
		{
			temp_cnt2_2 = ccr2;
			TIM4->CCER &= ~(1<<5);
			if(temp_cnt2_2>=temp_cnt2)
				Rc_Pwm_In[1] = temp_cnt2_2-temp_cnt2;
			else
				Rc_Pwm_In[1] = 0xffff-temp_cnt2+temp_cnt2_2;
		}
	}
	if(TIM4->SR & TIM_IT_CC3)
	{
		u16 ccr3 = TIM4->CCR3;
		if(GPIOD->IDR & GPIO_Pin_14)
		{
			temp_cnt3 = ccr3;
			TIM4->CCER |= (1<<9);
		}
		else
		{
			temp_cnt3_2 = ccr3;
			TIM4->CCER &= ~(1<<9);
			if(temp_cnt3_2>=temp_cnt3)
				Rc_Pwm_In[2] = temp_cnt3_2-temp_cnt3;
			else
				Rc_Pwm_In[2] = 0xffff-temp_cnt3+temp_cnt3_2;
		}
	}
	if(TIM4->SR & TIM_IT_CC4)
	{
		u16 ccr4 = TIM4->CCR4;
		if(GPIOD->IDR & GPIO_Pin_15)
		{
			temp_cnt4 = ccr4;
			TIM4->CCER |= (1<<13);
		}
		else
		{
			temp_cnt4_2 = ccr4;
			TIM4->CCER &= ~(1<<13);
			if(temp_cnt4_2>=temp_cnt4)
				Rc_Pwm_In[3] = temp_cnt4_2-temp_cnt4;
			else
				Rc_Pwm_In[3] = 0xffff-temp_cnt4+temp_cnt4_2;
				
			Rc_DataAnl();
		}
	}
}
