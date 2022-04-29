# Kernel
include vendor/csc/config/BoardConfigKernel.mk

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/csc/config/BoardConfigQcom.mk
endif

# Soong
include vendor/csc/config/BoardConfigSoong.mk
