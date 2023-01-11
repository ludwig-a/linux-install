#!/bin/sh

loadkeys fr_CH-latin1
pacman -S Sy git vim --noconfirm

script1="./10-partitions.sh"
#script2="./15-mirrorlist.sh"
script3="./20-kernel-install.sh"

$script1 sda +500M +1G +4G || echo "problem with $script1"
#$script2 || echo "problem with $script2"
$script3 || echo "problem with $script3"
