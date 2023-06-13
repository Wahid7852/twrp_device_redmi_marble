#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

PRODUCT_DEVICE := marble
PRODUCT_NAME := twrp_marble
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := marble
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="marble-user 13 SKQ1.221022.001 V14.0.1.0.TMRMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/marble/marble:13/SKQ1.221022.001/V14.0.1.0.TMRMIXM:user/release-keys
