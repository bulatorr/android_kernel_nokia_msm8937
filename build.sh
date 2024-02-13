#!/bin/bash

echo "------------------------------------------------------"
echo "Kernel Source For Nokia 6 PLE (2017)"
echo "------------------------------------------------------"

path=/home/zbltrr

clear
export ARCH=arm64
export CROSS_COMPILE=$path/aarch64-linux-android-4.9/bin/aarch64-linux-android-
mkdir output
make -C $(pwd) O=output PLE_defconfig
make -j32 -C $(pwd) O=output
