#!/bin/sh

script1="./10-before_reboot/10-partitions.sh"
script2="./10-before_reboot/20-kernel_install.sh"
script3="./10-before_reboot/30-basics_install.sh"
script4="./10-before_reboot/40-grub_config.sh"
script5="./10-before_reboot/50-hosts-hostname.sh"
script6="./10-before_reboot/60-user-passwd.sh"
script7="./10-before_reboot/70-sudo-config.sh"
script8="./10-before_reboot/80-reboot.sh"

while [ $? -eq 0 ]; do
	nb=1
	if [ $nb == 1 ] ; then
		$script1 sda +500M +1G +4G
	else
		echo "problem with $script1"
		exit 1
	fi

	nb=2
	if [ $nb == 2 ] ; then
		$script2
	else
		echo "problem with $script2"
		exit 1
	fi

	nb=3
	if [ $nb == 3 ] ; then
		$script3
	else
		echo "problem with $script3"
		exit 1
	fi

	nb=4
	if [ $nb == 4 ] ; then
		$script4
	else
		echo "problem with $script4"
		exit 1
	fi

	nb=5
	if [ $nb == 5 ] ; then
		$script5
	else
		echo "problem with $script5"
		exit 1
	fi

	nb=6
	if [ $nb == 6 ] ; then
		$script6
	else
		echo "problem with $script6"
		exit 1
	fi

	nb=7
	if [ $nb == 7 ] ; then
		$script7
	else
		echo "problem with $script7"
		exit 1
	fi

	nb=8
	if [ $nb == 8 ] ; then
		$script8
	else
		echo "problem with $script8"
		exit 1
	fi
done
