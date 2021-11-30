
#include <stdio.h>
#include <stdbool.h>
#include "API_delay.h"
#include "stm32f4xx_hal.h"


void delayInit( delay_t * delay, tick_t duration )
{

if( delay == 0 || duration < 0 || duration > MAX_DELAY)
   while(1);//adecuado para manejo de errores. proper error handling
//de este while no sale nunca, se debe colocar un cartel de error
//se colgo el micro
   delay->duration  = duration;//cargo la duración
   delay->running=0;//pongo el flag de running en cero
}

bool_t delayRead(delay_t * delay)
{
bool_t timeArrived = false;//variable local que comeinza en false

if(delay == 0)//se verifica que el puntero sea valido
	while(1);


if (!delay->running)//si el flag esta en false significa que es la primera vez que se carga el timer
{
delay->startTime = HAL_GetTick();//cargamos en startime la cuenta del tick en ese momento
delay->running=1;//ponemos el flag en 1
}else// despues de la 1ra lectura
{
if((tick_t)(HAL_GetTick()-delay->startTime)>=delay->duration)//se chequea si el timer expiro o no haciendo
	//timepo actual - tiempo inicial si es >= que duración, si se cumple, el tiempo se cumplió
{
timeArrived=true;
delay->running=0;//el flag en 0 cortando el timer
//return true; podria ser
}
}
//return false podria ser pero al tener 2 puntos de salidas, se puede crear confusión al ser fidicil seguir el codigo
return timeArrived;//se devuelve el valor de timearrived
}


void delayWrite(delay_t * delay, tick_t duration)
{
delay->duration=duration;

}







//bool_t delayRead( delay_t * delay );
//void delayWrite( delay_t * delay, tick_t duration )
//{
//delay->duration = duration;
//}
