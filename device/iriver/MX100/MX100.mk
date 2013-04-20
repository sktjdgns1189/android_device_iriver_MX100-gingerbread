#
# Copyright (C) 2011 The Android Open Source Project
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

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.


DEVICE_PACKAGE_OVERLAYS := device/iriver/MX100-common/overlay


# These are the hardware-specific configuration files
PRODUCT_COPY_FILES := \
    device/iriver/MX100-common/prebuilt/etc/asound.conf:system/etc/asound.conf \
    device/iriver/MX100-common/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/iriver/MX100-common/prebuilt/etc/egl.cfg:system/lib/egl/egl.cfg

# kernel modules
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/iriver/MX100-common/modules,system/lib/modules)

# WiFi
PRODUCT_COPY_FILES += \
     device/iriver/MX100-common/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Keylayout and Keychars
PRODUCT_COPY_FILES += \
     device/iriver/MX100-common/prebuilt/usr/keylayout/qt602240_ts_input.kl:system/usr/keylayout/qt602240_ts_input.kl \
     device/iriver/MX100-common/prebuilt/usr/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
     device/iriver/MX100-common/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
     device/iriver/MX100-common/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
     device/iriver/MX100-common/prebuilt/usr/keylayout/Broadcom_Bluetooth_HID.kl:system/usr/keylayout/Broadcom_Bluetooth_HID.kl \
     device/iriver/MX100-common/prebuilt/usr/keychars/Broadcom_Bluetooth_HID.kcm.bin:system/usr/keychars/Broadcom_Bluetooth_HID.kcm.bin \
     device/iriver/MX100-common/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
     device/iriver/MX100-common/prebuilt/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
     device/iriver/MX100-common/prebuilt/rcv/*:system/rcv/

# These are the OpenMAX IL configuration files
PRODUCT_COPY_FILES += \
	device/iriver/MX100-common/sec_mm/sec_omx/sec_omx_core/secomxregistry:system/etc/secomxregistry \
	device/iriver/MX100-common/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# These are the OpenMAX IL modules
PRODUCT_PACKAGES += \
    libSEC_OMX_Core.s5pc110 \
    libOMX.SEC.AVC.Decoder.s5pc110 \
    libOMX.SEC.M4V.Decoder.s5pc110 \
    libOMX.SEC.M4V.Encoder.s5pc110 \
    libOMX.SEC.AVC.Encoder.s5pc110

# Libs
PRODUCT_PACKAGES += \
    sensors.s5pc110 \
    libstagefrighthw \
    libcamera \
    overlay.s5pc110

# update utilities
PRODUCT_PACKAGES += \
	setup_fs

# Camera
PRODUCT_PACKAGES += \
    libs3cjpeg

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Say ITB own Hardware Perf
PRODUCT_COPY_FILES += \
     device/iriver/MX100-common/prebuilt/lib/hw/lights.s5pc110.so:system/lib/hw/lights.s5pc110.so \
     device/iriver/MX100-common/prebuilt/lib/hw/copybit.default.so:system/lib/hw/copybit.default.so \
     device/iriver/MX100-common/prebuilt/lib/egl/libEGL_POWERVR_SGX540_120.so:system/lib/egl/libEGL_POWERVR_SGX540_120.so \
     device/iriver/MX100-common/prebuilt/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
     device/iriver/MX100-common/prebuilt/lib/egl/libGLESv2_POWERVR_SGX540_120.so:system/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
     device/iriver/MX100-common/prebuilt/lib/hw/gralloc.s5pc110.so:system/lib/hw/gralloc.s5pc110.so \
     device/iriver/MX100-common/prebuilt/lib/hw/overlay.s5pc110.so:system/lib/hw/overlay.s5pc110.so \
     device/iriver/MX100-common/prebuilt/lib/libIMGegl.so:system/lib/libIMGegl.so \
     device/iriver/MX100-common/prebuilt/lib/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
     device/iriver/MX100-common/prebuilt/lib/libglslcompiler.so:system/lib/libglslcompiler.so \
     device/iriver/MX100-common/prebuilt/lib/libpvr2d.so:system/lib/libpvr2d.so \
     device/iriver/MX100-common/prebuilt/lib/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
     device/iriver/MX100-common/prebuilt/lib/libsrv_init.so:system/lib/libsrv_init.so \
     device/iriver/MX100-common/prebuilt/lib/libsrv_um.so:system/lib/libsrv_um.so \
     device/iriver/MX100-common/prebuilt/bin/pvrsrvinit:system/bin/pvrsrvinit \
     device/iriver/MX100-common/prebuilt/bin/reboot:system/bin/reboot \
     device/iriver/MX100-common/prebuilt/bin/say_rcv_init:system/bin/say_rcv_init \
     device/iriver/MX100-common/prebuilt/bin/sayrcv.sh:system/bin/sayrcv.sh \
     device/iriver/MX100-common/prebuilt/etc/wl/bcm4329.bin:system/etc/wl/bcm4329.bin \
     device/iriver/MX100-common/prebuilt/etc/wl/bcm4329_apsta.bin:system/etc/wl/bcm4329_apsta.bin \
     device/iriver/MX100-common/prebuilt/etc/wl/bcm4329_mfg.bin:system/etc/wl/bcm4329_mfg.bin \
     device/iriver/MX100-common/prebuilt/etc/wl/nvram.txt:system/etc/wl/nvram.txt \

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
       wifi.interface=wlan0 \
       wifi.supplicant_scan_interval=20 \
       dalvik.vm.heapsize=32m

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

