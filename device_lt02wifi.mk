$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/lt02wifi/lt02wifi-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/lt02wifi/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/lt02wifi/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_lt02wifi
PRODUCT_DEVICE := lt02wifi

# Uevent files
PRODUCT_COPY_FILES += \
	device/samsung/lt02wifi/ueventd.pxa988.rc:root/ueventd.pxa988.rc

# fstab
PRODUCT_COPY_FILES += \
	device/samsung/lt02wifi/fstab.pxa988:root/fstab.pxa988

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/lt02wifi/init.recovery.pxa988.rc:root/init.recovery.pxa988.rc \
	device/samsung/lt02wifi/init.pxa988.rc:root/init.pxa988.rc \
	device/samsung/lt02wifi/init.pxa988.sensor.rc:root/init.pxa988.sensor.rc \
	device/samsung/lt02wifi/init.pxa988.tel.rc:root/init.pxa988.tel.rc \
	device/samsung/lt02wifi/init.pxa988.usb.rc:root/init.pxa988.usb.rc \
	device/samsung/lt02wifi/init.wifi.rc:root/init.wifi.rc

# Actually tell it to use the uevent and init files we copied...
PRODUCT_PACKAGES += \
	fstab.pxa988 \
	init.recovery.pxa988.rc \
	init.pxa988.rc \
	init.pxa988.sensor.rc \
	init.pxa988.tel.rc \
	init.pxa988.usb.rc \
	init.wifi.rc \
	ueventd.pxa988.rc
