#!/bin/sh

# go there to generate mirrorlist:
# https://archlinux.org/mirrorlist/
# Don't select http

# Switzerland
# with "Use mirror status :"
# https://archlinux.org/mirrorlist/?country=CH&protocol=https&ip_version=4&use_mirror_status=on
# https://archlinux.org/mirrorlist/?country=CH&protocol=https&ip_version=4

# German
# with "Use mirror status :"
# https://archlinux.org/mirrorlist/?country=DE&protocol=https&ip_version=4&use_mirror_status=on
# https://archlinux.org/mirrorlist/?country=DE&protocol=https&ip_version=4

# French
# with "Use mirror status :"
# https://archlinux.org/mirrorlist/?country=FR&protocol=https&ip_version=4&use_mirror_status=on
# https://archlinux.org/mirrorlist/?country=FR&protocol=https&ip_version=4

# Check reflector for mirror !!!
# check how to use sed command !!!

rm /etc/pacman.d/mirrorlist.bak
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
rm /etc/pacman.d/mirrorlist
cp ./10-before_reboot/mirrorlist /etc/pacman.d/mirrorlist
