USE_CAMERA_STUB := true

# inherit from armv7a-neon
-include device/generic/armv7-a-neon/BoardConfig.mk
# Stuff for boot animation
TARGET_SCREEN_WIDTH := 600
TARGET_SCREEN_HEIGHT := 1024
# inherit from the proprietary version
-include vendor/samsung/lt02wifi/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := mrvl
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_KERNEL := false
TARGET_NO_BOOTLOADER := false
TARGET_BOOTLOADER_BOARD_NAME := PXA988

# Flags
COMMON_GLOBAL_CFLAGS += -DMRVL_HARDWARE

BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive console=ttyS1 debug loglevel=7
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1507852288
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5777653760
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

TARGET_KERNEL_CONFIG := pxa986_lt02_defconfig
TARGET_VARIANT_CONFIG := pxa986_lt02_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/lt02
TARGET_PREBUILT_KERNEL := device/samsung/lt02wifi/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

# Firmware files for various devices
FIRMWARE_SD8787:
	cp external/linux-firmware/mrvl/sd8787_uapsta.bin $(OUT)

TARGET_FIRMWARE := FIRMWARE_SD8787


#
TARGET_RECOVERY_FSTAB := device/samsung/lt02wifi/fstab.pxa988


# twrp
DEVICE_RESOLUTION := 1024x600
