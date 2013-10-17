#
# Copyright (C) 2011 The Android Open-Source Project
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

# Kernel headers
TARGET_SPECIFIC_HEADER_PATH := device/nubia/nx40x/include

# Kernel
TARGET_PREBUILT_KERNEL := device/nubia/nx40x/kernel
ifneq ($(TARGET_PREBUILT_KERNEL),)
KERNEL_OUT := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ
KERNEL_HEADERS_INSTALL := $(KERNEL_OUT)/usr
RAMDISK_OUT := $(TARGET_OUT_INTERMEDIATES)/root
$(KERNEL_OUT):
	-mkdir -p $(KERNEL_OUT)
$(KERNEL_HEADERS_INSTALL):
	-mkdir -p $(KERNEL_HEADERS_INSTALL)
	-cp -rf device/nubia/nx40x/include/* $(KERNEL_OUT)/
#	-cp -rf device/nubia/nx40x/root/* $(RAMDISK_OUT)/
else
TARGET_KERNEL_SOURCE := kernel/nubia/nx40x
TARGET_KERNEL_CONFIG := nx40x_defconfig
endif

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
BOARD_USES_QCOM_HARDWARE := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Bootloader
TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=4
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
#BOARD_FORCE_RAMDISK_ADDRESS := 0x82200000

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/nubia/nx40x/bluetooth

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOOTLOADER_BOARD_NAME := MSM8960
TARGET_BOOTLOADER_NAME := MSM8960
TARGET_BOARD_INFO_FILE := device/nubia/nx40x/board-info.txt

BOARD_EGL_CFG := device/nubia/nx40x/configs/egl.cfg

# Display
#TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := legacy
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true

#TARGET_RECOVERY_FSTAB = device/nubia/nx40x/fstab.qcom
#RECOVERY_FSTAB_VERSION = 2
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 15728640 # 15M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640 # 15M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648 # 2G
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2859941888 # 2.66G
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/nubia/nx40x/recovery/recovery_keys.c
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

BOARD_USES_SECURE_SERVICES := true
BOARD_LIB_DUMPSTATE := libdumpstate.nx40x
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
TARGET_NO_RPC := true
BOARD_CHARGER_ENABLE_SUSPEND := true

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DNEW_ION_API=1

# Audio
BOARD_USES_ALSA_AUDIO:= true
#TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_USES_QCOM_MM_AUDIO := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
#BOARD_AUDIO_CAF_LEGACY_INPUT_BUFFERSIZE := true
BOARD_HAVE_LOW_LATENCY_AUDIO := true

# Assert
TARGET_OTA_ASSERT_DEVICE := nx40x,nx401,nx402,NX40X,NX401,NX402

-include vendor/nubia/nx40x/BoardConfigVendor.mk

BOARD_HAS_NO_SELECT_BUTTON := true
