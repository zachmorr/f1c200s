#!/bin/bash -x
# Taken from https://linux-sunxi.org/Bootable_SD_card#Partitioning

if [ -z "$1" ]
  then
    echo "No argument supplied"
    exit 1
fi

umount /dev/$11
umount /dev/$12

img=output/images/sdcard.img
if [ ! -f $img ]; then
    echo "$img not found!"
else
    dd if=$img of=/dev/$1 bs=1M
fi

blockdev --rereadpt /dev/$1