# Inherit AOSP device configuration for beni
$(call inherit-product, device/samsung/beni/device_beni.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_beni
PRODUCT_BRAND := samsung_beni
PRODUCT_DEVICE := beni
PRODUCT_MODEL := GT-S5670
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-S5670 BUILD_ID=GRI40 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=samsung/GT-S5670/GT-S5670:2.3.6/GINGERBREAD/XWKTN:user/release-keys PRIVATE_BUILD_DESC="GT-S5670-user 2.3.6 GINGERBREAD XWKTN release-keys"

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += ldpi mdpi

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

PRODUCT_PACKAGES += \
    ShuvitUpdater

PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/etc/init.d/iosched:system/bin/iosched \

# Copy bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cyanogen/prebuilt/ldpi/media/shutdownanimation.zip:system/media/shutdownanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := GalaxyFit
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
