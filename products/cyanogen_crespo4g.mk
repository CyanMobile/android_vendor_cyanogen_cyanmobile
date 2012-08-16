# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sojus BUILD_ID=GWK74 BUILD_FINGERPRINT=google/sojus/crespo4g:2.3.7/GWK74/185293:user/release-keys PRIVATE_BUILD_DESC="sojus-user 2.3.7 GWK74 185293 release-keys" BUILD_NUMBER=185293

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/crespo4g

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Release name and versioning
PRODUCT_RELEASE_NAME := NS4G
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy crespo specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
