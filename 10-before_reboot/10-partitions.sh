#!/bin/sh

#echo "We are going to create a partition table in sda. Then, we will format partitions"
#echo "We will create 3 partitions like this :"
#echo "- sda1 for boot"
#echo "- sda2 for swap"
#echo "- sda3 for rest"
#echo "Is it okay for you ? Write 1 for no and exit or 2 for yes :"

#read answer

#nb=0
#while [ $nb -ne 1 ]; do
#	case $distro in
#		1) exit ;;
#		2) nb=1 ;;
#		*) echo "Write 1 for no and exit or 2 for yes !"
#	esac
#done



#########################################################################################

echo "We are going to create a partition table. Then, we will format partitions"
echo "We will create 3 partitions ; for booting, for swap and for the rest"
echo "Default partitions size : 1 = 500M, 2 = 2 * RAM = 17G, 3 = size of th rest"
echo "Select the hard disk : 1 for sda, 2 for sdb and 3 to exit the script :"

read hard_disk

nb=0
while [ $nb -ne 1 ]; do
	case $hard_disk in
		1) hard_disk="/dev/sda" && nb=1 ;;
		2) hard_disk="/dev/sdb" && nb=1 ;;
		3) exit ;;
		*) echo "Select the hard disk : 1 for sda, 2 for sdb and 3 to exit the script :"
	esac
done

hard_disk1=$hard_disk"1"
hard_disk2=$hard_disk"2"
hard_disk3=$hard_disk"3"

fdisk $hard_disk

mkfs.ext4 $hard_disk
fdisk $hard_disk << EOF
g
w
EOF

fdisk $hard_disk << EOF
n
1

+500M
t
1
w
EOF


fdisk $hard_disk << EOF
n
2

+17G
t
19
w
EOF

fdisk $hard_disk << EOF
n
3


t
20
w
EOF

#########################################################################################

# write the size of each partition as arguments



#########################################################################################

mkfs.fat -F32 $hard_disk1
mkswap $hard_disk2
swapon $hard_disk2
mkfs.ext4 $hard_disk3

#########################################################################################

mount /dev/sda3 /mnt

#########################################################################################

mkdir /mnt/etc
genfstab -U /mnt >> /mnt/etc/fstab

#########################################################################################

lsblk
echo
echo "###################################################"
echo "Now run 20-kernell_install to install the kernel. #"
echo "###################################################"