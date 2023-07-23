#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from yuechu device
$(call inherit-product, device/xiaomi/yuechu/device.mk)

PRODUCT_DEVICE := yuechu
PRODUCT_NAME := lineage_yuechu
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 23046PNC9C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phone_cn-user 13 TP1A.220624.014 V14.0.9.0.TMICNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/yuechu/yuechu:12/SP1A.210812.016/V14.0.9.0.TMICNXM:user/release-keys
