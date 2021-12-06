#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "stm32f4xx_hal_msp.c"



UART_HandleTypeDef UartHandle;

void uartInit(void);
static void SystemClock_Config(void);
static void Error_Handler(void);
void uartSendString (uint8_t timerDuration);
