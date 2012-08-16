
# Inherit AOSP device configuration for u8510.
$(call inherit-product, device/huawei/u8510/device_u8510.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_u8510
PRODUCT_BRAND := huawei_u8510
PRODUCT_DEVICE := u8510
PRODUCT_MODEL := U8510
PRODUCT_MANUFACTURER := huawei

PRODUCT_RELEASE_NAME := HuaweiX3
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE=hwu8510 PRODUCT_NAME=U8510 BUILD_ID=CMX01 BUILD_DISPLAY_ID=squadzone BUILD_FINGERPRINT=Huawei/U8510/hwu8510:2.3.3/HuaweiU8510/C169B831:user/ota-rel-keys,release-keys

PRODUCT_LOCALES += mdpi

PRODUCT_PACKAGES += \
    HuaweiUpdater

#
# Copy legend specific prebuilt files
#
# Lights and graphics
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

