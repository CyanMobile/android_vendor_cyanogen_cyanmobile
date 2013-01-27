# Inherit common CM stuff
$(call inherit-product, vendor/cyanogen/products/common.mk)

# CyanogenMod specific product packages
PRODUCT_PACKAGES += \
    CMWallpapers

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

# Theme packages
# include vendor/cyanogen/products/themes.mk

# Include extra dictionaries for LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/dictionaries

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=CmxTone.ogg \
    ro.config.notification_sound=CyanMessage.ogg \
    ro.config.alarm_alert=CyanAlarm.ogg
