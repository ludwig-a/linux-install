#!/bin/sh

echo "#################################################"
echo "Welcome to my own linux installer !             #"
echo "#################################################"
echo

nb=0
while [ $nb -ne 1 ]; do
	echo "#################################################"
	echo "Choose what you want to install :               #"
	echo "#################################################"
	echo
	echo "1 - install Arch by Archinstall"
	echo "2 - install Arco Linux"
	echo "3 - install Manjaro"
	echo "4 - install Debian"
	echo "5 - install Ubuntu"
	echo "6 - install CentOS"
	echo "7 - install Kali Linux"
	echo "8 - install Tails"
	echo "9 - exit the script"

	read distro;

	case $distro in
		1) ./10-before_reboot/00-setup.sh ;;
		2) echo "not yet implemented.";;
		3) echo "not yet implemented.";;
		4) echo "not yet implemented.";;
		5) echo "not yet implemented.";;
		6) echo "not yet implemented.";;
		7) echo "not yet implemented.";;
		8) echo "not yet implemented.";;
		9) nb=1 ;;
		*) echo "Select an available number !"
	esac
done