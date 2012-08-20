# Inherit AOSP device configuration for blade.
$(call inherit-product, device/samsung/cooper/device_cooper.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_cooper
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := cooper
PRODUCT_MODEL := GT-S5830
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=cooper BUILD_ID=GRI40 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=samsung/GT-S5830/GT-S5830:2.3.6/GINGERBREAD/XWKTN:user/release-keys PRIVATE_BUILD_DESC="GT-S5830-user 2.3.6 GINGERBREAD XWKTN release-keys"

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += mdpi

PRODUCT_PROPERTY_OVERRIDES := \
    com.qc.hardware=true

PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/etc/iosched:system/bin/iosched \

# Release name and versioning
PRODUCT_RELEASE_NAME := GalaxyAce
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy legend specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cyanogen/prebuilt/mdpi/media/shutdownanimation.zip:system/media/shutdownanimation.zip
