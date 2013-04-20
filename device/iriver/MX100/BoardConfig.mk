BOARD_USES_GENERIC_AUDIO := false

# inherit from the proprietary version
-include vendor/iriver/MX100/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_BOARD_PLATFORM := s5pc110
TARGET_BOARD_PLATFORM_GPU := POWERVR_SGX540_120

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT := true
TARGET_BOARD_PLATFORM := s5pc110
TARGET_BOOTLOADER_BOARD_NAME := MX100

ANDROID_ARM_LINKER := true

BOARD_NO_RGBX_8888 := true

BOARD_USES_FROYO_GRALLOC := true
BOARD_USES_NEXUS_S_LIBS := true
BOARD_USES_OVERLAY := true
BOARD_USES_COPYBIT := false
BOARD_USES_GALAXYS_INIT := true

# Camera
USE_CAMERA_STUB := true
# BOARD_USE_FROYO_LIBCAMERA := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := MX100

BOARD_KERNEL_CMDLINE := no_console_suspend
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 00000800

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER	 := WEXT
WPA_SUPPLICANT_VERSION 		 := VER_0_6_X
BOARD_WLAN_DEVICE                := bcm4329
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_FW_STA_PATH          := "/system/etc/wl/bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH           := "/system/etc/wl/bcm4329_apsta.bin"
WIFI_DRIVER_FW_MFG_PATH          := "/system/etc/wl/bcm4329_mfg.bin"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wl/bcm4329.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME          := "wlan"

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/iriver/MX100/recovery/recovery_ui.c
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_NEEDS_CUTILS_LOG := true 

# Include aries specific stuff
-include device/iriver/MX100-common/Android.mk

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/iriver/MX100/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
