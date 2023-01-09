#!/bin/sh

echo "We are going to create a partition table in sda. Then, we will format partitions"
echo "We will create 3 partitions like this :"
echo "- sda1 for boot"
echo "- sda2 for swap"
echo "- sda3 for rest"
echo "Is it okay for you ? Write 1 for no and exit or 2 for yes :"

read answer

nb=0
while [ $nb -ne 1 ]; do
	case $distro in
		1) exit ;;
		2) nb=1 ;;
		*) echo "Write 1 for no and exit or 2 for yes !"
	esac
done

#########################################################################################

# write the size of each partition as arguments



#########################################################################################

mkfs.fat -F32 /dev/sda1
mkswap /dev/sda2
swapon /dev/sda2
mkfs.ext4 /dev/sdb3

#########################################################################################

mount /dev/sda3 /mnt

#########################################################################################

mkdir /mnt/etc
genfstab -U /mnt >> /mnt/etc/fstab

#########################################################################################

echo "###################################################"
echo "Now run 20-kernell_install to install the kernel. #"
echo "###################################################"