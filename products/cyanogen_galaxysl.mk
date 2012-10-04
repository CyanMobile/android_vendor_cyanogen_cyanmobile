# Inherit AOSP device configuration for tass
$(call inherit-product, device/samsung/galaxysl/full_galaxysl.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_galaxysl
PRODUCT_BRAND := samsung_galaxysl
PRODUCT_DEVICE := galaxysl
PRODUCT_MODEL := GT-I9003
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9003 BUILD_ID=GRI40 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=samsung/GT-I9003/GT-I9003:2.3.6/GINGERBREAD/XWKTN:user/release-keys PRIVATE_BUILD_DESC="GT-I9003-user 2.3.6 GINGERBREAD XWKTN release-keys"

# Add HDPI assets
PRODUCT_LOCALES += hdpi

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/etc/iosched:system/bin/iosched \

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/hdpi

# Copy bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cyanogen/prebuilt/hdpi/media/shutdownanimation.zip:system/media/shutdownanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := GalaxySL
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
