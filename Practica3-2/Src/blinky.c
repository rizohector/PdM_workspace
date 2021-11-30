



#include "API_delay.h"
//#include <stdio.h>
#include <stdbool.h>
//#include <stdint.h>
#include "API_debounce.h"
//#include "stm32f4xx_hal.h"

#include "blinky.h"
#include "main.h"


#define LED1_DURATION 100 //macros privadas para que nos e modifique de afuera
#define LED2_DURATION 500
#define LED3_DURATION 1000
#define LEDX_DURATION 500


static delay_t delayLed1; //declarar punteros
static delay_t delayLed2;//las hace privadas en elmódulo para que nadie las modifique por fuera
static delay_t delayLed3;//son declaradas como variables globales privadas

static bool_t change=false;

void blinkyInit(void)
{
	//bool_t change=false;
	if(!change)
	{
		delayInit(&delayLed1,LED1_DURATION);
		delayInit(&delayLed2,LED2_DURATION);
		delayInit(&delayLed3,LED3_DURATION);
		change=true;
	}
	else
	{
		delayInit(&delayLed1,LEDX_DURATION);
		delayInit(&delayLed2,LEDX_DURATION);
		delayInit(&delayLed3,LEDX_DURATION);
		change=false;
	}
}

void blinkyUpdate(void)
	{
		if (delayRead(&delayLed1))BSP_LED_Toggle(LED1);
		if (delayRead(&delayLed2))BSP_LED_Toggle(LED2);
		if (delayRead(&delayLed3))BSP_LED_Toggle(LED3);
	}








