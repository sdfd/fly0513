#line 1 "..\\BSP\\Tim_PWM_In.c"
#line 1 "..\\BSP\\Tim_PWM_In.h"



#line 1 "..\\CMSIS\\stm32f10x.h"







































 



 



 
    






  


 
  


 

#line 75 "..\\CMSIS\\stm32f10x.h"


















 





#line 107 "..\\CMSIS\\stm32f10x.h"







            
#line 122 "..\\CMSIS\\stm32f10x.h"





 






 
#line 143 "..\\CMSIS\\stm32f10x.h"



 



 



 
#line 162 "..\\CMSIS\\stm32f10x.h"




 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMPER_IRQn                 = 2,       
  RTC_IRQn                    = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Channel1_IRQn          = 11,      
  DMA1_Channel2_IRQn          = 12,      
  DMA1_Channel3_IRQn          = 13,      
  DMA1_Channel4_IRQn          = 14,      
  DMA1_Channel5_IRQn          = 15,      
  DMA1_Channel6_IRQn          = 16,      
  DMA1_Channel7_IRQn          = 17,      

#line 221 "..\\CMSIS\\stm32f10x.h"

#line 242 "..\\CMSIS\\stm32f10x.h"

#line 270 "..\\CMSIS\\stm32f10x.h"

#line 296 "..\\CMSIS\\stm32f10x.h"


  ADC1_2_IRQn                 = 18,      
  USB_HP_CAN1_TX_IRQn         = 19,      
  USB_LP_CAN1_RX0_IRQn        = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_IRQn               = 24,      
  TIM1_UP_IRQn                = 25,      
  TIM1_TRG_COM_IRQn           = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,      
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTCAlarm_IRQn               = 41,      
  USBWakeUp_IRQn              = 42,      
  TIM8_BRK_IRQn               = 43,      
  TIM8_UP_IRQn                = 44,      
  TIM8_TRG_COM_IRQn           = 45,      
  TIM8_CC_IRQn                = 46,      
  ADC3_IRQn                   = 47,      
  FSMC_IRQn                   = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_IRQn                   = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Channel1_IRQn          = 56,      
  DMA2_Channel2_IRQn          = 57,      
  DMA2_Channel3_IRQn          = 58,      
  DMA2_Channel4_5_IRQn        = 59       


#line 381 "..\\CMSIS\\stm32f10x.h"

#line 426 "..\\CMSIS\\stm32f10x.h"

#line 472 "..\\CMSIS\\stm32f10x.h"
} IRQn_Type;



 

#line 1 "..\\CMSIS\\core_cm3.h"
 




















 





































 

 
 
 
 
 
 
 
 








 











#line 1 "E:\\Program Files\\keil for arm4.7\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"
 
 





 










#line 26 "E:\\Program Files\\keil for arm4.7\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"







 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     
typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;

     
typedef   signed       __int64 intmax_t;
typedef unsigned       __int64 uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     


     


     


     

     


     


     


     

     



     



     


     
    
 



#line 197 "E:\\Program Files\\keil for arm4.7\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"

     







     










     











#line 261 "E:\\Program Files\\keil for arm4.7\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"



 



#line 91 "..\\CMSIS\\core_cm3.h"

















 

#line 117 "..\\CMSIS\\core_cm3.h"





 


 





 
typedef struct
{
  volatile uint32_t ISER[8];                       
       uint32_t RESERVED0[24];                                   
  volatile uint32_t ICER[8];                       
       uint32_t RSERVED1[24];                                    
  volatile uint32_t ISPR[8];                       
       uint32_t RESERVED2[24];                                   
  volatile uint32_t ICPR[8];                       
       uint32_t RESERVED3[24];                                   
  volatile uint32_t IABR[8];                       
       uint32_t RESERVED4[56];                                   
  volatile uint8_t  IP[240];                       
       uint32_t RESERVED5[644];                                  
  volatile  uint32_t STIR;                          
}  NVIC_Type;                                               
   





 
typedef struct
{
  volatile const  uint32_t CPUID;                         
  volatile uint32_t ICSR;                          
  volatile uint32_t VTOR;                          
  volatile uint32_t AIRCR;                         
  volatile uint32_t SCR;                           
  volatile uint32_t CCR;                           
  volatile uint8_t  SHP[12];                       
  volatile uint32_t SHCSR;                         
  volatile uint32_t CFSR;                          
  volatile uint32_t HFSR;                          
  volatile uint32_t DFSR;                          
  volatile uint32_t MMFAR;                         
  volatile uint32_t BFAR;                          
  volatile uint32_t AFSR;                          
  volatile const  uint32_t PFR[2];                        
  volatile const  uint32_t DFR;                           
  volatile const  uint32_t ADR;                           
  volatile const  uint32_t MMFR[4];                       
  volatile const  uint32_t ISAR[5];                       
} SCB_Type;                                                

 












 






























 






 





















 









 


















 
































                                     









 









 









 














   





 
typedef struct
{
  volatile uint32_t CTRL;                          
  volatile uint32_t LOAD;                          
  volatile uint32_t VAL;                           
  volatile const  uint32_t CALIB;                         
} SysTick_Type;

 












 



 



 








   





 
typedef struct
{
  volatile  union  
  {
    volatile  uint8_t    u8;                        
    volatile  uint16_t   u16;                       
    volatile  uint32_t   u32;                       
  }  PORT [32];                                
       uint32_t RESERVED0[864];                                 
  volatile uint32_t TER;                           
       uint32_t RESERVED1[15];                                  
  volatile uint32_t TPR;                           
       uint32_t RESERVED2[15];                                  
  volatile uint32_t TCR;                           
       uint32_t RESERVED3[29];                                  
  volatile uint32_t IWR;                           
  volatile uint32_t IRR;                           
  volatile uint32_t IMCR;                          
       uint32_t RESERVED4[43];                                  
  volatile uint32_t LAR;                           
  volatile uint32_t LSR;                           
       uint32_t RESERVED5[6];                                   
  volatile const  uint32_t PID4;                          
  volatile const  uint32_t PID5;                          
  volatile const  uint32_t PID6;                          
  volatile const  uint32_t PID7;                          
  volatile const  uint32_t PID0;                          
  volatile const  uint32_t PID1;                          
  volatile const  uint32_t PID2;                          
  volatile const  uint32_t PID3;                          
  volatile const  uint32_t CID0;                          
  volatile const  uint32_t CID1;                          
  volatile const  uint32_t CID2;                          
  volatile const  uint32_t CID3;                          
} ITM_Type;                                                

 



 
























 



 



 



 








   





 
typedef struct
{
       uint32_t RESERVED0;
  volatile const  uint32_t ICTR;                          



       uint32_t RESERVED1;

} InterruptType_Type;

 



 








   


#line 614 "..\\CMSIS\\core_cm3.h"





 
typedef struct
{
  volatile uint32_t DHCSR;                         
  volatile  uint32_t DCRSR;                         
  volatile uint32_t DCRDR;                         
  volatile uint32_t DEMCR;                         
} CoreDebug_Type;

 




































 






 






































   


 
#line 721 "..\\CMSIS\\core_cm3.h"

#line 728 "..\\CMSIS\\core_cm3.h"






   




 





#line 758 "..\\CMSIS\\core_cm3.h"


 


 




#line 783 "..\\CMSIS\\core_cm3.h"


 
 
 
 








 
extern uint32_t __get_PSP(void);








 
extern void __set_PSP(uint32_t topOfProcStack);








 
extern uint32_t __get_MSP(void);








 
extern void __set_MSP(uint32_t topOfMainStack);








 
extern uint32_t __REV16(uint16_t value);








 
extern int32_t __REVSH(int16_t value);


#line 933 "..\\CMSIS\\core_cm3.h"





 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}







 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & 1);
}







 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}





#line 1445 "..\\CMSIS\\core_cm3.h"







 
 

 











 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);                          
  
  reg_value  =  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR;                                                    
  reg_value &= ~((0xFFFFul << 16) | (7ul << 8));              
  reg_value  =  (reg_value                       |
                (0x5FA << 16) | 
                (PriorityGroupTmp << 8));                                      
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR =  reg_value;
}








 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR & (7ul << 8)) >> 8);    
}








 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}








 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}









 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000) + 0x0100))->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}








 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}








 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}









 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000) + 0x0100))->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}












 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000) + 0x0D00))->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000) + 0x0100))->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff);    }         
}















 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000) + 0x0D00))->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 4)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000) + 0x0100))->IP[(uint32_t)(IRQn)]           >> (8 - 4)));  }  
}
















 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;
 
  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}
















 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;
  
  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}



 












 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{ 
  if (ticks > (0xFFFFFFul << 0))  return (1);             
                                                               
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->LOAD  = (ticks & (0xFFFFFFul << 0)) - 1;       
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);   
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->CTRL  = (1ul << 2) | 
                   (1ul << 1)   | 
                   (1ul << 0);                     
  return (0);                                                   
}






 





 
static __inline void NVIC_SystemReset(void)
{
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR  = ((0x5FA << 16)      | 
                 (((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR & (7ul << 8)) | 
                 (1ul << 2));                    
  __dsb(0);                                                                    
  while(1);                                                     
}

   



 






 
 

extern volatile int ITM_RxBuffer;                     












 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((CoreDebug_Type *) (0xE000EDF0))->DEMCR & (1ul << 24))  &&       
      (((ITM_Type *) (0xE0000000))->TCR & (1ul << 0))                  &&       
      (((ITM_Type *) (0xE0000000))->TER & (1ul << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000))->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000))->PORT[0].u8 = (uint8_t) ch;
  }  
  return (ch);
}










 
static __inline int ITM_ReceiveChar (void) {
  int ch = -1;                                

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }
  
  return (ch); 
}









 
static __inline int ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}

   






   



 
#line 479 "..\\CMSIS\\stm32f10x.h"
#line 1 "..\\CMSIS\\system_stm32f10x.h"



















 



 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           



 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
#line 480 "..\\CMSIS\\stm32f10x.h"
#line 481 "..\\CMSIS\\stm32f10x.h"



   

 
typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef const int32_t sc32;   
typedef const int16_t sc16;   
typedef const int8_t sc8;    

typedef volatile int32_t  vs32;
typedef volatile int16_t  vs16;
typedef volatile int8_t   vs8;

typedef volatile const int32_t vsc32;   
typedef volatile const int16_t vsc16;   
typedef volatile const int8_t vsc8;    

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

typedef const uint32_t uc32;   
typedef const uint16_t uc16;   
typedef const uint8_t uc8;    

typedef volatile uint32_t  vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t  vu8;

typedef volatile const uint32_t vuc32;   
typedef volatile const uint16_t vuc16;   
typedef volatile const uint8_t vuc8;    

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

 





 



    



 

typedef struct
{
  volatile uint32_t SR;
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
  volatile uint32_t JOFR1;
  volatile uint32_t JOFR2;
  volatile uint32_t JOFR3;
  volatile uint32_t JOFR4;
  volatile uint32_t HTR;
  volatile uint32_t LTR;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t JSQR;
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
  volatile uint32_t DR;
} ADC_TypeDef;



 

typedef struct
{
  uint32_t  RESERVED0;
  volatile uint16_t DR1;
  uint16_t  RESERVED1;
  volatile uint16_t DR2;
  uint16_t  RESERVED2;
  volatile uint16_t DR3;
  uint16_t  RESERVED3;
  volatile uint16_t DR4;
  uint16_t  RESERVED4;
  volatile uint16_t DR5;
  uint16_t  RESERVED5;
  volatile uint16_t DR6;
  uint16_t  RESERVED6;
  volatile uint16_t DR7;
  uint16_t  RESERVED7;
  volatile uint16_t DR8;
  uint16_t  RESERVED8;
  volatile uint16_t DR9;
  uint16_t  RESERVED9;
  volatile uint16_t DR10;
  uint16_t  RESERVED10; 
  volatile uint16_t RTCCR;
  uint16_t  RESERVED11;
  volatile uint16_t CR;
  uint16_t  RESERVED12;
  volatile uint16_t CSR;
  uint16_t  RESERVED13[5];
  volatile uint16_t DR11;
  uint16_t  RESERVED14;
  volatile uint16_t DR12;
  uint16_t  RESERVED15;
  volatile uint16_t DR13;
  uint16_t  RESERVED16;
  volatile uint16_t DR14;
  uint16_t  RESERVED17;
  volatile uint16_t DR15;
  uint16_t  RESERVED18;
  volatile uint16_t DR16;
  uint16_t  RESERVED19;
  volatile uint16_t DR17;
  uint16_t  RESERVED20;
  volatile uint16_t DR18;
  uint16_t  RESERVED21;
  volatile uint16_t DR19;
  uint16_t  RESERVED22;
  volatile uint16_t DR20;
  uint16_t  RESERVED23;
  volatile uint16_t DR21;
  uint16_t  RESERVED24;
  volatile uint16_t DR22;
  uint16_t  RESERVED25;
  volatile uint16_t DR23;
  uint16_t  RESERVED26;
  volatile uint16_t DR24;
  uint16_t  RESERVED27;
  volatile uint16_t DR25;
  uint16_t  RESERVED28;
  volatile uint16_t DR26;
  uint16_t  RESERVED29;
  volatile uint16_t DR27;
  uint16_t  RESERVED30;
  volatile uint16_t DR28;
  uint16_t  RESERVED31;
  volatile uint16_t DR29;
  uint16_t  RESERVED32;
  volatile uint16_t DR30;
  uint16_t  RESERVED33; 
  volatile uint16_t DR31;
  uint16_t  RESERVED34;
  volatile uint16_t DR32;
  uint16_t  RESERVED35;
  volatile uint16_t DR33;
  uint16_t  RESERVED36;
  volatile uint16_t DR34;
  uint16_t  RESERVED37;
  volatile uint16_t DR35;
  uint16_t  RESERVED38;
  volatile uint16_t DR36;
  uint16_t  RESERVED39;
  volatile uint16_t DR37;
  uint16_t  RESERVED40;
  volatile uint16_t DR38;
  uint16_t  RESERVED41;
  volatile uint16_t DR39;
  uint16_t  RESERVED42;
  volatile uint16_t DR40;
  uint16_t  RESERVED43;
  volatile uint16_t DR41;
  uint16_t  RESERVED44;
  volatile uint16_t DR42;
  uint16_t  RESERVED45;    
} BKP_TypeDef;
  


 

typedef struct
{
  volatile uint32_t TIR;
  volatile uint32_t TDTR;
  volatile uint32_t TDLR;
  volatile uint32_t TDHR;
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;
  volatile uint32_t RDTR;
  volatile uint32_t RDLR;
  volatile uint32_t RDHR;
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;
  volatile uint32_t FR2;
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MCR;
  volatile uint32_t MSR;
  volatile uint32_t TSR;
  volatile uint32_t RF0R;
  volatile uint32_t RF1R;
  volatile uint32_t IER;
  volatile uint32_t ESR;
  volatile uint32_t BTR;
  uint32_t  RESERVED0[88];
  CAN_TxMailBox_TypeDef sTxMailBox[3];
  CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
  uint32_t  RESERVED1[12];
  volatile uint32_t FMR;
  volatile uint32_t FM1R;
  uint32_t  RESERVED2;
  volatile uint32_t FS1R;
  uint32_t  RESERVED3;
  volatile uint32_t FFA1R;
  uint32_t  RESERVED4;
  volatile uint32_t FA1R;
  uint32_t  RESERVED5[8];

  CAN_FilterRegister_TypeDef sFilterRegister[14];



} CAN_TypeDef;



 
typedef struct
{
  volatile uint32_t CFGR;
  volatile uint32_t OAR;
  volatile uint32_t PRES;
  volatile uint32_t ESR;
  volatile uint32_t CSR;
  volatile uint32_t TXD;
  volatile uint32_t RXD;  
} CEC_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;
  volatile uint8_t  IDR;
  uint8_t   RESERVED0;
  uint16_t  RESERVED1;
  volatile uint32_t CR;
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SWTRIGR;
  volatile uint32_t DHR12R1;
  volatile uint32_t DHR12L1;
  volatile uint32_t DHR8R1;
  volatile uint32_t DHR12R2;
  volatile uint32_t DHR12L2;
  volatile uint32_t DHR8R2;
  volatile uint32_t DHR12RD;
  volatile uint32_t DHR12LD;
  volatile uint32_t DHR8RD;
  volatile uint32_t DOR1;
  volatile uint32_t DOR2;



} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;	
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CMAR;
} DMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} DMA_TypeDef;



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
       uint32_t RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
       uint32_t RESERVED1[2];
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
       uint32_t RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
       uint32_t RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
       uint32_t RESERVED4[5];
  volatile uint32_t MMCTGFCR;
       uint32_t RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
       uint32_t RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
       uint32_t RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
       uint32_t RESERVED8[567];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
       uint32_t RESERVED9[9];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;
  volatile uint32_t EMR;
  volatile uint32_t RTSR;
  volatile uint32_t FTSR;
  volatile uint32_t SWIER;
  volatile uint32_t PR;
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t KEYR;
  volatile uint32_t OPTKEYR;
  volatile uint32_t SR;
  volatile uint32_t CR;
  volatile uint32_t AR;
  volatile uint32_t RESERVED;
  volatile uint32_t OBR;
  volatile uint32_t WRPR;
#line 920 "..\\CMSIS\\stm32f10x.h"
} FLASH_TypeDef;



 
  
typedef struct
{
  volatile uint16_t RDP;
  volatile uint16_t USER;
  volatile uint16_t Data0;
  volatile uint16_t Data1;
  volatile uint16_t WRP0;
  volatile uint16_t WRP1;
  volatile uint16_t WRP2;
  volatile uint16_t WRP3;
} OB_TypeDef;



 

typedef struct
{
  volatile uint32_t BTCR[8];   
} FSMC_Bank1_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t BWTR[7];
} FSMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;
  volatile uint32_t SR2;
  volatile uint32_t PMEM2;
  volatile uint32_t PATT2;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR2; 
} FSMC_Bank2_TypeDef;  



 
  
typedef struct
{
  volatile uint32_t PCR3;
  volatile uint32_t SR3;
  volatile uint32_t PMEM3;
  volatile uint32_t PATT3;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR3; 
} FSMC_Bank3_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t PCR4;
  volatile uint32_t SR4;
  volatile uint32_t PMEM4;
  volatile uint32_t PATT4;
  volatile uint32_t PIO4; 
} FSMC_Bank4_TypeDef; 



 

typedef struct
{
  volatile uint32_t CRL;
  volatile uint32_t CRH;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t BRR;
  volatile uint32_t LCKR;
} GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t EVCR;
  volatile uint32_t MAPR;
  volatile uint32_t EXTICR[4];
  uint32_t RESERVED0;
  volatile uint32_t MAPR2;  
} AFIO_TypeDef;


 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t OAR1;
  uint16_t  RESERVED2;
  volatile uint16_t OAR2;
  uint16_t  RESERVED3;
  volatile uint16_t DR;
  uint16_t  RESERVED4;
  volatile uint16_t SR1;
  uint16_t  RESERVED5;
  volatile uint16_t SR2;
  uint16_t  RESERVED6;
  volatile uint16_t CCR;
  uint16_t  RESERVED7;
  volatile uint16_t TRISE;
  uint16_t  RESERVED8;
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CSR;
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CIR;
  volatile uint32_t APB2RSTR;
  volatile uint32_t APB1RSTR;
  volatile uint32_t AHBENR;
  volatile uint32_t APB2ENR;
  volatile uint32_t APB1ENR;
  volatile uint32_t BDCR;
  volatile uint32_t CSR;










} RCC_TypeDef;



 

typedef struct
{
  volatile uint16_t CRH;
  uint16_t  RESERVED0;
  volatile uint16_t CRL;
  uint16_t  RESERVED1;
  volatile uint16_t PRLH;
  uint16_t  RESERVED2;
  volatile uint16_t PRLL;
  uint16_t  RESERVED3;
  volatile uint16_t DIVH;
  uint16_t  RESERVED4;
  volatile uint16_t DIVL;
  uint16_t  RESERVED5;
  volatile uint16_t CNTH;
  uint16_t  RESERVED6;
  volatile uint16_t CNTL;
  uint16_t  RESERVED7;
  volatile uint16_t ALRH;
  uint16_t  RESERVED8;
  volatile uint16_t ALRL;
  uint16_t  RESERVED9;
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;
  volatile uint32_t CLKCR;
  volatile uint32_t ARG;
  volatile uint32_t CMD;
  volatile const uint32_t RESPCMD;
  volatile const uint32_t RESP1;
  volatile const uint32_t RESP2;
  volatile const uint32_t RESP3;
  volatile const uint32_t RESP4;
  volatile uint32_t DTIMER;
  volatile uint32_t DLEN;
  volatile uint32_t DCTRL;
  volatile const uint32_t DCOUNT;
  volatile const uint32_t STA;
  volatile uint32_t ICR;
  volatile uint32_t MASK;
  uint32_t  RESERVED0[2];
  volatile const uint32_t FIFOCNT;
  uint32_t  RESERVED1[13];
  volatile uint32_t FIFO;
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SR;
  uint16_t  RESERVED2;
  volatile uint16_t DR;
  uint16_t  RESERVED3;
  volatile uint16_t CRCPR;
  uint16_t  RESERVED4;
  volatile uint16_t RXCRCR;
  uint16_t  RESERVED5;
  volatile uint16_t TXCRCR;
  uint16_t  RESERVED6;
  volatile uint16_t I2SCFGR;
  uint16_t  RESERVED7;
  volatile uint16_t I2SPR;
  uint16_t  RESERVED8;  
} SPI_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SMCR;
  uint16_t  RESERVED2;
  volatile uint16_t DIER;
  uint16_t  RESERVED3;
  volatile uint16_t SR;
  uint16_t  RESERVED4;
  volatile uint16_t EGR;
  uint16_t  RESERVED5;
  volatile uint16_t CCMR1;
  uint16_t  RESERVED6;
  volatile uint16_t CCMR2;
  uint16_t  RESERVED7;
  volatile uint16_t CCER;
  uint16_t  RESERVED8;
  volatile uint16_t CNT;
  uint16_t  RESERVED9;
  volatile uint16_t PSC;
  uint16_t  RESERVED10;
  volatile uint16_t ARR;
  uint16_t  RESERVED11;
  volatile uint16_t RCR;
  uint16_t  RESERVED12;
  volatile uint16_t CCR1;
  uint16_t  RESERVED13;
  volatile uint16_t CCR2;
  uint16_t  RESERVED14;
  volatile uint16_t CCR3;
  uint16_t  RESERVED15;
  volatile uint16_t CCR4;
  uint16_t  RESERVED16;
  volatile uint16_t BDTR;
  uint16_t  RESERVED17;
  volatile uint16_t DCR;
  uint16_t  RESERVED18;
  volatile uint16_t DMAR;
  uint16_t  RESERVED19;
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint16_t SR;
  uint16_t  RESERVED0;
  volatile uint16_t DR;
  uint16_t  RESERVED1;
  volatile uint16_t BRR;
  uint16_t  RESERVED2;
  volatile uint16_t CR1;
  uint16_t  RESERVED3;
  volatile uint16_t CR2;
  uint16_t  RESERVED4;
  volatile uint16_t CR3;
  uint16_t  RESERVED5;
  volatile uint16_t GTPR;
  uint16_t  RESERVED6;
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
} WWDG_TypeDef;



 
  


 











 




#line 1312 "..\\CMSIS\\stm32f10x.h"

#line 1335 "..\\CMSIS\\stm32f10x.h"



#line 1354 "..\\CMSIS\\stm32f10x.h"




















 
  


   

#line 1454 "..\\CMSIS\\stm32f10x.h"



 



 
  
  

 
    
 
 
 

 
 
 
 
 

 



 



 


 
 
 
 
 

 











 
#line 1515 "..\\CMSIS\\stm32f10x.h"




 





 
 
 
 
 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 





 



 






 
 
 
 
 

 
#line 1691 "..\\CMSIS\\stm32f10x.h"

#line 1698 "..\\CMSIS\\stm32f10x.h"

 
 








 








 






#line 1734 "..\\CMSIS\\stm32f10x.h"

 











 











 













 






#line 1850 "..\\CMSIS\\stm32f10x.h"




#line 1870 "..\\CMSIS\\stm32f10x.h"

 





#line 1883 "..\\CMSIS\\stm32f10x.h"

 
#line 1902 "..\\CMSIS\\stm32f10x.h"

#line 1911 "..\\CMSIS\\stm32f10x.h"

 
#line 1919 "..\\CMSIS\\stm32f10x.h"



















#line 1944 "..\\CMSIS\\stm32f10x.h"












 













#line 1976 "..\\CMSIS\\stm32f10x.h"





#line 1990 "..\\CMSIS\\stm32f10x.h"

#line 1997 "..\\CMSIS\\stm32f10x.h"

#line 2007 "..\\CMSIS\\stm32f10x.h"











 


















#line 2043 "..\\CMSIS\\stm32f10x.h"

 
#line 2051 "..\\CMSIS\\stm32f10x.h"



















#line 2076 "..\\CMSIS\\stm32f10x.h"












 













#line 2108 "..\\CMSIS\\stm32f10x.h"





#line 2122 "..\\CMSIS\\stm32f10x.h"

#line 2129 "..\\CMSIS\\stm32f10x.h"

#line 2139 "..\\CMSIS\\stm32f10x.h"











 








 








   
#line 2178 "..\\CMSIS\\stm32f10x.h"

#line 2273 "..\\CMSIS\\stm32f10x.h"

#line 2300 "..\\CMSIS\\stm32f10x.h"
 
 
 
 
 
 

 




































































 




































































 
#line 2462 "..\\CMSIS\\stm32f10x.h"

 
#line 2480 "..\\CMSIS\\stm32f10x.h"

 
#line 2498 "..\\CMSIS\\stm32f10x.h"

#line 2515 "..\\CMSIS\\stm32f10x.h"

 
#line 2533 "..\\CMSIS\\stm32f10x.h"

 
#line 2552 "..\\CMSIS\\stm32f10x.h"

 

 






 
#line 2579 "..\\CMSIS\\stm32f10x.h"






 








 









 








 








 









 










 




#line 2654 "..\\CMSIS\\stm32f10x.h"

 










#line 2685 "..\\CMSIS\\stm32f10x.h"

 





 
#line 2700 "..\\CMSIS\\stm32f10x.h"

 
#line 2709 "..\\CMSIS\\stm32f10x.h"

   
#line 2718 "..\\CMSIS\\stm32f10x.h"

 
#line 2727 "..\\CMSIS\\stm32f10x.h"

 





 
#line 2742 "..\\CMSIS\\stm32f10x.h"

 
#line 2751 "..\\CMSIS\\stm32f10x.h"

   
#line 2760 "..\\CMSIS\\stm32f10x.h"

 
#line 2769 "..\\CMSIS\\stm32f10x.h"

 





 
#line 2784 "..\\CMSIS\\stm32f10x.h"

 
#line 2793 "..\\CMSIS\\stm32f10x.h"

   
#line 2802 "..\\CMSIS\\stm32f10x.h"

 
#line 2811 "..\\CMSIS\\stm32f10x.h"

 





 
#line 2826 "..\\CMSIS\\stm32f10x.h"

 
#line 2835 "..\\CMSIS\\stm32f10x.h"

   
#line 2844 "..\\CMSIS\\stm32f10x.h"

 
#line 2853 "..\\CMSIS\\stm32f10x.h"

#line 2862 "..\\CMSIS\\stm32f10x.h"

#line 2871 "..\\CMSIS\\stm32f10x.h"

#line 2881 "..\\CMSIS\\stm32f10x.h"

 
 
 
 
 

 





 


 


 




 
 
 
 
 

 
#line 2945 "..\\CMSIS\\stm32f10x.h"

 
#line 2980 "..\\CMSIS\\stm32f10x.h"

 
#line 3015 "..\\CMSIS\\stm32f10x.h"

 
#line 3050 "..\\CMSIS\\stm32f10x.h"

 
#line 3085 "..\\CMSIS\\stm32f10x.h"

 





 





 





 





 





 





 





 





 






 
#line 3152 "..\\CMSIS\\stm32f10x.h"

 



 









 
#line 3176 "..\\CMSIS\\stm32f10x.h"




 




 
#line 3192 "..\\CMSIS\\stm32f10x.h"

 





 
#line 3214 "..\\CMSIS\\stm32f10x.h"

 
 





 
#line 3229 "..\\CMSIS\\stm32f10x.h"
 
#line 3236 "..\\CMSIS\\stm32f10x.h"

 




 






 


 


 


 
 
 
 
 

 
#line 3285 "..\\CMSIS\\stm32f10x.h"

 
#line 3307 "..\\CMSIS\\stm32f10x.h"

 
#line 3329 "..\\CMSIS\\stm32f10x.h"

 
#line 3351 "..\\CMSIS\\stm32f10x.h"

 
#line 3373 "..\\CMSIS\\stm32f10x.h"

 
#line 3395 "..\\CMSIS\\stm32f10x.h"

 
 
 
 
 

 
#line 3431 "..\\CMSIS\\stm32f10x.h"

 
#line 3461 "..\\CMSIS\\stm32f10x.h"

 
#line 3471 "..\\CMSIS\\stm32f10x.h"















 
#line 3495 "..\\CMSIS\\stm32f10x.h"















 
#line 3519 "..\\CMSIS\\stm32f10x.h"















 
#line 3543 "..\\CMSIS\\stm32f10x.h"















 
#line 3567 "..\\CMSIS\\stm32f10x.h"















 
#line 3591 "..\\CMSIS\\stm32f10x.h"















 
#line 3615 "..\\CMSIS\\stm32f10x.h"















 


 


 


 


 


 


 


 


 


 



 


 


 



 


 


 


 



 


 


 


 


 
 
 
 
 

 






 
#line 3716 "..\\CMSIS\\stm32f10x.h"

#line 3725 "..\\CMSIS\\stm32f10x.h"















  
 
#line 3748 "..\\CMSIS\\stm32f10x.h"


















 








































 


















































 


 


 


 


 


 


 
#line 3883 "..\\CMSIS\\stm32f10x.h"

#line 3890 "..\\CMSIS\\stm32f10x.h"

#line 3897 "..\\CMSIS\\stm32f10x.h"

#line 3904 "..\\CMSIS\\stm32f10x.h"







 
#line 3918 "..\\CMSIS\\stm32f10x.h"

#line 3925 "..\\CMSIS\\stm32f10x.h"

#line 3932 "..\\CMSIS\\stm32f10x.h"

#line 3939 "..\\CMSIS\\stm32f10x.h"

#line 3946 "..\\CMSIS\\stm32f10x.h"

#line 3953 "..\\CMSIS\\stm32f10x.h"

 
#line 3961 "..\\CMSIS\\stm32f10x.h"

#line 3968 "..\\CMSIS\\stm32f10x.h"

#line 3975 "..\\CMSIS\\stm32f10x.h"

#line 3982 "..\\CMSIS\\stm32f10x.h"

#line 3989 "..\\CMSIS\\stm32f10x.h"

#line 3996 "..\\CMSIS\\stm32f10x.h"

 
#line 4004 "..\\CMSIS\\stm32f10x.h"

#line 4011 "..\\CMSIS\\stm32f10x.h"

#line 4018 "..\\CMSIS\\stm32f10x.h"

#line 4025 "..\\CMSIS\\stm32f10x.h"





 


 


 


 


 



 
 
 
 
 

 









































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 
 





 






 


 
#line 4167 "..\\CMSIS\\stm32f10x.h"

 
#line 4177 "..\\CMSIS\\stm32f10x.h"

 


 


 
 
 
 
 

 
















 









#line 4225 "..\\CMSIS\\stm32f10x.h"

 

























 
#line 4268 "..\\CMSIS\\stm32f10x.h"

 
#line 4282 "..\\CMSIS\\stm32f10x.h"

 
#line 4292 "..\\CMSIS\\stm32f10x.h"

 




























 





















 




























 





















 
#line 4411 "..\\CMSIS\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
#line 4446 "..\\CMSIS\\stm32f10x.h"





#line 4457 "..\\CMSIS\\stm32f10x.h"

 
#line 4465 "..\\CMSIS\\stm32f10x.h"

#line 4472 "..\\CMSIS\\stm32f10x.h"

 


 
 
 
 
 

 




 
#line 4494 "..\\CMSIS\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
 
 
 
 

 


 





 


 



 
 
 
 
 

 
#line 4556 "..\\CMSIS\\stm32f10x.h"



 
#line 4568 "..\\CMSIS\\stm32f10x.h"







 


 
 
 
 
 

 











#line 4606 "..\\CMSIS\\stm32f10x.h"

 











#line 4629 "..\\CMSIS\\stm32f10x.h"

 











#line 4652 "..\\CMSIS\\stm32f10x.h"

 











#line 4675 "..\\CMSIS\\stm32f10x.h"

 








































 








































 








































 








































 


































 


































 


































 


































 



























 



























 



























 
#line 5072 "..\\CMSIS\\stm32f10x.h"

 
#line 5081 "..\\CMSIS\\stm32f10x.h"

 
#line 5090 "..\\CMSIS\\stm32f10x.h"

 
#line 5101 "..\\CMSIS\\stm32f10x.h"

#line 5111 "..\\CMSIS\\stm32f10x.h"

#line 5121 "..\\CMSIS\\stm32f10x.h"

#line 5131 "..\\CMSIS\\stm32f10x.h"

 
#line 5142 "..\\CMSIS\\stm32f10x.h"

#line 5152 "..\\CMSIS\\stm32f10x.h"

#line 5162 "..\\CMSIS\\stm32f10x.h"

#line 5172 "..\\CMSIS\\stm32f10x.h"

 
#line 5183 "..\\CMSIS\\stm32f10x.h"

#line 5193 "..\\CMSIS\\stm32f10x.h"

#line 5203 "..\\CMSIS\\stm32f10x.h"

#line 5213 "..\\CMSIS\\stm32f10x.h"

 
#line 5224 "..\\CMSIS\\stm32f10x.h"

#line 5234 "..\\CMSIS\\stm32f10x.h"

#line 5244 "..\\CMSIS\\stm32f10x.h"

#line 5254 "..\\CMSIS\\stm32f10x.h"

 
#line 5265 "..\\CMSIS\\stm32f10x.h"

#line 5275 "..\\CMSIS\\stm32f10x.h"

#line 5285 "..\\CMSIS\\stm32f10x.h"

#line 5295 "..\\CMSIS\\stm32f10x.h"

 
#line 5306 "..\\CMSIS\\stm32f10x.h"

#line 5316 "..\\CMSIS\\stm32f10x.h"

#line 5326 "..\\CMSIS\\stm32f10x.h"

#line 5336 "..\\CMSIS\\stm32f10x.h"

 
#line 5347 "..\\CMSIS\\stm32f10x.h"

#line 5357 "..\\CMSIS\\stm32f10x.h"

#line 5367 "..\\CMSIS\\stm32f10x.h"

#line 5377 "..\\CMSIS\\stm32f10x.h"

 


 


 
 
 
 
 

 




 












 


 






#line 5425 "..\\CMSIS\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
















 


 
#line 5495 "..\\CMSIS\\stm32f10x.h"

 
#line 5510 "..\\CMSIS\\stm32f10x.h"

 
#line 5536 "..\\CMSIS\\stm32f10x.h"

 


 


 
 
 
 
 

 
 























 























 























 























 























 























 























 























 
 
#line 5757 "..\\CMSIS\\stm32f10x.h"

 
#line 5769 "..\\CMSIS\\stm32f10x.h"

 






 
#line 5786 "..\\CMSIS\\stm32f10x.h"



     


 
 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


#line 5930 "..\\CMSIS\\stm32f10x.h"



 


#line 5942 "..\\CMSIS\\stm32f10x.h"



 


#line 5954 "..\\CMSIS\\stm32f10x.h"



 


#line 5966 "..\\CMSIS\\stm32f10x.h"



 


#line 5978 "..\\CMSIS\\stm32f10x.h"



 


#line 5990 "..\\CMSIS\\stm32f10x.h"



 


#line 6002 "..\\CMSIS\\stm32f10x.h"



 


#line 6014 "..\\CMSIS\\stm32f10x.h"



 

 


#line 6028 "..\\CMSIS\\stm32f10x.h"



 


#line 6040 "..\\CMSIS\\stm32f10x.h"



 


#line 6052 "..\\CMSIS\\stm32f10x.h"



 


#line 6064 "..\\CMSIS\\stm32f10x.h"



 


#line 6076 "..\\CMSIS\\stm32f10x.h"



 


#line 6088 "..\\CMSIS\\stm32f10x.h"



 


#line 6100 "..\\CMSIS\\stm32f10x.h"



 


#line 6112 "..\\CMSIS\\stm32f10x.h"



 


#line 6124 "..\\CMSIS\\stm32f10x.h"



 


#line 6136 "..\\CMSIS\\stm32f10x.h"



 


#line 6148 "..\\CMSIS\\stm32f10x.h"



 


#line 6160 "..\\CMSIS\\stm32f10x.h"



 


#line 6172 "..\\CMSIS\\stm32f10x.h"



 


#line 6184 "..\\CMSIS\\stm32f10x.h"



 


#line 6196 "..\\CMSIS\\stm32f10x.h"



 


#line 6208 "..\\CMSIS\\stm32f10x.h"



 
 
 
 
 

 
 
#line 6228 "..\\CMSIS\\stm32f10x.h"

 
#line 6239 "..\\CMSIS\\stm32f10x.h"

 
#line 6257 "..\\CMSIS\\stm32f10x.h"











 





 





 
#line 6295 "..\\CMSIS\\stm32f10x.h"

 












 
#line 6316 "..\\CMSIS\\stm32f10x.h"

 
 






 




 





 





 






 




 





 





 






   




 





 





 





 




 





 





 





 




 





 





 
 


 
#line 6456 "..\\CMSIS\\stm32f10x.h"

 
#line 6473 "..\\CMSIS\\stm32f10x.h"

 
#line 6490 "..\\CMSIS\\stm32f10x.h"

 
#line 6507 "..\\CMSIS\\stm32f10x.h"

 
#line 6541 "..\\CMSIS\\stm32f10x.h"

 
#line 6575 "..\\CMSIS\\stm32f10x.h"

 
#line 6609 "..\\CMSIS\\stm32f10x.h"

 
#line 6643 "..\\CMSIS\\stm32f10x.h"

 
#line 6677 "..\\CMSIS\\stm32f10x.h"

 
#line 6711 "..\\CMSIS\\stm32f10x.h"

 
#line 6745 "..\\CMSIS\\stm32f10x.h"

 
#line 6779 "..\\CMSIS\\stm32f10x.h"

 
#line 6813 "..\\CMSIS\\stm32f10x.h"

 
#line 6847 "..\\CMSIS\\stm32f10x.h"

 
#line 6881 "..\\CMSIS\\stm32f10x.h"

 
#line 6915 "..\\CMSIS\\stm32f10x.h"

 
#line 6949 "..\\CMSIS\\stm32f10x.h"

 
#line 6983 "..\\CMSIS\\stm32f10x.h"

 
#line 7017 "..\\CMSIS\\stm32f10x.h"

 
#line 7051 "..\\CMSIS\\stm32f10x.h"

 
#line 7085 "..\\CMSIS\\stm32f10x.h"

 
#line 7119 "..\\CMSIS\\stm32f10x.h"

 
#line 7153 "..\\CMSIS\\stm32f10x.h"

 
#line 7187 "..\\CMSIS\\stm32f10x.h"

 
#line 7221 "..\\CMSIS\\stm32f10x.h"

 
#line 7255 "..\\CMSIS\\stm32f10x.h"

 
#line 7289 "..\\CMSIS\\stm32f10x.h"

 
#line 7323 "..\\CMSIS\\stm32f10x.h"

 
#line 7357 "..\\CMSIS\\stm32f10x.h"

 
#line 7391 "..\\CMSIS\\stm32f10x.h"

 
#line 7425 "..\\CMSIS\\stm32f10x.h"

 
#line 7459 "..\\CMSIS\\stm32f10x.h"

 
 
 
 
 

 









#line 7486 "..\\CMSIS\\stm32f10x.h"

 
#line 7494 "..\\CMSIS\\stm32f10x.h"

 
#line 7504 "..\\CMSIS\\stm32f10x.h"

 


 


 


 


 





















 




 
 
 
 
 

 
#line 7565 "..\\CMSIS\\stm32f10x.h"

 
#line 7574 "..\\CMSIS\\stm32f10x.h"







 



#line 7595 "..\\CMSIS\\stm32f10x.h"



 



 


 
#line 7620 "..\\CMSIS\\stm32f10x.h"

 
#line 7630 "..\\CMSIS\\stm32f10x.h"

 




 


 
 
 
 
 

 
#line 7656 "..\\CMSIS\\stm32f10x.h"

 


 



 
#line 7680 "..\\CMSIS\\stm32f10x.h"

 
#line 7689 "..\\CMSIS\\stm32f10x.h"







 
#line 7709 "..\\CMSIS\\stm32f10x.h"

 
#line 7720 "..\\CMSIS\\stm32f10x.h"



 
 
 
 
 

 


#line 7749 "..\\CMSIS\\stm32f10x.h"

 









#line 7783 "..\\CMSIS\\stm32f10x.h"

 
 
 
 
 

 









 


 


 





 
#line 7823 "..\\CMSIS\\stm32f10x.h"

 


 









 


 

 



 



 



 



 



 



 



 



#line 8287 "..\\CMSIS\\stm32f10x.h"



 

 

  

#line 1 "..\\User\\stm32f10x_conf.h"



















 

 



 
 
#line 1 "..\\Lib\\inc\\stm32f10x_adc.h"




















 

 







 
#line 1 "..\\CMSIS\\stm32f10x.h"







































 



 



 
    
#line 8327 "..\\CMSIS\\stm32f10x.h"



 

  

 

 
#line 33 "..\\Lib\\inc\\stm32f10x_adc.h"



 



 



 



 

typedef struct
{
  uint32_t ADC_Mode;                      

 

  FunctionalState ADC_ScanConvMode;       

 

  FunctionalState ADC_ContinuousConvMode; 

 

  uint32_t ADC_ExternalTrigConv;          

 

  uint32_t ADC_DataAlign;                 
 

  uint8_t ADC_NbrOfChannel;               

 
}ADC_InitTypeDef;


 



 










 

#line 104 "..\\Lib\\inc\\stm32f10x_adc.h"

#line 115 "..\\Lib\\inc\\stm32f10x_adc.h"


 



 

#line 129 "..\\Lib\\inc\\stm32f10x_adc.h"




#line 139 "..\\Lib\\inc\\stm32f10x_adc.h"

#line 154 "..\\Lib\\inc\\stm32f10x_adc.h"


 



 







 



 

#line 192 "..\\Lib\\inc\\stm32f10x_adc.h"




#line 205 "..\\Lib\\inc\\stm32f10x_adc.h"


 



 

#line 229 "..\\Lib\\inc\\stm32f10x_adc.h"


 



 

















#line 266 "..\\Lib\\inc\\stm32f10x_adc.h"


 



 

#line 282 "..\\Lib\\inc\\stm32f10x_adc.h"


 



 

#line 297 "..\\Lib\\inc\\stm32f10x_adc.h"

#line 305 "..\\Lib\\inc\\stm32f10x_adc.h"


 



 











 



 

#line 338 "..\\Lib\\inc\\stm32f10x_adc.h"


 



 





 



 





 



 





 



 





  




 




 



 





 



 





 



 



 



 



 

void ADC_DeInit(ADC_TypeDef* ADCx);
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ITConfig(ADC_TypeDef* ADCx, uint16_t ADC_IT, FunctionalState NewState);
void ADC_ResetCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetResetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_StartCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_SoftwareStartConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx);
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, uint8_t Number);
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_ExternalTrigConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx);
uint32_t ADC_GetDualModeConversionValue(void);
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConv);
void ADC_ExternalTrigInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_SoftwareStartInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx);
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, uint8_t Length);
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel, uint16_t Offset);
uint16_t ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel);
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog);
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold, uint16_t LowThreshold);
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel);
void ADC_TempSensorVrefintCmd(FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, uint16_t ADC_IT);
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint16_t ADC_IT);









 



 



 

 
#line 29 "..\\User\\stm32f10x_conf.h"






#line 1 "..\\Lib\\inc\\stm32f10x_dma.h"




















 

 







 
#line 33 "..\\Lib\\inc\\stm32f10x_dma.h"



 



 



 



 

typedef struct
{
  uint32_t DMA_PeripheralBaseAddr;  

  uint32_t DMA_MemoryBaseAddr;      

  uint32_t DMA_DIR;                
 

  uint32_t DMA_BufferSize;         

 

  uint32_t DMA_PeripheralInc;      
 

  uint32_t DMA_MemoryInc;          
 

  uint32_t DMA_PeripheralDataSize; 
 

  uint32_t DMA_MemoryDataSize;     
 

  uint32_t DMA_Mode;               


 

  uint32_t DMA_Priority;           
 

  uint32_t DMA_M2M;                
 
}DMA_InitTypeDef;



 



 

#line 107 "..\\Lib\\inc\\stm32f10x_dma.h"



 







 



 







 



 







 



 

#line 154 "..\\Lib\\inc\\stm32f10x_dma.h"


 



 

#line 168 "..\\Lib\\inc\\stm32f10x_dma.h"


 



 






 



 

#line 195 "..\\Lib\\inc\\stm32f10x_dma.h"


 



 







 



 






#line 248 "..\\Lib\\inc\\stm32f10x_dma.h"

#line 269 "..\\Lib\\inc\\stm32f10x_dma.h"



#line 296 "..\\Lib\\inc\\stm32f10x_dma.h"



 



 
#line 332 "..\\Lib\\inc\\stm32f10x_dma.h"

#line 353 "..\\Lib\\inc\\stm32f10x_dma.h"



#line 380 "..\\Lib\\inc\\stm32f10x_dma.h"


 



 





 



 



 



 



 

void DMA_DeInit(DMA_Channel_TypeDef* DMAy_Channelx);
void DMA_Init(DMA_Channel_TypeDef* DMAy_Channelx, DMA_InitTypeDef* DMA_InitStruct);
void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct);
void DMA_Cmd(DMA_Channel_TypeDef* DMAy_Channelx, FunctionalState NewState);
void DMA_ITConfig(DMA_Channel_TypeDef* DMAy_Channelx, uint32_t DMA_IT, FunctionalState NewState);
void DMA_SetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx, uint16_t DataNumber); 
uint16_t DMA_GetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx);
FlagStatus DMA_GetFlagStatus(uint32_t DMAy_FLAG);
void DMA_ClearFlag(uint32_t DMAy_FLAG);
ITStatus DMA_GetITStatus(uint32_t DMAy_IT);
void DMA_ClearITPendingBit(uint32_t DMAy_IT);








 



 



 

 
#line 36 "..\\User\\stm32f10x_conf.h"



#line 1 "..\\Lib\\inc\\stm32f10x_gpio.h"




















 

 







 
#line 33 "..\\Lib\\inc\\stm32f10x_gpio.h"



 



 



 

#line 53 "..\\Lib\\inc\\stm32f10x_gpio.h"
                                     


 

typedef enum
{ 
  GPIO_Speed_10MHz = 1,
  GPIO_Speed_2MHz, 
  GPIO_Speed_50MHz
}GPIOSpeed_TypeDef;





 

typedef enum
{ GPIO_Mode_AIN = 0x0,
  GPIO_Mode_IN_FLOATING = 0x04,
  GPIO_Mode_IPD = 0x28,
  GPIO_Mode_IPU = 0x48,
  GPIO_Mode_Out_OD = 0x14,
  GPIO_Mode_Out_PP = 0x10,
  GPIO_Mode_AF_OD = 0x1C,
  GPIO_Mode_AF_PP = 0x18
}GPIOMode_TypeDef;








 

typedef struct
{
  uint16_t GPIO_Pin;             
 

  GPIOSpeed_TypeDef GPIO_Speed;  
 

  GPIOMode_TypeDef GPIO_Mode;    
 
}GPIO_InitTypeDef;




 

typedef enum
{ Bit_RESET = 0,
  Bit_SET
}BitAction;





 



 



 

#line 144 "..\\Lib\\inc\\stm32f10x_gpio.h"



#line 163 "..\\Lib\\inc\\stm32f10x_gpio.h"



 



 

#line 204 "..\\Lib\\inc\\stm32f10x_gpio.h"







#line 217 "..\\Lib\\inc\\stm32f10x_gpio.h"






#line 245 "..\\Lib\\inc\\stm32f10x_gpio.h"
                              


  



 

#line 266 "..\\Lib\\inc\\stm32f10x_gpio.h"

#line 274 "..\\Lib\\inc\\stm32f10x_gpio.h"



 



 

#line 299 "..\\Lib\\inc\\stm32f10x_gpio.h"

#line 316 "..\\Lib\\inc\\stm32f10x_gpio.h"



 



  








                                                 


 



 



 



 

void GPIO_DeInit(GPIO_TypeDef* GPIOx);
void GPIO_AFIODeInit(void);
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal);
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal);
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_EventOutputConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_EventOutputCmd(FunctionalState NewState);
void GPIO_PinRemapConfig(uint32_t GPIO_Remap, FunctionalState NewState);
void GPIO_EXTILineConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_ETH_MediaInterfaceConfig(uint32_t GPIO_ETH_MediaInterface);








 



 



 

 
#line 40 "..\\User\\stm32f10x_conf.h"
#line 1 "..\\Lib\\inc\\stm32f10x_i2c.h"




















 

 







 
#line 33 "..\\Lib\\inc\\stm32f10x_i2c.h"



 



 



 



 

typedef struct
{
  uint32_t I2C_ClockSpeed;          
 

  uint16_t I2C_Mode;                
 

  uint16_t I2C_DutyCycle;           
 

  uint16_t I2C_OwnAddress1;         
 

  uint16_t I2C_Ack;                 
 

  uint16_t I2C_AcknowledgedAddress; 
 
}I2C_InitTypeDef;



  




 





 

#line 92 "..\\Lib\\inc\\stm32f10x_i2c.h"


 



 







  



 







 



 







 



 







  



 

#line 166 "..\\Lib\\inc\\stm32f10x_i2c.h"


 



 







 



 







  



 







  



 







  



 

#line 236 "..\\Lib\\inc\\stm32f10x_i2c.h"



#line 246 "..\\Lib\\inc\\stm32f10x_i2c.h"


 



 



 

#line 265 "..\\Lib\\inc\\stm32f10x_i2c.h"



 

#line 284 "..\\Lib\\inc\\stm32f10x_i2c.h"



#line 298 "..\\Lib\\inc\\stm32f10x_i2c.h"


 



 




 







 
 

























 

 


 





























 

  
 


 
 

 






 
























 

    
 



 



 



























 

  
 

 


 
 


 


 

#line 496 "..\\Lib\\inc\\stm32f10x_i2c.h"


 



 




 



 




 



 



 



 



 

void I2C_DeInit(I2C_TypeDef* I2Cx);
void I2C_Init(I2C_TypeDef* I2Cx, I2C_InitTypeDef* I2C_InitStruct);
void I2C_StructInit(I2C_InitTypeDef* I2C_InitStruct);
void I2C_Cmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_DMACmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_DMALastTransferCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTART(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTOP(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_AcknowledgeConfig(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_OwnAddress2Config(I2C_TypeDef* I2Cx, uint8_t Address);
void I2C_DualAddressCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GeneralCallCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_ITConfig(I2C_TypeDef* I2Cx, uint16_t I2C_IT, FunctionalState NewState);
void I2C_SendData(I2C_TypeDef* I2Cx, uint8_t Data);
uint8_t I2C_ReceiveData(I2C_TypeDef* I2Cx);
void I2C_Send7bitAddress(I2C_TypeDef* I2Cx, uint8_t Address, uint8_t I2C_Direction);
uint16_t I2C_ReadRegister(I2C_TypeDef* I2Cx, uint8_t I2C_Register);
void I2C_SoftwareResetCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_NACKPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_NACKPosition);
void I2C_SMBusAlertConfig(I2C_TypeDef* I2Cx, uint16_t I2C_SMBusAlert);
void I2C_TransmitPEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_PECPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_PECPosition);
void I2C_CalculatePEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
uint8_t I2C_GetPEC(I2C_TypeDef* I2Cx);
void I2C_ARPCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_StretchClockCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_FastModeDutyCycleConfig(I2C_TypeDef* I2Cx, uint16_t I2C_DutyCycle);













































































 





 
ErrorStatus I2C_CheckEvent(I2C_TypeDef* I2Cx, uint32_t I2C_EVENT);




 
uint32_t I2C_GetLastEvent(I2C_TypeDef* I2Cx);




 
FlagStatus I2C_GetFlagStatus(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG);



 

void I2C_ClearFlag(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG);
ITStatus I2C_GetITStatus(I2C_TypeDef* I2Cx, uint32_t I2C_IT);
void I2C_ClearITPendingBit(I2C_TypeDef* I2Cx, uint32_t I2C_IT);








  



  



  

 
#line 41 "..\\User\\stm32f10x_conf.h"


#line 1 "..\\Lib\\inc\\stm32f10x_rcc.h"




















 

 







 
#line 33 "..\\Lib\\inc\\stm32f10x_rcc.h"



 



 



 

typedef struct
{
  uint32_t SYSCLK_Frequency;   
  uint32_t HCLK_Frequency;     
  uint32_t PCLK1_Frequency;    
  uint32_t PCLK2_Frequency;    
  uint32_t ADCCLK_Frequency;   
}RCC_ClocksTypeDef;



 



 



 









  



 



#line 94 "..\\Lib\\inc\\stm32f10x_rcc.h"



  



 
#line 126 "..\\Lib\\inc\\stm32f10x_rcc.h"

#line 141 "..\\Lib\\inc\\stm32f10x_rcc.h"


 



 
#line 175 "..\\Lib\\inc\\stm32f10x_rcc.h"


 




 
#line 196 "..\\Lib\\inc\\stm32f10x_rcc.h"


 

#line 283 "..\\Lib\\inc\\stm32f10x_rcc.h"




 

#line 295 "..\\Lib\\inc\\stm32f10x_rcc.h"


 



 

#line 317 "..\\Lib\\inc\\stm32f10x_rcc.h"


  



 

#line 333 "..\\Lib\\inc\\stm32f10x_rcc.h"


 



 

#line 347 "..\\Lib\\inc\\stm32f10x_rcc.h"

#line 364 "..\\Lib\\inc\\stm32f10x_rcc.h"




 




 








 
#line 396 "..\\Lib\\inc\\stm32f10x_rcc.h"


#line 423 "..\\Lib\\inc\\stm32f10x_rcc.h"
  



 

#line 435 "..\\Lib\\inc\\stm32f10x_rcc.h"


 



 








 



 

#line 462 "..\\Lib\\inc\\stm32f10x_rcc.h"


 



 







#line 489 "..\\Lib\\inc\\stm32f10x_rcc.h"


 



 

#line 518 "..\\Lib\\inc\\stm32f10x_rcc.h"




  



 

#line 553 "..\\Lib\\inc\\stm32f10x_rcc.h"
 




 



 







#line 586 "..\\Lib\\inc\\stm32f10x_rcc.h"



 



 

#line 606 "..\\Lib\\inc\\stm32f10x_rcc.h"

#line 625 "..\\Lib\\inc\\stm32f10x_rcc.h"




 



 



 



 



 

void RCC_DeInit(void);
void RCC_HSEConfig(uint32_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul);
void RCC_PLLCmd(FunctionalState NewState);





#line 666 "..\\Lib\\inc\\stm32f10x_rcc.h"

void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource);
uint8_t RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(uint32_t RCC_SYSCLK);
void RCC_PCLK1Config(uint32_t RCC_HCLK);
void RCC_PCLK2Config(uint32_t RCC_HCLK);
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState);


 void RCC_USBCLKConfig(uint32_t RCC_USBCLKSource);




void RCC_ADCCLKConfig(uint32_t RCC_PCLK2);






void RCC_LSEConfig(uint8_t RCC_LSE);
void RCC_LSICmd(FunctionalState NewState);
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);
void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);





void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);
void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCOConfig(uint8_t RCC_MCO);
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(uint8_t RCC_IT);
void RCC_ClearITPendingBit(uint8_t RCC_IT);








 



 



  

 
#line 44 "..\\User\\stm32f10x_conf.h"


#line 1 "..\\Lib\\inc\\stm32f10x_spi.h"




















 

 







 
#line 33 "..\\Lib\\inc\\stm32f10x_spi.h"



 



  



 



 

typedef struct
{
  uint16_t SPI_Direction;           
 

  uint16_t SPI_Mode;                
 

  uint16_t SPI_DataSize;            
 

  uint16_t SPI_CPOL;                
 

  uint16_t SPI_CPHA;                
 

  uint16_t SPI_NSS;                 

 
 
  uint16_t SPI_BaudRatePrescaler;   



 

  uint16_t SPI_FirstBit;            
 

  uint16_t SPI_CRCPolynomial;        
}SPI_InitTypeDef;



 

typedef struct
{

  uint16_t I2S_Mode;         
 

  uint16_t I2S_Standard;     
 

  uint16_t I2S_DataFormat;   
 

  uint16_t I2S_MCLKOutput;   
 

  uint32_t I2S_AudioFreq;    
 

  uint16_t I2S_CPOL;         
 
}I2S_InitTypeDef;



 



 










 
  
#line 136 "..\\Lib\\inc\\stm32f10x_spi.h"


 



 







 



 







  



 







 



 







 



 







  



 

#line 220 "..\\Lib\\inc\\stm32f10x_spi.h"


  



 







 



 

#line 248 "..\\Lib\\inc\\stm32f10x_spi.h"


 



 

#line 266 "..\\Lib\\inc\\stm32f10x_spi.h"


 



 

#line 282 "..\\Lib\\inc\\stm32f10x_spi.h"


  



 







 



 

#line 312 "..\\Lib\\inc\\stm32f10x_spi.h"






  



 







 



 






 



 







 



 






 



 







 



 

#line 396 "..\\Lib\\inc\\stm32f10x_spi.h"


 



 

#line 417 "..\\Lib\\inc\\stm32f10x_spi.h"


 



 




 



 



 



 



 

void SPI_I2S_DeInit(SPI_TypeDef* SPIx);
void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct);
void I2S_Init(SPI_TypeDef* SPIx, I2S_InitTypeDef* I2S_InitStruct);
void SPI_StructInit(SPI_InitTypeDef* SPI_InitStruct);
void I2S_StructInit(I2S_InitTypeDef* I2S_InitStruct);
void SPI_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void I2S_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_I2S_ITConfig(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT, FunctionalState NewState);
void SPI_I2S_DMACmd(SPI_TypeDef* SPIx, uint16_t SPI_I2S_DMAReq, FunctionalState NewState);
void SPI_I2S_SendData(SPI_TypeDef* SPIx, uint16_t Data);
uint16_t SPI_I2S_ReceiveData(SPI_TypeDef* SPIx);
void SPI_NSSInternalSoftwareConfig(SPI_TypeDef* SPIx, uint16_t SPI_NSSInternalSoft);
void SPI_SSOutputCmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_DataSizeConfig(SPI_TypeDef* SPIx, uint16_t SPI_DataSize);
void SPI_TransmitCRC(SPI_TypeDef* SPIx);
void SPI_CalculateCRC(SPI_TypeDef* SPIx, FunctionalState NewState);
uint16_t SPI_GetCRC(SPI_TypeDef* SPIx, uint8_t SPI_CRC);
uint16_t SPI_GetCRCPolynomial(SPI_TypeDef* SPIx);
void SPI_BiDirectionalLineConfig(SPI_TypeDef* SPIx, uint16_t SPI_Direction);
FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
void SPI_I2S_ClearFlag(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
ITStatus SPI_I2S_GetITStatus(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);
void SPI_I2S_ClearITPendingBit(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);








 



 



 

 
#line 47 "..\\User\\stm32f10x_conf.h"
#line 1 "..\\Lib\\inc\\stm32f10x_tim.h"




















 

 







 
#line 33 "..\\Lib\\inc\\stm32f10x_tim.h"



 



  



  




 

typedef struct
{
  uint16_t TIM_Prescaler;         
 

  uint16_t TIM_CounterMode;       
 

  uint16_t TIM_Period;            

  

  uint16_t TIM_ClockDivision;     
 

  uint8_t TIM_RepetitionCounter;  






 
} TIM_TimeBaseInitTypeDef;       



 

typedef struct
{
  uint16_t TIM_OCMode;        
 

  uint16_t TIM_OutputState;   
 

  uint16_t TIM_OutputNState;  

 

  uint16_t TIM_Pulse;         
 

  uint16_t TIM_OCPolarity;    
 

  uint16_t TIM_OCNPolarity;   

 

  uint16_t TIM_OCIdleState;   

 

  uint16_t TIM_OCNIdleState;  

 
} TIM_OCInitTypeDef;



 

typedef struct
{

  uint16_t TIM_Channel;      
 

  uint16_t TIM_ICPolarity;   
 

  uint16_t TIM_ICSelection;  
 

  uint16_t TIM_ICPrescaler;  
 

  uint16_t TIM_ICFilter;     
 
} TIM_ICInitTypeDef;




 

typedef struct
{

  uint16_t TIM_OSSRState;        
 

  uint16_t TIM_OSSIState;        
 

  uint16_t TIM_LOCKLevel;        
  

  uint16_t TIM_DeadTime;         

 

  uint16_t TIM_Break;            
 

  uint16_t TIM_BreakPolarity;    
 

  uint16_t TIM_AutomaticOutput;  
 
} TIM_BDTRInitTypeDef;



 

#line 186 "..\\Lib\\inc\\stm32f10x_tim.h"

 



 






 
#line 205 "..\\Lib\\inc\\stm32f10x_tim.h"
									                                 
 
#line 216 "..\\Lib\\inc\\stm32f10x_tim.h"

                                             
#line 225 "..\\Lib\\inc\\stm32f10x_tim.h"

 
#line 236 "..\\Lib\\inc\\stm32f10x_tim.h"

 
#line 249 "..\\Lib\\inc\\stm32f10x_tim.h"

                                         
#line 266 "..\\Lib\\inc\\stm32f10x_tim.h"

 
#line 279 "..\\Lib\\inc\\stm32f10x_tim.h"
                                                                                                                                                                                                                          


  



 

#line 308 "..\\Lib\\inc\\stm32f10x_tim.h"


 



 







  



 

#line 341 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 

#line 355 "..\\Lib\\inc\\stm32f10x_tim.h"


 



 

#line 373 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 







 



 
  






 



 







  



 







  



 







  



 







  



 







  



 







  



 







  



 

#line 497 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 







 



 







  



 







  



 







  



 

#line 561 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 

#line 577 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 

#line 593 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 

#line 610 "..\\Lib\\inc\\stm32f10x_tim.h"

#line 619 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 

#line 665 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 

#line 709 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 

#line 725 "..\\Lib\\inc\\stm32f10x_tim.h"



  



 

#line 742 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 

#line 770 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 

#line 784 "..\\Lib\\inc\\stm32f10x_tim.h"


  



  






 



 







  



 







  



 

#line 833 "..\\Lib\\inc\\stm32f10x_tim.h"


  




 

#line 851 "..\\Lib\\inc\\stm32f10x_tim.h"



  



 

#line 866 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 







  



 





                                     


  



 







  



 

#line 927 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 

#line 943 "..\\Lib\\inc\\stm32f10x_tim.h"


  



 







  



 

#line 987 "..\\Lib\\inc\\stm32f10x_tim.h"
                               
                               



  



 




  



 




  



 

#line 1034 "..\\Lib\\inc\\stm32f10x_tim.h"


 



 



 



  



 

void TIM_DeInit(TIM_TypeDef* TIMx);
void TIM_TimeBaseInit(TIM_TypeDef* TIMx, TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_OC1Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC2Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC3Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC4Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_ICInit(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_PWMIConfig(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_BDTRConfig(TIM_TypeDef* TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct);
void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_OCStructInit(TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_ICStructInit(TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_BDTRStructInit(TIM_BDTRInitTypeDef* TIM_BDTRInitStruct);
void TIM_Cmd(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CtrlPWMOutputs(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_ITConfig(TIM_TypeDef* TIMx, uint16_t TIM_IT, FunctionalState NewState);
void TIM_GenerateEvent(TIM_TypeDef* TIMx, uint16_t TIM_EventSource);
void TIM_DMAConfig(TIM_TypeDef* TIMx, uint16_t TIM_DMABase, uint16_t TIM_DMABurstLength);
void TIM_DMACmd(TIM_TypeDef* TIMx, uint16_t TIM_DMASource, FunctionalState NewState);
void TIM_InternalClockConfig(TIM_TypeDef* TIMx);
void TIM_ITRxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_TIxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_TIxExternalCLKSource,
                                uint16_t TIM_ICPolarity, uint16_t ICFilter);
void TIM_ETRClockMode1Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                             uint16_t ExtTRGFilter);
void TIM_ETRClockMode2Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, 
                             uint16_t TIM_ExtTRGPolarity, uint16_t ExtTRGFilter);
void TIM_ETRConfig(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                   uint16_t ExtTRGFilter);
void TIM_PrescalerConfig(TIM_TypeDef* TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode);
void TIM_CounterModeConfig(TIM_TypeDef* TIMx, uint16_t TIM_CounterMode);
void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_EncoderInterfaceConfig(TIM_TypeDef* TIMx, uint16_t TIM_EncoderMode,
                                uint16_t TIM_IC1Polarity, uint16_t TIM_IC2Polarity);
void TIM_ForcedOC1Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC2Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC3Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC4Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ARRPreloadConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCOM(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCCDMA(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CCPreloadControl(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_OC1PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC2PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC3PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC4PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC1FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC2FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC3FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC4FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_ClearOC1Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC2Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC3Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC4Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_OC1PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC1NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC2PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC2NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC3PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC3NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC4PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_CCxCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCx);
void TIM_CCxNCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCxN);
void TIM_SelectOCxM(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_OCMode);
void TIM_UpdateDisableConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_UpdateRequestConfig(TIM_TypeDef* TIMx, uint16_t TIM_UpdateSource);
void TIM_SelectHallSensor(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectOnePulseMode(TIM_TypeDef* TIMx, uint16_t TIM_OPMode);
void TIM_SelectOutputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_TRGOSource);
void TIM_SelectSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_SlaveMode);
void TIM_SelectMasterSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_MasterSlaveMode);
void TIM_SetCounter(TIM_TypeDef* TIMx, uint16_t Counter);
void TIM_SetAutoreload(TIM_TypeDef* TIMx, uint16_t Autoreload);
void TIM_SetCompare1(TIM_TypeDef* TIMx, uint16_t Compare1);
void TIM_SetCompare2(TIM_TypeDef* TIMx, uint16_t Compare2);
void TIM_SetCompare3(TIM_TypeDef* TIMx, uint16_t Compare3);
void TIM_SetCompare4(TIM_TypeDef* TIMx, uint16_t Compare4);
void TIM_SetIC1Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC2Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC3Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC4Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetClockDivision(TIM_TypeDef* TIMx, uint16_t TIM_CKD);
uint16_t TIM_GetCapture1(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture2(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture3(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture4(TIM_TypeDef* TIMx);
uint16_t TIM_GetCounter(TIM_TypeDef* TIMx);
uint16_t TIM_GetPrescaler(TIM_TypeDef* TIMx);
FlagStatus TIM_GetFlagStatus(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
void TIM_ClearFlag(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
ITStatus TIM_GetITStatus(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_ClearITPendingBit(TIM_TypeDef* TIMx, uint16_t TIM_IT);








  



  



 

 
#line 48 "..\\User\\stm32f10x_conf.h"
#line 1 "..\\Lib\\inc\\stm32f10x_usart.h"




















 

 







 
#line 33 "..\\Lib\\inc\\stm32f10x_usart.h"



 



  



  



  
  
typedef struct
{
  uint32_t USART_BaudRate;            


 

  uint16_t USART_WordLength;          
 

  uint16_t USART_StopBits;            
 

  uint16_t USART_Parity;              




 
 
  uint16_t USART_Mode;                
 

  uint16_t USART_HardwareFlowControl; 

 
} USART_InitTypeDef;



  
  
typedef struct
{

  uint16_t USART_Clock;   
 

  uint16_t USART_CPOL;    
 

  uint16_t USART_CPHA;    
 

  uint16_t USART_LastBit; 

 
} USART_ClockInitTypeDef;



  



  
  
















  
  


                                    




  



  
  
#line 146 "..\\Lib\\inc\\stm32f10x_usart.h"


  



  
  
#line 160 "..\\Lib\\inc\\stm32f10x_usart.h"


  



  
  





  



  
#line 187 "..\\Lib\\inc\\stm32f10x_usart.h"


  



  






  



 
  






  



 







 



 







  



 
  
#line 264 "..\\Lib\\inc\\stm32f10x_usart.h"


 



 







  



 







 



 
  







 



 







  



 

#line 336 "..\\Lib\\inc\\stm32f10x_usart.h"
                              
#line 344 "..\\Lib\\inc\\stm32f10x_usart.h"



  



  



  



  



 

void USART_DeInit(USART_TypeDef* USARTx);
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct);
void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_ITConfig(USART_TypeDef* USARTx, uint16_t USART_IT, FunctionalState NewState);
void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState);
void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address);
void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp);
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint16_t USART_LINBreakDetectLength);
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data);
uint16_t USART_ReceiveData(USART_TypeDef* USARTx);
void USART_SendBreak(USART_TypeDef* USARTx);
void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime);
void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler);
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_IrDAConfig(USART_TypeDef* USARTx, uint16_t USART_IrDAMode);
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState);
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG);
void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG);
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT);
void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint16_t USART_IT);








  



  



  

 
#line 49 "..\\User\\stm32f10x_conf.h"

#line 1 "..\\Lib\\inc\\misc.h"




















 

 







 
#line 33 "..\\Lib\\inc\\misc.h"



 



 



 



 

typedef struct
{
  uint8_t NVIC_IRQChannel;                    


 

  uint8_t NVIC_IRQChannelPreemptionPriority;  

 

  uint8_t NVIC_IRQChannelSubPriority;         

 

  FunctionalState NVIC_IRQChannelCmd;         

    
} NVIC_InitTypeDef;
 


 



 
























 



 



 



 







 



 

#line 133 "..\\Lib\\inc\\misc.h"


 



 

#line 151 "..\\Lib\\inc\\misc.h"















 



 







 



 



 



 



 

void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup);
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset);
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState);
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource);









 



 



 

 
#line 51 "..\\User\\stm32f10x_conf.h"

 
 

 
 

 
#line 74 "..\\User\\stm32f10x_conf.h"



 
#line 8298 "..\\CMSIS\\stm32f10x.h"




 

















 









 

  

 

 
#line 5 "..\\BSP\\Tim_PWM_In.h"
#line 1 "..\\User\\main.h"



#line 5 "..\\User\\main.h"
#line 1 "..\\BSP\\USART1.h"



#line 5 "..\\BSP\\USART1.h"
#line 1 "E:\\Program Files\\keil for arm4.7\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"
 
 
 





 






 













#line 38 "E:\\Program Files\\keil for arm4.7\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"


  
  typedef unsigned int size_t;    








 
 

 
  typedef struct __va_list __va_list;





   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 129 "E:\\Program Files\\keil for arm4.7\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 
extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 948 "E:\\Program Files\\keil for arm4.7\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"



 

#line 6 "..\\BSP\\USART1.h"




void USART1_Config(void);
void NVIC_Configuration(void);
int fputc(int ch, FILE *f);
void DMA_Usart1_Config(void);
extern uint8_t ReadBuffer[];
#line 6 "..\\User\\main.h"
#line 1 "..\\BSP\\SPI1.h"



#line 5 "..\\BSP\\SPI1.h"






void Spi1_Init(void);
u8 Spi_RW(u8 dat);
#line 7 "..\\User\\main.h"
#line 1 "..\\BSP\\Led.h"



#line 5 "..\\BSP\\Led.h"
#line 1 "..\\BSP\\Time.h"



#line 5 "..\\BSP\\Time.h"

void     time_init(void);
uint64_t time_nowUs(void);
uint32_t time_nowMs(void);
void     time_waitUs(uint32_t delay);
void     time_waitMs(uint32_t delay);





 
#line 26 "..\\BSP\\Time.h"

#line 6 "..\\BSP\\Led.h"
#line 1 "..\\User\\main.h"
#line 7 "..\\BSP\\Led.h"




void Led_Init(void);
void Led_Control(u8 num,u8 state);
void Ledx_ONOFF(u8 num);
#line 8 "..\\User\\main.h"
#line 1 "..\\BSP\\Motor.h"



#line 5 "..\\BSP\\Motor.h"
#line 6 "..\\BSP\\Motor.h"




void PWM_Init(void);

void motor_Init(void);
void motor_Control(int16_t CCR_Val1,int16_t CCR_Val2,int16_t CCR_Val3,int16_t CCR_Val4);

#line 9 "..\\User\\main.h"
#line 10 "..\\User\\main.h"
#line 1 "..\\BSP\\NRF24L.h"



#line 5 "..\\BSP\\NRF24L.h"
#line 6 "..\\BSP\\NRF24L.h"





#line 20 "..\\BSP\\NRF24L.h"


#line 46 "..\\BSP\\NRF24L.h"
















extern 	u8 	NRF24L01_RXDATA[32];		
extern 	u8 	NRF24L01_TXDATA[32];		

void Nrf24l01_Init(u8 model, u8 ch);				
void NRF_TxPacket(uint8_t * tx_buf, uint8_t len);			
void NRF_TxPacket_AP(uint8_t * tx_buf, uint8_t len);	
uint8_t NRF_Read_Reg(uint8_t reg);
uint8_t NRF_Write_Reg(uint8_t reg, uint8_t value);
uint8_t NRF_Read_Buf(uint8_t reg, uint8_t *pBuf, uint8_t uchars);
uint8_t Nrf24l01_Check(void);

#line 11 "..\\User\\main.h"
#line 1 "..\\BSP\\ADC.h"



#line 5 "..\\BSP\\ADC.h"



extern volatile u16 ADC_ConvertedValue;

void ADC1_Init(void);

#line 12 "..\\User\\main.h"
#line 1 "..\\User\\IMU.h"



#line 5 "..\\User\\IMU.h"
#line 6 "..\\User\\IMU.h"
#line 7 "..\\User\\IMU.h"

void IMU_Init(void);

#line 13 "..\\User\\main.h"
#line 1 "..\\BSP\\Tim3.h"



#line 5 "..\\BSP\\Tim3.h"
extern u32 TIM2_IRQCNT;
void Tim2_Init(void);
#line 14 "..\\User\\main.h"
#line 1 "..\\User\\Data_Transfer.h"



#line 5 "..\\User\\Data_Transfer.h"
#line 6 "..\\User\\Data_Transfer.h"

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
#line 15 "..\\User\\main.h"



typedef struct{
				float rol;
				float pit;
				float yaw;}T_float_angle;

typedef struct{
				float X;
				float Y;
				float Z;}T_float_xyz;

typedef struct{
				int16_t X;
				int16_t Y;
				int16_t Z;}T_int16_xyz;

typedef struct int16_rcget{
				int16_t ROLL;
				int16_t PITCH;
				int16_t THROTTLE;
				int16_t YAW;}T_RC_Data;
typedef struct{
				u8	ARMED;}T_RC_Control;
#line 1 "..\\BSP\\Tim_PWM_In.h"
#line 41 "..\\User\\main.h"
#line 1 "..\\User\\Rc.h"



#line 5 "..\\User\\Rc.h"
#line 6 "..\\User\\Rc.h"

void Rc_Fun(T_RC_Data *rc_in,T_RC_Control *rc_ct);

#line 42 "..\\User\\main.h"
#line 1 "..\\User\\Control.h"



#line 5 "..\\User\\Control.h"
#line 6 "..\\User\\Control.h"
#line 7 "..\\User\\Control.h"
typedef struct PID{
									float P;
									float pout;
									float I;
									float iout;
									float D;
									float dout;
									float IMAX;
									float OUT;}PID;

extern PID PID_ROL,PID_PIT,PID_YAW,PID_ALT,PID_POS;

extern vs16 Moto_PWM_1,Moto_PWM_2,Moto_PWM_3,Moto_PWM_4;

void Control(T_float_angle *att_in,T_int16_xyz *gyr_in, T_RC_Data *rc_in, u8 armed);

#line 43 "..\\User\\main.h"

extern u8 FLAG_ATT;
extern T_int16_xyz 		Acc,Gyr;	
extern T_float_angle 	Att_Angle;	
extern vs32				Alt;
extern T_RC_Data 		Rc_D;		
extern T_RC_Control		Rc_C;		
extern u32				Debug_cnt;

#line 6 "..\\BSP\\Tim_PWM_In.h"

void Rc_GetValue(T_RC_Data *temp);

void Tim_Pwm_In_Init(void);
void Tim4_Pwm_In_Irq(void);
void Rc_GetValue(T_RC_Data *temp);

#line 2 "..\\BSP\\Tim_PWM_In.c"

static u16 			Rc_Pwm_In[4];
static T_RC_Data 	Rc_Data;

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
  
   
  NVIC_PriorityGroupConfig(((uint32_t)0x700));
  
   
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
	
	RCC_APB1PeriphClockCmd(((uint32_t)0x00000004), ENABLE); 
	RCC_APB2PeriphClockCmd(((uint32_t)0x00000020) | ((uint32_t)0x00000001),ENABLE);
	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x1000) | ((uint16_t)0x2000) |((uint16_t)0x4000) | ((uint16_t)0x8000);
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),&GPIO_InitStructure);
	GPIO_PinRemapConfig(((uint32_t)0x00001000), ENABLE);
	
	TIM_DeInit(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800)));
	NVIC_Config();
	TIM_TimeBaseInitStructure.TIM_ClockDivision = ((uint16_t)0x0000);
	TIM_TimeBaseInitStructure.TIM_CounterMode = ((uint16_t)0x0000);
	TIM_TimeBaseInitStructure.TIM_Period = 0xffff;
	TIM_TimeBaseInitStructure.TIM_Prescaler = 36;

	TIM_TimeBaseInit(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800)),&TIM_TimeBaseInitStructure);
	
	TIM_ICInitStructure.TIM_Channel = ((uint16_t)0x0000);
	TIM_ICInitStructure.TIM_ICFilter = 0x0;
	TIM_ICInitStructure.TIM_ICPolarity = ((uint16_t)0x0000);
	TIM_ICInitStructure.TIM_ICPrescaler = ((uint16_t)0x0000);
	TIM_ICInitStructure.TIM_ICSelection = ((uint16_t)0x0001);
	TIM_ICInit(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800)),&TIM_ICInitStructure);
	
	TIM_ICInitStructure.TIM_Channel = ((uint16_t)0x0004);
	TIM_ICInitStructure.TIM_ICFilter = 0x0;
	TIM_ICInitStructure.TIM_ICPolarity = ((uint16_t)0x0000);
	TIM_ICInitStructure.TIM_ICPrescaler = ((uint16_t)0x0000);
	TIM_ICInitStructure.TIM_ICSelection = ((uint16_t)0x0001);
	TIM_ICInit(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800)),&TIM_ICInitStructure);
	
	TIM_ICInitStructure.TIM_Channel = ((uint16_t)0x0008);
	TIM_ICInitStructure.TIM_ICFilter = 0x0;
	TIM_ICInitStructure.TIM_ICPolarity = ((uint16_t)0x0000);
	TIM_ICInitStructure.TIM_ICPrescaler = ((uint16_t)0x0000);
	TIM_ICInitStructure.TIM_ICSelection = ((uint16_t)0x0001);
	TIM_ICInit(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800)),&TIM_ICInitStructure);
	
	TIM_ICInitStructure.TIM_Channel = ((uint16_t)0x000C);
	TIM_ICInitStructure.TIM_ICFilter = 0x0;
	TIM_ICInitStructure.TIM_ICPolarity = ((uint16_t)0x0000);
	TIM_ICInitStructure.TIM_ICPrescaler = ((uint16_t)0x0000);
	TIM_ICInitStructure.TIM_ICSelection = ((uint16_t)0x0001);
	TIM_ICInit(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800)),&TIM_ICInitStructure);
	
	TIM_Cmd(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800)),ENABLE);
	
	TIM_ITConfig(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800)),((uint16_t)0x0002),ENABLE);
	TIM_ITConfig(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800)),((uint16_t)0x0004),ENABLE);
	TIM_ITConfig(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800)),((uint16_t)0x0008),ENABLE);
	TIM_ITConfig(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800)),((uint16_t)0x0010),ENABLE);
}

void Tim4_Pwm_In_Irq()
{
	static u16 temp_cnt1,temp_cnt1_2,temp_cnt2,temp_cnt2_2,temp_cnt3,temp_cnt3_2,temp_cnt4,temp_cnt4_2;
	
	if(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->SR & ((uint16_t)0x0002))
	{
		u16 ccr1 = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->CCR1;
		((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->SR &= ~((uint16_t)0x0200);
		if(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400))->IDR & ((uint16_t)0x1000))
		{
			temp_cnt1 = ccr1;
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->CCER |= (1<<1);
		}
		else
		{
			temp_cnt1_2 = ccr1;
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->CCER &= ~(1<<1);
			if(temp_cnt1_2>=temp_cnt1)
				Rc_Pwm_In[0] = temp_cnt1_2-temp_cnt1;
			else
				Rc_Pwm_In[0] = 0xffff-temp_cnt1+temp_cnt1_2;
		}
	}
	if(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->SR & ((uint16_t)0x0004))
	{
		u16 ccr2 = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->CCR2;
		if(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400))->IDR & ((uint16_t)0x2000))
		{
			temp_cnt2 = ccr2;
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->CCER |= (1<<5);
		}
		else
		{
			temp_cnt2_2 = ccr2;
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->CCER &= ~(1<<5);
			if(temp_cnt2_2>=temp_cnt2)
				Rc_Pwm_In[1] = temp_cnt2_2-temp_cnt2;
			else
				Rc_Pwm_In[1] = 0xffff-temp_cnt2+temp_cnt2_2;
		}
	}
	if(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->SR & ((uint16_t)0x0008))
	{
		u16 ccr3 = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->CCR3;
		if(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400))->IDR & ((uint16_t)0x4000))
		{
			temp_cnt3 = ccr3;
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->CCER |= (1<<9);
		}
		else
		{
			temp_cnt3_2 = ccr3;
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->CCER &= ~(1<<9);
			if(temp_cnt3_2>=temp_cnt3)
				Rc_Pwm_In[2] = temp_cnt3_2-temp_cnt3;
			else
				Rc_Pwm_In[2] = 0xffff-temp_cnt3+temp_cnt3_2;
		}
	}
	if(((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->SR & ((uint16_t)0x0010))
	{
		u16 ccr4 = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->CCR4;
		if(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400))->IDR & ((uint16_t)0x8000))
		{
			temp_cnt4 = ccr4;
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->CCER |= (1<<13);
		}
		else
		{
			temp_cnt4_2 = ccr4;
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))->CCER &= ~(1<<13);
			if(temp_cnt4_2>=temp_cnt4)
				Rc_Pwm_In[3] = temp_cnt4_2-temp_cnt4;
			else
				Rc_Pwm_In[3] = 0xffff-temp_cnt4+temp_cnt4_2;
				
			Rc_DataAnl();
		}
	}
}
