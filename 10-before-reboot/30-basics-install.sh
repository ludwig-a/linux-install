#!/bin/sh

package_manager="pacman -S --noconfirm"
#package_manager="pacman -S

# basics
$package_manager base-devel intel-ucode polkit 

# grub
$package_manager grub efibootmgr dosfstools os-prober mtools

# security
$package_manager ufw

# network
$package_manager networkmanager wpa_supplicant wireless_tools netctl dialog
systemctl enable NetworkManager

# usb
$package_manager usb_modeswitch usbmuxd usbutils 
#libusb-compat

# others
$package_manager vim archiso

echo "###################################################"
echo "Now run 40-grub_config.sh                         #"
echo "###################################################"