#!/bin/bash
# Taken from https://linux-sunxi.org/Bootable_SD_card#Partitioning

if [ -z "$1" ]
  then
    echo "No argument supplied"
    exit 1
fi

dd if=/dev/zero of=/dev/$1 bs=1M count=1
blockdev --rereadpt /dev/$1
cat <<EOT | sfdisk /dev/$1
1M,16M,c
,,L
EOT

mkfs.vfat /dev/$11
mkfs.ext4 /dev/$12

blockdev --rereadpt /dev/$1