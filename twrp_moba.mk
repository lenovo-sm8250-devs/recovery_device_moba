#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := moba

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from moba device
$(call inherit-product, device/lenovo/moba/device.mk)

PRODUCT_DEVICE := moba
PRODUCT_NAME := twrp_moba
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo L79031
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="moba_row-user 11 RKQ1.201022.002 12.5.538_220127 release-keys"

BUILD_FINGERPRINT := Lenovo/moba_row/moba:11/RKQ1.201022.002/12.5.538_220127:user/release-keys
