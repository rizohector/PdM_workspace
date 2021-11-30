################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/API_debounce.c \
../Src/API_delay.c \
../Src/blinky.c \
../Src/main.c 

OBJS += \
./Src/API_debounce.o \
./Src/API_delay.o \
./Src/blinky.o \
./Src/main.o 

C_DEPS += \
./Src/API_debounce.d \
./Src/API_delay.d \
./Src/blinky.d \
./Src/main.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F429ZITx -DSTM32F4 -DNUCLEO_F429ZI -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Inc -I"/home/rizohector/cursos/cese/github/PdM_workspace/Practica3-2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/rizohector/cursos/cese/github/PdM_workspace/Practica3-2/Drivers/CMSIS/Include" -I"/home/rizohector/cursos/cese/github/PdM_workspace/Practica3-2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/rizohector/cursos/cese/github/PdM_workspace/Practica3-2/Drivers/BSP/STM32F4xx_Nucleo_144" -I"/home/rizohector/cursos/cese/github/PdM_workspace/Practica3-2/Drivers/Core/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

