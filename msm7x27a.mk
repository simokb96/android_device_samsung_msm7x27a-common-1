# Copyright (C) 2013 The CyanogenMod Project
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

DEVICE_PACKAGE_OVERLAYS += device/samsung/royss/overlay

## Video
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

## Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer

## Misc.
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    com.android.future.usb.accessory

## Bluetooth
PRODUCT_PACKAGES += \
    hciconfig \
    hcitool

## Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    audio_policy.conf \
    libaudioutils

## Other HALs
PRODUCT_PACKAGES += \
    lights.msm7x27a \
    gps.msm7x27a \
    power.msm7x27a \
    libhealthd.msm7x27a

## FM radio
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2

## Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

## Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml

## Media
PRODUCT_COPY_FILES += \
    device/samsung/royss/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/samsung/royss/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

## Rootdir
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/royss/ramdisk,root)

## Recovery
PRODUCT_COPY_FILES += \
    device/samsung/royss/recovery/sbin/rmt_storage_recovery:recovery/root/sbin/rmt_storage_recovery \
    device/samsung/royss/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    device/samsung/royss/recovery/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh

## Bluetooth
PRODUCT_COPY_FILES += \
    device/samsung/royss/prebuilt/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf \
    device/samsung/royss/prebuilt/etc/init.ath3k.bt.sh:/system/etc/init.ath3k.bt.sh \
    device/samsung/royss/prebuilt/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \

## FM
PRODUCT_COPY_FILES += \
    device/samsung/royss/prebuilt/etc/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh

## Network
PRODUCT_COPY_FILES += \
    device/samsung/royss/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/royss/prebuilt/bin/get_macaddrs:system/bin/get_macaddrs \
    device/samsung/royss/prebuilt/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/samsung/royss/prebuilt/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

## Vold config
PRODUCT_COPY_FILES += \
    device/samsung/royss/prebuilt/etc/vold.fstab:system/etc/vold.fstab

## Efs
PRODUCT_COPY_FILES += \
    device/samsung/royss/prebuilt/etc/init.qcom.efs.sync.sh:/system/etc/init.qcom.efs.sync.sh

## Audio
PRODUCT_COPY_FILES += \
    device/samsung/royss/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/royss/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/samsung/royss/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv

## Keychar
PRODUCT_COPY_FILES += \
    device/samsung/royss/prebuilt/usr/keychars/7x27a_kp.kcm.bin:system/usr/keychars/7x27a_kp.kcm.bin \
    device/samsung/royss/prebuilt/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \

## Keylayout
PRODUCT_COPY_FILES += \
    device/samsung/royss/prebuilt/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/samsung/royss/prebuilt/usr/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    device/samsung/royss/prebuilt/usr/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    device/samsung/royss/prebuilt/usr/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
    device/samsung/royss/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/samsung/royss/prebuilt/usr/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

## Sensor calibration files
PRODUCT_COPY_FILES += \
    device/samsung/royss/prebuilt/etc/calib.dat:system/etc/calib.dat \
    device/samsung/royss/prebuilt/etc/param.dat:system/etc/param.dat \
    device/samsung/royss/prebuilt/etc/sensors.dat:system/etc/sensors.dat

## Touchscreen configuration
PRODUCT_COPY_FILES += \
    device/samsung/royss/prebuilt/usr/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

## Other
PRODUCT_COPY_FILES += \
    device/samsung/royss/prebuilt/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/samsung/royss/prebuilt/etc/init.qcom.post_fs.sh:system/etc/init.qcom.post_fs.sh
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=2
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, vendor/samsung/royss/blobs.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
