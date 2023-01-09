#!/bin/sh

pacman-key --refresh-keys
pacstrap -K /mnt base linux linux-headers linux-firmware linux-atm

echo "###################################################"
echo "Now run 30-basics_install.sh                      #"
echo "###################################################"