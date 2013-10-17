#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL nx40x devices, and
# are also specific to nx40x devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/nubia/nx40x/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PACKAGES := \
	lights.msm8960

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

# Vold and Storage
PRODUCT_COPY_FILES += \
	device/nubia/nx40x/configs/vold.fstab:system/etc/vold.fstab

# Live Wallpapers
PRODUCT_PACKAGES += \
	LiveWallpapers \
	LiveWallpapersPicker \
	VisualizationWallpapers \
	librs_jni

PRODUCT_COPY_FILES += \
	device/nubia/nx40x/root/fstab.qcom:root/fstab.qcom \
	device/nubia/nx40x/root/init.qcom.rc:root/init.qcom.rc \
	device/nubia/nx40x/root/init.nubia.usb.rc:root/init.nubia.usb.rc \
	device/nubia/nx40x/root/ueventd.qcom.rc:root/ueventd.qcom.rc

PRODUCT_COPY_FILES += \
	device/nubia/nx40x/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
	device/nubia/nx40x/prebuilts/diag_mdlog:system/bin/diag_mdlog \
	device/nubia/nx40x/prebuilts/ks:system/bin/ks

PRODUCT_COPY_FILES += \
	device/nubia/nx40x/configs/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
	device/nubia/nx40x/configs/snd_soc_msm_2x_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_auxpcm \
	device/nubia/nx40x/configs/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
	device/nubia/nx40x/configs/snd_soc_msm_2x_Fusion3_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm \
	device/nubia/nx40x/configs/snd_soc_msm_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_auxpcm \
	device/nubia/nx40x/configs/snd_soc_msm_I2S:system/etc/snd_soc_msm/snd_soc_msm_I2S \
	device/nubia/nx40x/configs/snd_soc_msm_I2SFusion:system/etc/snd_soc_msm/snd_soc_msm_I2SFusion \
	device/nubia/nx40x/configs/snd_soc_msm_Sitar:system/etc/snd_soc_msm/snd_soc_msm_Sitar \
	device/nubia/nx40x/configs/snd_soc_msm_Sitar_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_Sitar_auxpcm \
	device/nubia/nx40x/configs/audio_policy.conf:system/etc/audio_policy.conf \
	device/nubia/nx40x/configs/andsfCne.xml:system/etc/cne/andsfCne.xml \
	device/nubia/nx40x/configs/NsrmConfiguration.xml:system/etc/cne/NsrmConfiguration.xml \
	device/nubia/nx40x/configs/SwimConfig.xml:system/etc/cne/SwimConfig.xml

PRODUCT_COPY_FILES += \
	device/nubia/nx40x/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/nubia/nx40x/configs/media_codecs.xml:system/etc/media_codecs.xml

PRODUCT_COPY_FILES += \
	device/nubia/nx40x/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	device/nubia/nx40x/init.qcom.post_fs.sh:system/etc/init.qcom.post_fs.sh \
	device/nubia/nx40x/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
	device/nubia/nx40x/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
	device/nubia/nx40x/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
	device/nubia/nx40x/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
	device/nubia/nx40x/keylayout/Button_Jack.kl:system/usr/Button_Jack.kl \
	device/nubia/nx40x/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
	device/nubia/nx40x/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	device/nubia/nx40x/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
	device/nubia/nx40x/keylayout/keypad_8960_liquid.kl:system/usr/keylayout/keypad_8960_liquid.kl \
	device/nubia/nx40x/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
	device/nubia/nx40x/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
	device/nubia/nx40x/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl

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
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# GPS configuration
PRODUCT_COPY_FILES += \
	device/nubia/nx40x/configs/gps.conf:system/etc/gps.conf

# NFC packages
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# NFC feature files
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/nubia/nx40x/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/nubia/nx40x/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

#PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck \
	make_ext4fs \
	setup_fs

#PRODUCT_PACKAGES += \
	liboverlay
#	gestures.msm8960
#	libgenlock \
#	hwcomposer.msm8960 \
#	gralloc.msm8960 \
#	copybit.msm8960 \

PRODUCT_PACKAGES += \
	alsa.msm8960 \
	audio_policy.msm8960 \
	audio.primary.msm8960 \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libqcomvoiceprocessing \
	libaudio-resampler \
	qcmediaplayer

PRODUCT_PACKAGES += \
	power.msm8960 \
	hdmid \
	qrngd \
	libloc_eng \
	libgps.utils \
	libloc_adapter \
	gps.msm8960

PRODUCT_PACKAGES += \
	camera.msm8960 \
	libmmcamera_interface2 \
	libmmcamera_interface

PRODUCT_COPY_FILES += \
	device/nubia/nx40x/configs/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

PRODUCT_PACKAGES += \
	libmm-omxcore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libOmxCore \
	libOmxEvrcEnc \
	libOmxAmrEnc \
	libOmxAacEnc \
	libOmxQcelp13Enc \
	libstagefrighthw \
	libc2dcolorconvert

PRODUCT_PACKAGES += \
	bdAddrLoader \
	libwfcu \
	conn_init \
	com.android.future.usb.accessory

PRODUCT_PACKAGES += \
	libnetcmdiface \
	libdashplayer

PRODUCT_PACKAGES += \
	wpa_supplicant_overlay.conf \
	p2p_supplicant_overlay.conf

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.secure=0 \
	ro.adb.secure=0 \
	ro.allow.mock.location=1 \
	persist.sys.usb.config=mtp \
	persist.service.adb.enable=1
	rild.libpath=/system/lib/libril-qc-qmi-1.so

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# This is the nx40x-specific audio package
$(call inherit-product, frameworks/base/data/sounds/AudioPackage10.mk)
