#include "Motor.h"


TIM_OCInitTypeDef TIM_OCInitPWM;

static void PWM_GPIO_Init()
{
	 GPIO_InitTypeDef  GPIO_InitPWM;
	 
	 RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE); 
	 RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC | RCC_APB2Periph_AFIO,ENABLE);
	 
	 GPIO_InitPWM.GPIO_Mode = GPIO_Mode_AF_PP ;
	 GPIO_InitPWM.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_7 | GPIO_Pin_8 | GPIO_Pin_9;
	 GPIO_InitPWM.GPIO_Speed = GPIO_Speed_50MHz;
	 GPIO_Init(GPIOC,&GPIO_InitPWM);
	 GPIO_PinRemapConfig(GPIO_FullRemap_TIM3, ENABLE);
}

static void PWM_Mode_Init()
{
	TIM_TimeBaseInitTypeDef TIM_TimeBaseInitPWM;
	
	u16 CCR1_Val = 0;        
	u16 CCR2_Val = 0;
	u16 CCR3_Val = 0;
	u16 CCR4_Val = 0;
	
	TIM_TimeBaseInitPWM.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM_TimeBaseInitPWM.TIM_CounterMode = TIM_CounterMode_Up;
	TIM_TimeBaseInitPWM.TIM_Period = 40000; //50hz
	TIM_TimeBaseInitPWM.TIM_Prescaler = 36; //2MÊ±ÖÓ
	
	TIM_TimeBaseInit(TIM3,&TIM_TimeBaseInitPWM);
	
	TIM_OCInitPWM.TIM_OCMode = TIM_OCMode_PWM1 ;
	TIM_OCInitPWM.TIM_OCPolarity = TIM_OCPolarity_High;
	TIM_OCInitPWM.TIM_OutputState = TIM_OutputState_Enable ;
	TIM_OCInitPWM.TIM_Pulse = CCR1_Val;
	TIM_OC1Init(TIM3,&TIM_OCInitPWM);
	TIM_OC1PolarityConfig(TIM3,ENABLE);
	
	TIM_OCInitPWM.TIM_OutputState = TIM_OutputState_Enable ;
	TIM_OCInitPWM.TIM_Pulse = CCR2_Val;
	TIM_OC2Init(TIM3,&TIM_OCInitPWM);
	TIM_OC2PolarityConfig(TIM3,ENABLE);
	
	TIM_OCInitPWM.TIM_OutputState = TIM_OutputState_Enable ;
	TIM_OCInitPWM.TIM_Pulse = CCR3_Val;
	TIM_OC3Init(TIM3,&TIM_OCInitPWM);
	TIM_OC3PolarityConfig(TIM3,ENABLE);
	
	TIM_OCInitPWM.TIM_OutputState = TIM_OutputState_Enable ;
	TIM_OCInitPWM.TIM_Pulse = CCR4_Val;
	TIM_OC4Init(TIM3,&TIM_OCInitPWM);
	TIM_OC4PolarityConfig(TIM3,ENABLE);	
	
	TIM_ARRPreloadConfig(TIM3, ENABLE);
	TIM_Cmd(TIM3, ENABLE); 
}
void PWM_Change(uint8_t channel,uint16_t CCR_Val)
{
	if (CCR_Val>Max_CCR_Val)
		TIM_OCInitPWM.TIM_Pulse = Max_CCR_Val;
	else if (CCR_Val<2000)
		TIM_OCInitPWM.TIM_Pulse = 2000;
	else
		TIM_OCInitPWM.TIM_Pulse = CCR_Val;
	switch (channel)
	{
		case 1:
			TIM_OC1Init(TIM3,&TIM_OCInitPWM);
		case 2:
			TIM_OC2Init(TIM3,&TIM_OCInitPWM);
		case 3:
			TIM_OC3Init(TIM3,&TIM_OCInitPWM);
		case 4:
			TIM_OC4Init(TIM3,&TIM_OCInitPWM);
	}		
}
void PWM_Init()
{
	PWM_GPIO_Init();
	PWM_Mode_Init();
	motor_Init();
}
void motor_Init()
{
	int val;
	val = 2000;
	PWM_Change(1,val);
	PWM_Change(2,val);
	PWM_Change(3,val);
	PWM_Change(4,val);
//	time_waitMs(5);
}

void motor_Control(int16_t CCR_Val1,int16_t CCR_Val2,int16_t CCR_Val3,int16_t CCR_Val4)
{
	if(CCR_Val1>Max_CCR_Val) CCR_Val1=Max_CCR_Val;
	if(CCR_Val2>Max_CCR_Val) CCR_Val2=Max_CCR_Val;
	if(CCR_Val3>Max_CCR_Val) CCR_Val3=Max_CCR_Val;
	if(CCR_Val4>Max_CCR_Val) CCR_Val4=Max_CCR_Val;
	
	if(CCR_Val1<Min_CCR_Val) CCR_Val1=Min_CCR_Val;
	if(CCR_Val2<Min_CCR_Val) CCR_Val2=Min_CCR_Val;
	if(CCR_Val3<Min_CCR_Val) CCR_Val3=Min_CCR_Val;
	if(CCR_Val4<Min_CCR_Val) CCR_Val4=Min_CCR_Val;
	
	TIM3->CCR1 = CCR_Val1;
	TIM3->CCR2 = CCR_Val2;
	TIM3->CCR3 = CCR_Val3;
	TIM3->CCR4 = CCR_Val4;
}
