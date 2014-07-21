#include "IMU.h"

void IMU_Init()
{
	USART1_Config();
	char num=0x01;
	printf("%c",num);
	time_waitMs(400);
	num=0x04;
	printf("%c",num);
	time_waitMs(50);
	num=0x06;
	printf("%c",num);
	time_waitMs(50);
	num=0x09;
	printf("%c",num);
	time_waitMs(50);
}
