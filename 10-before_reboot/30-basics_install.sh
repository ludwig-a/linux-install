#!/bin/sh

# basics
pacman -S base-devel intel-ucode polkit 

# grub
pacman -S grub efibootmgr dosfstools os-prober mtools

# security
pacman -S ufw

# network
pacman -S networkmanager wpa_supplicant wireless_tools netctl dialog
systemctl enable NetworkManager

# usb
pacman -S usb_modeswitch usbmuxd usbutils 
#libusb-compat

# others
pacman -S vim git archiso
