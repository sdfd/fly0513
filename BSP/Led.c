#include "Led.h"
void Led_Init()
{
	GPIO_InitTypeDef GPIO_InitStructure;
	
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOF,ENABLE);
	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1 | GPIO_Pin_2;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	
	GPIO_Init(GPIOF,&GPIO_InitStructure);
	
	Led_Control(3,1);
	time_waitMs(100);
	Led_Control(1,0);
	time_waitMs(1500);
	Led_Control(2,0);
	time_waitMs(1500);
	Led_Control(3,1);
	time_waitMs(1500);
	Led_Control(3,0);
	time_waitMs(2500);
	Led_Control(3,1);
}
void Led_Control(u8 num,u8 state)
{
	switch(num)
	{
		case 1:Led1(state)
			break;
		case 2:Led2(state)
			break;
		default:Led1(state) Led2(state)
	}
}

void Ledx_ONOFF(u8 num)
{
	static u32 Ledx_temp;
	static u8 Ledx_sta=1,busy=0;
	if(Ledx_sta)
	{
		if(!busy)
		{
			Ledx_temp = time_nowMs();
			busy = 1;
		}
		else if((Ledx_temp+200) < time_nowMs())
			{
				Led_Control(num,1);
				busy = 0;
				Ledx_sta = 0;
			}
	}
	else 
	{
		if(!busy)
		{
			Ledx_temp = time_nowMs();
			busy = 1;
		}
		else if((Ledx_temp + 200) < time_nowMs())
		{
			Led_Control(num,0);
			busy = 0;
			Ledx_sta = 1;
		}
	}
}
