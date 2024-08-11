#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := udon

# Inherit from those products. Most specific first.
# 引用默认的编译配置文件，core_64_bit必须先于其他引用，否则不生效
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Enable virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from udon device
$(call inherit-product, device/oneplus/udon/device.mk)

PRODUCT_DEVICE := udon
PRODUCT_NAME := twrp_udon
PRODUCT_BRAND := oplus
PRODUCT_MODEL := CPH2487
PRODUCT_MANUFACTURER := oplus
#PRODUCT_RELEASE_NAME := Redmi K60

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
