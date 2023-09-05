#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/lenovo/moba

# Apex libraries
PRODUCT_COPY_FILES += \
    $(OUT_DIR)/target/product/$(PRODUCT_RELEASE_NAME)/obj/SHARED_LIBRARIES/libandroidicu_intermediates/libandroidicu.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libcuuc.so

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Recovery Modules
PRODUCT_HOST_PACKAGES += \
    libandroidicu

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# qcom decrypt
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

