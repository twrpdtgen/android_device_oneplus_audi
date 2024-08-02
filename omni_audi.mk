#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from audi device
$(call inherit-product, device/oneplus/audi/device.mk)

PRODUCT_DEVICE := audi
PRODUCT_NAME := omni_audi
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := audi
PRODUCT_MANUFACTURER := oneplus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_audi-eng 16.1.0 SP2A.220405.004 eng.color5.20240603.190237 test-keys"

BUILD_FINGERPRINT := OnePlus/twrp_audi/audi:16.1.0/SP2A.220405.004/color59706031902:eng/test-keys
