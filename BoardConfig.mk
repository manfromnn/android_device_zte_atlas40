include device/qcom/msm7627a/BoardConfig.mk

# Platform
TARGET_NO_BOOTLOADER := true

# Kernel
KERNEL_DEFCONFIG := roamer2_jb_defconfig
BOARD_KERNEL_CMDLINE := androidboot.hardware=roamer2
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_2KPAGESIZE := 2048

# Graphics
BOARD_EGL_CFG := device/qcom/msm7627a/egl.cfg

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00c00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 460062720
BOARD_CACHEIMAGE_PARTITION_SIZE := 110100480
BOARD_USERDATAIMAGE_PARTITION_SIZE := 429916160
BOARD_FLASH_BLOCK_SIZE := 131072

# hack to prevent llvm from building
BOARD_USE_QCOM_LLVM_CLANG_RS := true

# Wifi
WPA_SUPPLICANT_VERSION := VER_2_0_DEV
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
CONFIG_DRIVER_NL80211 := y
WIFI_DRIVER_MODULE_PATH := "/system/wifi/ath6kl_sdio.ko"
WIFI_DRIVER_MODULE_NAME := "ath6kl_sdio"
WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/wifi/cfg80211.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME := "cfg80211"
WIFI_TEST_INTERFACE := "sta"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
