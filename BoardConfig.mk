#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from tama-common
-include device/sony/tama-common/BoardConfigCommon.mk

DEVICE_PATH := device/sony/xz2c

# Display
TARGET_SCREEN_DENSITY := 480

# Kernel
TARGET_KERNEL_CONFIG := tama_apollo_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 51448807424

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
-include vendor/sony/xz2c/BoardConfigVendor.mk
