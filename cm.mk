## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := nx40x

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/nubia/nx40x/device_nx40x.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nx40x
PRODUCT_NAME := cm_nx40x
PRODUCT_BRAND := nubia
PRODUCT_MODEL := nx40x
PRODUCT_MANUFACTURER := nubia
