################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/freertos_hello.c \
../source/mtb.c \
../source/semihost_hardfault.c 

C_DEPS += \
./source/freertos_hello.d \
./source/mtb.d \
./source/semihost_hardfault.d 

OBJS += \
./source/freertos_hello.o \
./source/mtb.o \
./source/semihost_hardfault.o 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MKL25Z128VLK4_cm0plus -DCPU_MKL25Z128VLK4 -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KL25Z -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DSDK_OS_FREE_RTOS -I"C:\Users\jorge\Documents\MCUXpressoIDE_11.8.0_1165\workspace\frdmkl25z_rtos_examples_freertos_hello_adc_polling\drivers" -I"C:\Users\jorge\Documents\MCUXpressoIDE_11.8.0_1165\workspace\frdmkl25z_rtos_examples_freertos_hello_adc_polling\CMSIS" -I"C:\Users\jorge\Documents\MCUXpressoIDE_11.8.0_1165\workspace\frdmkl25z_rtos_examples_freertos_hello_adc_polling\freertos" -I"C:\Users\jorge\Documents\MCUXpressoIDE_11.8.0_1165\workspace\frdmkl25z_rtos_examples_freertos_hello_adc_polling\utilities" -I"C:\Users\jorge\Documents\MCUXpressoIDE_11.8.0_1165\workspace\frdmkl25z_rtos_examples_freertos_hello_adc_polling\source" -I"C:\Users\jorge\Documents\MCUXpressoIDE_11.8.0_1165\workspace\frdmkl25z_rtos_examples_freertos_hello_adc_polling" -I"C:\Users\jorge\Documents\MCUXpressoIDE_11.8.0_1165\workspace\frdmkl25z_rtos_examples_freertos_hello_adc_polling\startup" -I"C:\Users\jorge\Documents\MCUXpressoIDE_11.8.0_1165\workspace\frdmkl25z_rtos_examples_freertos_hello_adc_polling\board" -O0 -fno-common -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source

clean-source:
	-$(RM) ./source/freertos_hello.d ./source/freertos_hello.o ./source/mtb.d ./source/mtb.o ./source/semihost_hardfault.d ./source/semihost_hardfault.o

.PHONY: clean-source

