#
# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from common msm8226-common
-include device/motorola/msm8226-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/titan

# Vendor Unification Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := $(DEVICE_PATH)/init/init_titan.c

# Assert
TARGET_OTA_ASSERT_DEVICE := titan,titan_umts,titan_udstv,titan_umtsds,titan_retaildsds,XT1068,XT1064,XT1063,XT1069

# TWRP
DEVICE_RESOLUTION := 1280x720
TW_THEME := portrait_hdpi

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
TARGET_KERNEL_CONFIG := titan_defconfig

# Fusion Optimizations
FUSION_OPT := true
FUSION_O3 := true
FUSION_STRICT := false
FUSION_OFAST := true
FUSION_KRAIT := false
FUSION_GRAPHITE := true
FUSION_PIPE := false
FUSION_ENABLE_GCCONLY := true
FLOOP_NEST_OPTIMIZE := true
FUSION_FFAST_MATH := true
TARGET_FUSION_ROM := 4.9
TARGET_FUSION_KERNEL := 4.9-sm

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10444800
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1157627904
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5912772608

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# inherit from the proprietary version
-include vendor/motorola/titan/BoardConfigVendor.mk

# SaberMod
-include vendor/fusion/config/sm.mk
