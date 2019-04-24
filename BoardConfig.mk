LOCAL_PATH := device/meizu/m3s

# Platform
TARGET_BOARD_PLATFORM := mt6750

TARGET_IS_64_BIT := true
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mt6750
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x04f88000
BOARD_TAGS_OFFSET := 0x03f88000
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

# Partitions informations
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 22020096
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Partitions types
TARGET_USERIMAGES_USE_EXT4 := true

# App
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true

# Recovery
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_REBOOT_BOOTLOADER := true
TW_THEME := portrait_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
RECOVERY_SDCARD_ON_DATA := true
TW_DEVICE_VERSION := by ElXreno (v0.1.6-alpha)
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
