# Release name
PRODUCT_RELEASE_NAME := lt02wifi

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/lt02wifi/device_lt02wifi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lt02wifi
PRODUCT_NAME := cm_lt02wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := lt02wifi
PRODUCT_MANUFACTURER := samsung
