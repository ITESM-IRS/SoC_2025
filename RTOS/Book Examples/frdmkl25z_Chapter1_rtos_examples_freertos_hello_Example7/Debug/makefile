################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include utilities/subdir.mk
-include startup/subdir.mk
-include source/subdir.mk
-include freertos/subdir.mk
-include drivers/subdir.mk
-include board/subdir.mk
-include CMSIS/subdir.mk
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := frdmkl25z_Chapter1_rtos_examples_freertos_hello_Example7
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: frdmkl25z_Chapter1_rtos_examples_freertos_hello_Example7.axf

# Tool invocations
frdmkl25z_Chapter1_rtos_examples_freertos_hello_Example7.axf: $(OBJS) $(USER_OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -Xlinker -Map="frdmkl25z_Chapter1_rtos_examples_freertos_hello_Example7.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m0plus -mthumb -T frdmkl25z_Chapter1_rtos_examples_freertos_hello_Example7_Debug.ld -o "frdmkl25z_Chapter1_rtos_examples_freertos_hello_Example7.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) frdmkl25z_Chapter1_rtos_examples_freertos_hello_Example7.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "frdmkl25z_Chapter1_rtos_examples_freertos_hello_Example7.axf"; # arm-none-eabi-objcopy -v -O binary "frdmkl25z_Chapter1_rtos_examples_freertos_hello_Example7.axf" "frdmkl25z_Chapter1_rtos_examples_freertos_hello_Example7.bin" ; # checksum -p MKL25Z128xxx4 -d "frdmkl25z_Chapter1_rtos_examples_freertos_hello_Example7.bin";
	-@echo ' '

.PHONY: all clean dependents main-build post-build

-include ../makefile.targets
