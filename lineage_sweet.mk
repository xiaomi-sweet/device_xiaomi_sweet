#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common Alphadroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
TARGET_USE_PIXEL_LAUNCHER := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps
WITH_GAPPS := 2
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_USE_PIXEL_FRAMEWORK := true

# Maintainer Flags
ALPHA_MAINTAINER := UnmoveD
ALPHA_BUILD_TYPE := Official

# Debugging Flags
TARGET_INCLUDE_MATLOG := false
TARGET_DEFAULT_ADB_ENABLED := false

PRODUCT_NAME := lineage_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
