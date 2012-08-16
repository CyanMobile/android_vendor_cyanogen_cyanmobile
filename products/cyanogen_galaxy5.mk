# Inherit AOSP device configuration for tass
$(call inherit-product, device/samsung/galaxy5/device_galaxy5.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_galaxy5
PRODUCT_BRAND := samsung_galaxy5
PRODUCT_DEVICE := galaxy5
PRODUCT_MODEL := GT-I5500
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I5500 BUILD_ID=GRI40 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=samsung/GT-I5500/GT-I5500:2.3.6/GINGERBREAD/XWKTN:user/release-keys PRIVATE_BUILD_DESC="GT-I5500-user 2.3.6 GINGERBREAD XWKTN release-keys"

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += ldpi mdpi

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# Copy bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cyanogen/prebuilt/ldpi/media/shutdownanimation.zip:system/media/shutdownanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := Galaxy5
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
