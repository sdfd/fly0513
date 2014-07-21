#ifndef __DATA_TRANSFER_H
#define __DATA_TRANSFER_H

#include "stm32f10x.h"
#include "main.h"

extern u8 Data_Check,Send_Status,Send_RCData,Send_MotoPwm;

void Data_Receive_Anl(u8 *data_buf,u8 num);
void Data_Exchange(void);

void Data_Send_Status(void);	
void Data_Send_Senser(void);	
void Data_Send_RCData(void);	
void Data_Send_OFFSET(void);	
void Data_Send_PID1(void);
void Data_Send_PID2(void);
void Data_Send_PID3(void);
void Data_Send_PID4(void);
void Data_Send_PID5(void);
void Data_Send_PID6(void);
void Data_Send_MotoPWM(void);

void Data_Send_Check(u16 check);

void NRF_Send_Test(void);
#endif
