LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Team OctOs device maintainer info
ifneq (COMMUNITY, $(TO_BUILDTYPE))
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/samsung/serranolteusc/maintainer
endif

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit OctOs
$(call inherit-product, vendor/to/config/common_full_phone.mk)

# Inherit from serrano-common
$(call inherit-product, vendor/to/product/samsung/serrano-common/to.mk)

# Inherit from serranolteusc device
$(call inherit-product, device/samsung/serranolteusc/device.mk)

PRODUCT_NAME := to_serranolteusc
PRODUCT_DEVICE := serranolteusc
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SCH-R890

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=serranolteusc \
    BUILD_FINGERPRINT="samsung/serranolteusc/serranolteusc:4.4.2/KOT49H/R890TYUBNE4:user/release-keys" \
    PRIVATE_BUILD_DESC="serranolteusc-user 4.4.2 KOT49H R890TYUBNE4 release-keys"
