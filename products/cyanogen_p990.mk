# Inherit device configuration
$(call inherit-product, device/lge/p990/p990.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_p990
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p990
PRODUCT_MODEL := Optimus 2X
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_star BUILD_ID=GRJ22 BUILD_FINGERPRINT=lge/lge_star/p990_EUR-xx:2.3.4/GRJ22/lgp990-V20l.422C563E:user/release-keys PRIVATE_BUILD_DESC="lge_star-user 2.3.4 GRJ22 422C563E release-keys"

# Extra Star overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/star

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := Optimus2X
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Add the Torch app
PRODUCT_PACKAGES += Torch
