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


BUILD_ARTIFACT_NAME := Chapter2_rtos_examples_freertos_hello_Example10
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: Chapter2_rtos_examples_freertos_hello_Example10.axf

# Tool invocations
Chapter2_rtos_examples_freertos_hello_Example10.axf: $(OBJS) $(USER_OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -Xlinker -Map="Chapter2_rtos_examples_freertos_hello_Example10.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m0plus -mthumb -T Chapter2_rtos_examples_freertos_hello_Example10_Debug.ld -o "Chapter2_rtos_examples_freertos_hello_Example10.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) Chapter2_rtos_examples_freertos_hello_Example10.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "Chapter2_rtos_examples_freertos_hello_Example10.axf"; # arm-none-eabi-objcopy -v -O binary "Chapter2_rtos_examples_freertos_hello_Example10.axf" "Chapter2_rtos_examples_freertos_hello_Example10.bin" ; # checksum -p MKL25Z128xxx4 -d "Chapter2_rtos_examples_freertos_hello_Example10.bin";
	-@echo ' '

.PHONY: all clean dependents main-build post-build

-include ../makefile.targets
