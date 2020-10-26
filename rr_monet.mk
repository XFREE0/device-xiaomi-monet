#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from monet device
$(call inherit-product, device/xiaomi/monet/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rr_monet
PRODUCT_DEVICE := monet
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := xiaomi mi 10 lite 5G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "xiaomi/monet/monet:10/QKQ1.191117.002/V11.0.11.0.QGICNXM:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=monet \
    PRODUCT_NAME=monet \
    PRIVATE_BUILD_DESC="monet-user 10 QKQ1.191117.002 V11.0.11.0.QGICNXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi