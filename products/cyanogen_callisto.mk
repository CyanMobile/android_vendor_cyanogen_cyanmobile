# Inherit AOSP device configuration for callisto
$(call inherit-product, device/samsung/callisto/device_callisto.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_callisto
PRODUCT_BRAND := samsung_callisto
PRODUCT_DEVICE := callisto
PRODUCT_MODEL := GT-I5510
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I5510 BUILD_ID=GRI40 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=samsung/GT-I5510/GT-I5510:2.3.6/GINGERBREAD/XWKTN:user/release-keys PRIVATE_BUILD_DESC="GT-I5510-user 2.3.6 GINGERBREAD XWKTN release-keys"

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += ldpi mdpi

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

PRODUCT_PACKAGES += \
    LilGUpdater

# Copy bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/lmdpi/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cyanogen/prebuilt/mdpi/media/shutdownanimation.zip:system/media/shutdownanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := GalaxyI5510
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
