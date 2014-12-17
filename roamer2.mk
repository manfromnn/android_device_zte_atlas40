$(call inherit-product, device/qcom/common/common.mk)

# Ramdisk
PRODUCT_COPY_FILES := \
    $(call find-copy-subdir-files,*,device/zte/roamer2/ramdisk,root)

# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/zte/roamer2/prebuilt/system,system)

$(call inherit-product-if-exists, vendor/zte/roamer2/roamer2-vendor-blobs.mk)
$(call inherit-product-if-exists, vendor/qcom/common/vendor-blobs.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d/dev/smd0 \
    ril.subscription.types=NV,RUIM \
    DEVICE_PROVISIONED=1 \
    ro.use_data_netmgrd=true \
    ro.moz.cam.0.sensor_offset=270 \
    ro.moz.ril.emergency_by_default=true \
    ro.moz.omx.hw.max_width=640 \
    ro.moz.omx.hw.max_height=360 \
    ro.moz.fm.noAnalog=true \
    ro.sf.lcd_density=160

# Discard inherited values and use our own instead.
PRODUCT_NAME := roamer2
PRODUCT_DEVICE := roamer2
PRODUCT_BRAND := ZTE
PRODUCT_MANUFACTURER := ZTE
PRODUCT_MODEL := roamer2
ENABLE_LIBRECOVERY := true
