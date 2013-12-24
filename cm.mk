## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := nx40x

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/nubia/nx40x/device_nx40x.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nx40x
PRODUCT_NAME := cm_nx40x
PRODUCT_BRAND := nubia
PRODUCT_BOARD := MSM8960
PRODUCT_MODEL := NX40X
PRODUCT_MANUFACTURER := nubia
