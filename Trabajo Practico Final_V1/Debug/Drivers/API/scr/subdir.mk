################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/API/scr/API_debounce.c \
../Drivers/API/scr/API_delay.c \
../Drivers/API/scr/API_timer.c \
../Drivers/API/scr/API_uart.c \
../Drivers/API/scr/stm32f4xx_hal_msp.c 

OBJS += \
./Drivers/API/scr/API_debounce.o \
./Drivers/API/scr/API_delay.o \
./Drivers/API/scr/API_timer.o \
./Drivers/API/scr/API_uart.o \
./Drivers/API/scr/stm32f4xx_hal_msp.o 

C_DEPS += \
./Drivers/API/scr/API_debounce.d \
./Drivers/API/scr/API_delay.d \
./Drivers/API/scr/API_timer.d \
./Drivers/API/scr/API_uart.d \
./Drivers/API/scr/stm32f4xx_hal_msp.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/API/scr/%.o: ../Drivers/API/scr/%.c Drivers/API/scr/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F429ZITx -DSTM32F4 -DNUCLEO_F429ZI -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Inc -I"/home/rizohector/cursos/cese/github/PdM_workspace/Trabajo Practico Final_V1/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/rizohector/cursos/cese/github/PdM_workspace/Trabajo Practico Final_V1/Drivers/CMSIS/Include" -I"/home/rizohector/cursos/cese/github/PdM_workspace/Trabajo Practico Final_V1/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/rizohector/cursos/cese/github/PdM_workspace/Trabajo Practico Final_V1/Drivers/BSP/STM32F4xx_Nucleo_144" -I"/home/rizohector/cursos/cese/github/PdM_workspace/Trabajo Practico Final_V1/Drivers/Core/Inc" -I"/home/rizohector/cursos/cese/github/PdM_workspace/Trabajo Practico Final_V1/Drivers/API" -I"/home/rizohector/cursos/cese/github/PdM_workspace/Trabajo Practico Final_V1/Drivers/API/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

