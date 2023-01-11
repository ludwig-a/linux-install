#!/bin/sh

pacman-key --refresh-keys
pacstrap -K /mnt base linux linux-headers linux-firmware linux-atm
arch-chroot /mnt

cd
pacman -Sy git --noconfirm
git clone https://github.com/ludwig-a/linux-install
cd linux-install/10-before-reboot
./01-auto-install.sh || echo "problem to run 01-auto-install.sh"
#loadkeys fr_CH-latin1

echo "###################################################"
echo "Now run 30-basics_install.sh                      #"
echo "###################################################"