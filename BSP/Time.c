#include "Time.h"
#include "stm32f10x.h"

static struct 
{
    volatile uint32_t msPeriod;   //�����ڵ�ʱ��,ms?
    uint32_t ticksPerUs;  // ÿus���ڵ�tick��
    uint32_t ticksPerMs;  // ÿms���ڵ�tick��
    uint32_t msPerPeriod; // ÿ���ڵ�ms��
}time;

// ��ʼ��ʱ��
void time_init(void)
{
    time.msPeriod = 0;
    time.ticksPerUs = SystemCoreClock / 1e6;
    time.ticksPerMs = SystemCoreClock / 1e3;
    time.msPerPeriod = 10;
    SysTick_Config(SystemCoreClock/(1000/time.msPerPeriod));
//		SysTick->CTRL &= ~ SysTick_CTRL_ENABLE_Msk;
	NVIC_SetPriority(SysTick_IRQn,0);
}

// SysTick�ж�
void SysTick_Handler(void)
{
    time.msPeriod += time.msPerPeriod;
}

// ��ȡ��ǰʱ�䣬us?
uint64_t time_nowUs(void)
{
    return time.msPeriod * (uint64_t)1000 + (SysTick->LOAD - SysTick->VAL) / time.ticksPerUs;
}

// ��ȡ��ǰʱ��,ms?
uint32_t time_nowMs(void)
{
    return time.msPeriod + (SysTick->LOAD - SysTick->VAL) / time.ticksPerMs;
}

// ��ʱdelay us,delay>=4��׼ȷ
void time_waitUs(uint32_t delay)
{
    uint64_t target = time_nowUs() + delay - 2;
    while(time_nowUs() <= target)
        ; 
}

// ��ʱdelay ms��
void time_waitMs(uint32_t delay)
{
    time_waitUs(delay * 1000);
}
