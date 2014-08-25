$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/lge/dory/dory-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/dory/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/fstab.dory:root/fstab.dory \
    $(LOCAL_PATH)/root/default.prop:root/default.prop \
    $(LOCAL_PATH)/root/file_contexts:root/file_contexts \
    $(LOCAL_PATH)/root/init:root/init \
    $(LOCAL_PATH)/root/init.dory.rc:root/init.dory.rc \
    $(LOCAL_PATH)/root/init.environ.rc:root/init.environ.rc \
    $(LOCAL_PATH)/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/root/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/root/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/root/property_contexts:root/property_contexts \
    $(LOCAL_PATH)/root/seapp_contexts:root/seapp_contexts \
    $(LOCAL_PATH)/root/sepolicy:root/sepolicy \
    $(LOCAL_PATH)/root/ueventd.dory.rc:root/ueventd.dory.rc \
    $(LOCAL_PATH)/root/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/root/sbin/adbd:root/sbin/adbd \
    $(LOCAL_PATH)/root/sbin/healthd:root/sbin/healthd \
    $(LOCAL_PATH)/root/sbin/su:root/sbin/su \
    $(LOCAL_PATH)/root/sbin/superuser.sh:root/sbin/superuser.sh \
    $(LOCAL_PATH)/root/sbin/install-recovery.sh:root/sbin/install-recovery.sh


$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.bt.bdaddr_path=/persist/bdaddr.txt
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.adb.notify=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=none
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.strictmode.disable=false

PRODUCT_NAME := full_dory
PRODUCT_DEVICE := dory
