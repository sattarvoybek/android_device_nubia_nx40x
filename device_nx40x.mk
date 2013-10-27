$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/nubia/nx40x/nx40x-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/nubia/nx40x/overlay

LOCAL_PATH := device/nubia/nx40x

# Root dir
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/default.prop:root/default.prop \
    $(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.ril.sh:root/init.qcom.ril.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/init.nubia.ums_adb.sh:root/init.nubia.ums_adb.sh \
    $(LOCAL_PATH)/rootdir/init.nubia.ums.sh:root/init.nubia.ums.sh \
    $(LOCAL_PATH)/rootdir/init.nubia.usb.rc:root/init.nubia.usb.rc \
    $(LOCAL_PATH)/rootdir/charger:root/charger \
    $(LOCAL_PATH)/rootdir/init.goldfish.rc:root/init.goldfish.rc \
    $(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/rootdir/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/init:root/init \
    $(LOCAL_PATH)/rootdir/init.poweroffcharge.rc:root/init.poweroffcharge.rc \
    $(LOCAL_PATH)/rootdir/poweroffcharge:root/sbin/poweroffcharge \
    $(LOCAL_PATH)/rootdir/adbd:root/sbin/adbd \
    $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \
    $(LOCAL_PATH)/rootdir/res/images/0.png:root/res/images/0.png \
    $(LOCAL_PATH)/rootdir/res/images/1.png:root/res/images/1.png \
    $(LOCAL_PATH)/rootdir/res/images/2.png:root/res/images/2.png \
    $(LOCAL_PATH)/rootdir/res/images/3.png:root/res/images/3.png \
    $(LOCAL_PATH)/rootdir/res/images/4.png:root/res/images/4.png \
    $(LOCAL_PATH)/rootdir/res/images/5.png:root/res/images/5.png \
    $(LOCAL_PATH)/rootdir/res/images/6.png:root/res/images/6.png \
    $(LOCAL_PATH)/rootdir/res/images/7.png:root/res/images/7.png \
    $(LOCAL_PATH)/rootdir/res/images/8.png:root/res/images/8.png \
    $(LOCAL_PATH)/rootdir/res/images/9.png:root/res/images/9.png \
    $(LOCAL_PATH)/rootdir/res/images/percent.png:root/res/images/percent.png \
    $(LOCAL_PATH)/rootdir/res/images/power0.png:root/res/images/power0.png \
    $(LOCAL_PATH)/rootdir/res/images/power1.png:root/res/images/power1.png \
    $(LOCAL_PATH)/rootdir/res/images/power2.png:root/res/images/power2.png \
    $(LOCAL_PATH)/rootdir/res/images/power3.png:root/res/images/power3.png \
    $(LOCAL_PATH)/rootdir/res/images/power4.png:root/res/images/power4.png \
    $(LOCAL_PATH)/rootdir/res/images/power5.png:root/res/images/power5.png \
    $(LOCAL_PATH)/rootdir/res/images/power6.png:root/res/images/power6.png \
    $(LOCAL_PATH)/rootdir/res/images/power7.png:root/res/images/power7.png \
    $(LOCAL_PATH)/rootdir/res/images/power8.png:root/res/images/power8.png \
    $(LOCAL_PATH)/rootdir/res/images/power_error.png:root/res/images/power_error.png \
    $(LOCAL_PATH)/rootdir/res/images/power_full.png:root/res/images/power_full.png \
    $(LOCAL_PATH)/rootdir/res/images/power_off.png:root/res/images/power_off.png \
    $(LOCAL_PATH)/rootdir/res/images/power_prepare.png:root/res/images/power_prepare.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_charge.png:root/res/images/charger/battery_charge.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png

# Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/egl.cfg:system/etc/egl.cfg \
    $(LOCAL_PATH)/configs/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/configs/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/configs/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/configs/init.qcom.sensor.sh:system/etc/init.qcom.sensor.sh \
    $(LOCAL_PATH)/configs/init.qcom.thermal_conf.sh:system/etc/init.qcom.thermal_conf.sh \
    $(LOCAL_PATH)/configs/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    $(LOCAL_PATH)/configs/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    $(LOCAL_PATH)/configs/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    $(LOCAL_PATH)/configs/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    $(LOCAL_PATH)/configs/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Specific keys
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keys/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    $(LOCAL_PATH)/keys/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    $(LOCAL_PATH)/keys/Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keys/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    $(LOCAL_PATH)/keys/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keys/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(LOCAL_PATH)/keys/keypad_8960_liquid.kl:system/usr/keylayout/keypad_8960_liquid.kl \
    $(LOCAL_PATH)/keys/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    $(LOCAL_PATH)/keys/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    $(LOCAL_PATH)/keys/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl \
    $(LOCAL_PATH)/keys/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc \
    $(LOCAL_PATH)/keys/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm \
    $(LOCAL_PATH)/keys/apq8064-tabla-snd-card_Button_Jack.kcm:system/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm \
    $(LOCAL_PATH)/keys/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
    $(LOCAL_PATH)/keys/zte_cap_touchscreen.idc:system/usr/idc/zte_cap_touchscreen.idc

# Missing libs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/libs/sensors.has_gyro.so:system/lib/hw/sensors.has_gyro.so
#    $(LOCAL_PATH)/libs/gps.default.so:system/lib/hw/gps.default.so \
#    $(LOCAL_PATH)/libs/nfc.default.so:system/lib/hw/nfc.default.so \
#    $(LOCAL_PATH)/libs/sensors.msm8930.so:system/lib/hw/sensors.msm8930.so
#    $(LOCAL_PATH)/libs/gestures.msm8960.so:system/lib/hw/gestures.msm8960.so \

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

#Upto 3 layers can go through overlays
PRODUCT_PROPERTY_OVERRIDES += debug.mdpcomp.maxlayer=3

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
        persist.sys.usb.config=mtp,adb

PRODUCT_PROPERTY_OVERRIDES += \
        ro.qualcomm.bt.hci_transport=smd

PRODUCT_PROPERTY_OVERRIDES += \
        rild.libpath=/system/lib/libril-qc-qmi-1.so

#PRODUCT_PROPERTY_OVERRIDES += \
#        wifi.interface=wlan0 \
#        wifi.supplicant_scan_interval=15

PRODUCT_PROPERTY_OVERRIDES += \
        ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
        ro.sf.lcd_density=320

#dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += libnetcmdiface

# Keystore
PRODUCT_PACKAGES += keystore.msm8960

# Misc Packages
PRODUCT_PACKAGES += \
    DeviceSettings \
    Torch

# Audio
PRODUCT_TAGS += \
    audio.primary.default \
    audio.primary.msm8960 \
    audio_policy.msm8960

# Bluetooth
PRODUCT_PACKAGES += \
    hci_qcomm_init \
    bluetoothd

PRODUCT_PACKAGES += \
        bdAddrLoader \
        libwfcu \
        conn_init

# Camera
PRODUCT_PACKAGES += \
    camera.msm8960 \
    libmmcamera_interface2 \
    libmmcamera_interface

# GPS
PRODUCT_PACKAGES += \
    libloc_adapter \
    libloc_eng \
    libloc_api_v02 \
    libgps.utils \
    gps.msm8960

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    gralloc.default \
    hwcomposer.msm8960 \
    libgenlock \
    liboverlay

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8960

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# QCOM rngd
PRODUCT_PACKAGES += \
    qrngd

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck      \
    make_ext4fs \
    setup_fs
	
# NFC Support
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.handset.mic=dmic \
    persist.audio.fluence.mode=endfire \
    persist.audio.lowlatency.rec=false

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_nx40x
PRODUCT_DEVICE := nx40x

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Assert
TARGET_OTA_ASSERT_DEVICE := nx40x,nx401,nx402,NX40X,NX401,NX402

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-hwui-memory.mk)
