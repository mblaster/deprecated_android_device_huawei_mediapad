# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common msm8660
# -include device/htc/msm8660-common/BoardConfigCommon.mk

# Bootloader
#TARGET_BOOTLOADER_BOARD_NAME := pyramid

# QCOM Gralloc/Copybit/HWcomposer
#TARGET_USES_OVERLAY := false
#COMMON_GLOBAL_CFLAGS += -DQCOM_ROTATOR_KERNEL_FORMATS

USE_CAMERA_STUB := true
# inherit from the proprietary version
-include vendor/huawei/mediapad/BoardConfigVendor.mk

# inherit from 8x60 recovery for chargemode
#-include device/htc/8x60-recovery/BoardConfigCommon.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := mediapad
TARGET_HAVE_HDMI_OUT := true
TARGET_USES_OVERLAY := true
TARGET_NO_RADIOIMAGE := true
TARGET_HAVE_TSLIB := false
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Wifi related defines
#BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#WPA_SUPPLICANT_VERSION      := VER_0_6_X
#BOARD_WLAN_DEVICE           := bcm4329
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
#WIFI_DRIVER_FW_STA_PATH     := "/system/etc/firmware/fw_bcm4329.bin"
#WIFI_DRIVER_FW_AP_PATH      := "/system/etc/firmware/fw_bcm4329_apsta.bin"
#WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/proc/calibration"
#WIFI_DRIVER_MODULE_NAME     := "bcm4329"

# Audio 
BOARD_USES_GENERIC_AUDIO := true
#BOARD_PREBUILT_LIBAUDIO := true
#BOARD_USES_ALSA_AUDIO := true

#Bluetooth
#BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true

# Define egl.cfg location
BOARD_EGL_CFG := device/huawei/mediapad/egl.cfg

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
#BOARD_USES_QCOM_GPS := true
BOARD_USE_QCOM_PMEM := true
BOARD_CAMERA_USE_GETBUFFERINFO := true


#BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
BOARD_USES_ADRENO_200 := true
#BOARD_NO_RGBX_8888 := true

#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
QCOM_TARGET_PRODUCT := msm8660


#BOARD_HAVE_SQN_WIMAX := true
#BOARD_USE_NEW_LIBRIL_HTC := true
#TARGET_PROVIDES_LIBRIL := vendor/htc/pyramid/proprietary/libril.so

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x40300000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pyramid
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

TARGET_HAVE_HDMI_OUT := true
# TARGET_HARDWARE_3D := true

# Define Prebuilt kernel locations
#TARGET_PREBUILT_KERNEL := device/huawei/mediapad/kernel
ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)
TARGET_KERNEL_SOURCE := kernel/huawei/mediapad
TARGET_KERNEL_CONFIG := cyanogenmod_mediapad_defconfig

# Qcom GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pyramid

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x18000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0179300000
BOARD_FLASH_BLOCK_SIZE := 131072

#TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_GRAPHICS:= ../../../device/huawei/mediapad/recovery/graphics.c

