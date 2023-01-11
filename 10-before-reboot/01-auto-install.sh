#!/bin/sh

script4="./30-basics-install.sh"
script5="./40-grub-config.sh"
script6="./50-hosts-hostname.sh"
script7="./60-user-passwd.sh"
script8="./70-sudo-config.sh"
script9="./80-reboot.sh"

$script4 || echo "problem with $script4"
$script5 || echo "problem with $script5"
$script6 || echo "problem with $script6"
$script7 || echo "problem with $script7"
$script8 || echo "problem with $script8"
$script9 || echo "problem with $script9"