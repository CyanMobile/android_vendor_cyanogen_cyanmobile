# Inherit AOSP device configuration for gio
$(call inherit-product, device/samsung/gio/device_gio.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_gio
PRODUCT_BRAND := samsung_gio
PRODUCT_DEVICE := gio
PRODUCT_MODEL := GT-S5660
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-S5660 BUILD_ID=GRI40 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=samsung/GT-S5660/GT-S5660:2.3.4/GINGERBREAD/DXKP6:user/release-keys PRIVATE_BUILD_DESC="GT-S5660-user 2.3.4 GINGERBREAD DXKP6 release-keys"

# Add MDPI assets, in addition to LDPI
PRODUCT_LOCALES += mdpi

PRODUCT_PACKAGES += \
         GGUpdater

# Copy bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cyanogen/prebuilt/mdpi/media/shutdownanimation.zip:system/media/shutdownanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := GalaxyGio
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
