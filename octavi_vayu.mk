#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit some common Octavi OS stuff.
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# GAPPS
TARGET_GAPPS_ARCH := arm64
WITH_GAPPS := true

# Official
OCTAVI_BUILD_TYPE := Official

# QUICK TAP
TARGET_SUPPORTS_QUICK_TAP := true

# FaceUnlock
TARGET_SUPPORTS_FACE_UNLOCK := true

# Device Identifier (it must come after all inclusions)
PRODUCT_NAME := octavi_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
