################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.c 

OBJS += \
./Drivers/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.o 

C_DEPS += \
./Drivers/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F4xx_HAL_Driver/Src/Legacy/%.o: ../Drivers/STM32F4xx_HAL_Driver/Src/Legacy/%.c Drivers/STM32F4xx_HAL_Driver/Src/Legacy/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F429ZITx -DSTM32F4 -DNUCLEO_F429ZI -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Inc -I"/home/rizohector/cursos/cese/github/PdM_workspace-main/Practica4/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/rizohector/cursos/cese/github/PdM_workspace-main/Practica4/Drivers/CMSIS/Include" -I"/home/rizohector/cursos/cese/github/PdM_workspace-main/Practica4/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/rizohector/cursos/cese/github/PdM_workspace-main/Practica4/Drivers/BSP/STM32F4xx_Nucleo_144" -I"/home/rizohector/cursos/cese/github/PdM_workspace-main/Practica4/Drivers/Core/Inc" -I"/home/rizohector/cursos/cese/github/PdM_workspace-main/Practica4/Drivers/API" -I"/home/rizohector/cursos/cese/github/PdM_workspace-main/Practica4/Drivers/API/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

