CyanogenMod device configuration for the bq Maxwell 2 Quad Core.

How to Build
---------------

Initialise from CyanogenMod:

    repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

Use the following local manifest:

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
      <remove-project name="CyanogenMod/android_frameworks_av" />
      <project name="bq-rk3x/android_frameworks_av" path="frameworks/av" revision="cm-11.0" />

      <project name="bq-rk3x/android_device_bq_maxwell2qc" path="device/bq/maxwell2plus" revision="cm-11.0" />
      <project name="bq-rk3x/android_device_bq_rk3188-common" path="device/bq/rk3188-common" revision="cm-11.0" />
      <project name="bq-rk3x/android_kernel_bq_rk3188" path="kernel/bq/rk3188" revision="cm-11.0" />
      <project name="bq-rk3x/proprietary_vendor_bq" path="vendor/bq" revision="cm-11.0" />
    </manifest>

Sync and build:

    repo sync -j4
    vendor/cm/get-prebuilts
    . build/envsetup.sh
    brunch maxwell2qc
