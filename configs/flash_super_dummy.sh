#!/system/bin/sh
#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

SUPER="/dev/block/by-name/system"

mkdir /tmp/super-mnt

mount $SUPER /tmp/super-mnt 2>/dev/null

if [ "$?" = "0" ]; then
    umount /tmp/super-mnt
    dd if=/tmp/super_dummy.img of=$SUPER
fi

rmdir /tmp/super-mnt
