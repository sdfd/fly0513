#include "Tim3.h"
u32 TIM2_IRQCNT;
static void NVIC_Config(void)
{
  NVIC_InitTypeDef NVIC_InitStructure;
  
  /* Configure one bit for preemption priority */
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
  
  /* ����P[A|B|C|D|E]0Ϊ�ж�Դ */
  NVIC_InitStructure.NVIC_IRQChannel = TIM2_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}
void Tim2_Init()
{
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
	//�������ã�ʱ���ͱȽ�������ã���������ֻ�趨ʱ�����Բ���OC�Ƚ����
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2,ENABLE);
	
	TIM_DeInit(TIM2);
	NVIC_Config();
	TIM_TimeBaseStructure.TIM_Period=500;//װ��ֵ
	//prescaler is 1200,that is 72000000/72/500=2000Hz;
	TIM_TimeBaseStructure.TIM_Prescaler=72-1;//��Ƶϵ��
	//set clock division 
	TIM_TimeBaseStructure.TIM_ClockDivision=TIM_CKD_DIV1; //or TIM_CKD_DIV2 or TIM_CKD_DIV4
	//count up
	TIM_TimeBaseStructure.TIM_CounterMode=TIM_CounterMode_Up;
	
	TIM_TimeBaseInit(TIM2,&TIM_TimeBaseStructure);
	//clear the TIM2 overflow interrupt flag
	TIM_ClearFlag(TIM2,TIM_FLAG_Update);
	//TIM2 overflow interrupt enable
	TIM_ITConfig(TIM2,TIM_IT_Update,ENABLE);
	//enable TIM2
	TIM_Cmd(TIM2,ENABLE);
}
