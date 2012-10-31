# Inherit AOSP device configuration for apollo
$(call inherit-product, device/samsung/galaxy3/galaxy3.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_galaxy3
PRODUCT_BRAND := samsung_galaxy3
PRODUCT_DEVICE := galaxy3
PRODUCT_MODEL := GT-I5800
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I5800 BUILD_ID=GRI40 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=samsung/GT-I5800/GT-I5800:2.3.8/GINGERBREAD/XWKTN:user/release-keys PRIVATE_BUILD_DESC="GT-I5800-user 2.3.8 GINGERBREAD XWKTN release-keys"

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += ldpi mdpi

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/etc/iosched:system/bin/iosched \

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# Copy bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cyanogen/prebuilt/ldpi/media/shutdownanimation.zip:system/media/shutdownanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := Galaxy3
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
