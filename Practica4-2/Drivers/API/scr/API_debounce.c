

//#include "API_delay.c"
#include "API_delay.h" //se utiliza pra delay no bloqueantes
#include <stdint.h>  //se utiliza para enteros standard
#include <stdbool.h> //se utiliza para bulianos standard
#include <stdio.h>
#include "API_debounce.h"
#include "main.h"

//void debounceInit(void);
//void debounceUpdate(void);
//void buttonPressed(void); //se define 2 funciones privadas
//void buttonReleased(void);//no se peude acceder desde afuera del módulo


//podrían definirse static, pero al estar en el C ya son privadas
typedef enum              //se crea un enumeraicón de nombre debounce_t
       {
	    BUTTON_UP,       //son los 4 estados de la MEF
		BUTTON_RAISING,
	    BUTTON_DOWN,
		BUTTON_FALLING
	   }debounce_t;

static debounce_t debounceState; //se define una variable que se
                        //llama debounceState del tipo debounce_t
static delay_t delay; //se define un delay, ninguna se puede ver desde afuera

#define DELAY_TIME 40 //macro con el tiempo de delay

//bool_t debounceInit(void) //función de inicialización
void debounceInit(void)
               {
                debounceState=BUTTON_UP;//carga valor incicial, la MEF inicial con el boton sin presionar
                BSP_PB_Init(BUTTON_USER, BUTTON_MODE_GPIO);//inicialización del botón
                delayInit(&delay, DELAY_TIME);//inicializa delay con el tiempo del delay

                BSP_LED_Init(LED1);//se inicializa los LEDs
                BSP_LED_Init(LED2);
                BSP_LED_Init(LED3);
                //return true;
               }

void debounceUpdate(void)//función de actualización
        {
	     switch (debounceState)
	           {
	            case BUTTON_UP:
	            	if (BSP_PB_GetState(BUTTON_USER))//si se presiona el botón entrega un boleano 1
	            	{
	            		delayRead(&delay);//aquí el delay no esta corriendo, esta apagado, se toma solo la marca del tiempo y comienza a marcar el tiempo, por eso no se fija si expiró o no,
	            		debounceState=BUTTON_FALLING;//cambio el estado de la MEF a falling
	            	}
	            	break;

	            case BUTTON_FALLING: //la siguiente vez que ingrese esta el estado en falling
	            if (delayRead(&delay))//pregunta si el delay (tiempo) expiró, sino expiró sale
	                {
	            	 if (BSP_PB_GetState(BUTTON_USER))//cuando el tiempo expira, se lee el pulsador
	            	 {
	            		 buttonPressed();//si está presionado, se llama a la función de flanco descendente
	            		 debounceState=BUTTON_DOWN;//se cambia el estado a down
	            	 }
	            	 else {
	            		   debounceState=BUTTON_UP;//sino estaba presionado, descartamos la pulsación del botón
	            	      }
	                }
                 break;

	            case BUTTON_DOWN:
	            	if (!BSP_PB_GetState(BUTTON_USER))
	            	{
	            	 	delayRead(&delay);
	            	 	debounceState=BUTTON_RAISING;
	            	}
	            	break;

	            	//break;

	            case BUTTON_RAISING:
	            	if(delayRead(&delay))
	            	{
	            	  if(!BSP_PB_GetState(BUTTON_USER))
	            	  {
	            		buttonReleased();
	            		debounceState=BUTTON_UP;
	            	  }
	            	  else {debounceState=BUTTON_DOWN;}

	            	}
	            break;
	           }
        }

void buttonPressed(void)//boton cuando se presiona, flanco descendente
{
	//BSP_LED_Toggle(LED1);
}

void buttonReleased(void)//boton cuando se suelta, flanco ascendente
{
	blinkyInit();
	//BSP_LED_Toggle(LED2);
}
