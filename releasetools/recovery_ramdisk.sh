#!/bin/bash

DEVICE_OUT=$ANDROID_BUILD_TOP/out/target/product/i9103
DEVICE_TOP=$ANDROID_BUILD_TOP/device/samsung/i9103
VENDOR_TOP=$ANDROID_BUILD_TOP/vendor/samsung/i9103

# remove kernel modules and charger, recovery size is limited to 5.2MB
rm -rf $DEVICE_OUT/recovery/root/lib/modules
rm -rf $DEVICE_OUT/recovery/root/res/images/charger

# cleanup
rm -f $DEVICE_OUT/recovery/root/init.goldfish.rc
rm -f $DEVICE_OUT/recovery/root/ueventd.goldfish.rc
rm -f $DEVICE_OUT/recovery/root/lpm.rc
rm -f $DEVICE_OUT/recovery/root/charger
