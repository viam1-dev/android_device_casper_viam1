#
# Copyright (C) 2022 TeamWin Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/casper/viam1

# Platform
TARGET_ARCH             := arm64
TARGET_BOARD_PLATFORM   := mt6753
TARGET_ARCH_VARIANT     := armv8-a
TARGET_CPU_ABI          := arm64-v8a
TARGET_CPU_ABI2         :=
TARGET_CPU_VARIANT      := cortex-a53
TARGET_2ND_ARCH         := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI      := armeabi-v7a
TARGET_2ND_CPU_ABI2     := armeabi
TARGET_2ND_CPU_VARIANT  := cortex-a53

# Assert
TARGET_OTA_ASSERT_DEVICE := viam1,CASPER_VIA_M1

# Filesystem
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE             := 131072
TARGET_USERIMAGES_USE_EXT4         := true
RECOVERY_SDCARD_ON_DATA            := true
BOARD_HAS_LARGE_FILESYSTEM         := true
TW_INCLUDE_CRYPTO                  := true

# Kernel
BOARD_KERNEL_CMDLINE    := bootopt=64S3,32N2,64N2
BOARD_KERNEL_PAGESIZE   := 2048
BOARD_KERNEL_BASE       := 0x40078000
BOARD_KERNEL_OFFSET     := 0x00008000
BOARD_RAMDISK_OFFSET    := 0x03f88000
BOARD_SECOND_OFFSET     := 0x00e88000
BOARD_TAGS_OFFSET       := 0x0df88000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_PREBUILT_KERNEL  := $(LOCAL_PATH)/prebuilt/$(BOARD_KERNEL_IMAGE_NAME)
BOARD_MKBOOTIMG_ARGS    += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS    += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS    += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS    += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS    += --second_offset $(BOARD_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS    += --tags_offset $(BOARD_TAGS_OFFSET)

# Logging
TARGET_USES_LOGD    := true
TWRP_INCLUDE_LOGCAT := true

# Display & Graphics
TW_THEME                         := portrait_hdpi
TW_BRIGHTNESS_PATH               := /sys/class/leds/lcd-backlight/brightness
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# TWRP
TW_EXCLUDE_SUPERSU := true
