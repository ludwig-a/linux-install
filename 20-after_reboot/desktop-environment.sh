#!/bin/sh

# xorg and xorg-server -> already installed
pacman -S xorg-xinit
#cp /etc/X11/xinit/xinitrc /home/wolfgang/.xinitrc

pacman -S i3-gaps i3status i3blocks dmenu rofi polybar feh
