# Inherit device configuration for p350.
$(call inherit-product, device/lge/p350/p350.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include FM-Radio stuff
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cyanogen_p350
PRODUCT_BRAND := lge_p350
PRODUCT_DEVICE := p350
PRODUCT_MODEL := LG-P350
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_pecan BUILD_ID=GRJ90 BUILD_FINGERPRINT=LGE/pecan/pecan:2.3.7/GRJ90/20111018:user/release-keys PRIVATE_BUILD_DESC="pecan-user 2.3.7 GRJ90 20111018 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += ldpi mdpi

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/etc/init.d/iosched:system/bin/iosched \

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusMe
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

# Copy bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cyanogen/prebuilt/ldpi/media/shutdownanimation.zip:system/media/shutdownanimation.zip
