#
# Copyright (C) 2014 The Android Open Source Project
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

PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

DEVICE_PACKAGE_OVERLAYS += device/bq/maxwell2qc/overlay

# Hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# Prebuilt
PRODUCT_COPY_FILES += \
    device/bq/maxwell2qc/prebuilt/gps.conf:system/etc/gps.conf \
    device/bq/maxwell2qc/prebuilt/gpsconfig.xml:system/etc/gps/gpsconfig.xml

# Rootdir
PRODUCT_COPY_FILES += \
    device/bq/maxwell2qc/rootdir/init.device.rc:root/init.device.rc

# Default config
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=213
