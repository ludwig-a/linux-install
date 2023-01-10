#!/bin/sh

path="/linux-install/10-before_reboot/"

script1=$path"10-partitions.sh"
script2=$path"20-kernel_install.sh"
script3=$path"30-basics_install.sh"
script4=$path"40-grub_config.sh"
script5=$path"50-hosts-hostname.sh"
script6=$path"60-user-passwd.sh"
script7=$path"70-sudo-config.sh"
script8=$path"80-reboot.sh"

nb=1
while [ $? -eq 0 ]; do
	if [ nb == 1 ] ; then
		nb=2
		./$script1 sda +500M +1G +4G
	else
		echo "problem with $script1"
		exit 1
	fi

	if [ nb == 2 ] ; then 
		nb=3
		./$script2
	else
		echo "problem with $script2"
		exit 1
	fi

	if [ nb == 3 ] ; then
		nb=4
		./$script3
	else
		echo "problem with $script3"
		exit 1
	fi

	if [ nb == 4 ] ; then 
		nb=5
		./$script4
	else
		echo "problem with $script4"
		exit 1
	fi

	if [ nb == 5 ] ; then 
		nb=6
		./$script5
	else
		echo "problem with $script5"
		exit 1
	fi

	if [ nb == 6 ] ; then
		nb=7
		./$script6
	else
		echo "problem with $script6"
		exit 1
	fi

	if [ nb == 7 ] ; then
		nb=8
		./$script7
	else
		echo "problem with $script7"
		exit 1
	fi

	if [ nb == 8 ] ; then
		nb=9
		./$script8
	else
		echo "problem with $script8"
		exit 1
	fi
	exit 0
done
