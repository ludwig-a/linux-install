#!/bin/sh
### thing with fdisk first !!!

# file manager
pacman -S ranger mc
# See lf and NNN

# monitoring
pacman -S htop neofetch glances

# nvidia
pacman -S nvidia-dkms nvidia-settings nvidia-utils

#yay
git clone https://aur.archlinux.org/yay.git, cd yay, makepkg -si

# others
pacman -S alacritty zsh unzip tree rsync light neovim
