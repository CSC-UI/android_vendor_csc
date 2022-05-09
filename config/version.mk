#
# Copyright (C) 2022 CSC
#
# SPDX-License-Identifier: Apache-2.0
#

# Version
CSC_BRANCH := 12.1
CSC_BUILD_TYPE := DEBUG
CSC_DATE := $(shell date -u +%Y%m%d)
CSC_DEVICE := $(shell echo "$(TARGET_PRODUCT)" | cut -d '_' -f 2,3)

ifeq ($(IS_RELEASE), true)
    CSC_BUILD_TYPE := RELEASE
endif

CSC_VERSION := CSCUI-$(CSC_BRANCH)-$(CSC_DEVICE)-$(CSC_BUILD_TYPE)-$(CSC_DATE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.CSC.branch=$(shell echo "$(CSC_BRANCH)") \
    ro.CSC.build.type=$(shell echo "$(CSC_BUILD_TYPE)")

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.CSC.gms.type=GMSCore