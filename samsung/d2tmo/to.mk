LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

$(call inherit-product, device/samsung/d2tmo/full_d2tmo.mk)

# Inherit device common stuff specific to TO
$(call inherit-product, vendor/to/product/samsung/d2-common/to.mk)

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/samsung/d2tmo/overlay

# Inherit some common TO stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2uc \
    TARGET_DEVICE=d2tmo \
    BUILD_FINGERPRINT="samsung/d2tmo/d2tmo:4.3/JSS15J/T999UVUEMJC:user/release-keys" \
    PRIVATE_BUILD_DESC="d2tmo-user 4.3 JSS15J T999UVUEMJC release-keys"

PRODUCT_NAME := to_d2tmo
PRODUCT_DEVICE := d2tmo
