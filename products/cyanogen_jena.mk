# Inherit AOSP device configuration for tass
$(call inherit-product, device/samsung/jena/device_jena.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_jena
PRODUCT_BRAND := samsung_jena
PRODUCT_DEVICE := jena
PRODUCT_MODEL := GT-S6500D
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-S6500D BUILD_ID=GRI40 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=samsung/GT-S6500D/GT-S6500D:2.3.6/GINGERBREAD/XXCL2:user/release-keys PRIVATE_BUILD_DESC="GT-S6500D-user 2.3.6 GINGERBREAD XXCL2 release-keys"

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += mdpi

# Copy bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cyanogen/prebuilt/ldpi/media/shutdownanimation.zip:system/media/shutdownanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := GalaxyMini2
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
