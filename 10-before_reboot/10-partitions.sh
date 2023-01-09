#!/bin/sh

echo "We will create 3 partitions ; for booting, for swap and for the rest"
echo "For that, run the this script with 4 arguments :"
echo "1) write sda or sdb"
echo "2) write the size of boot partition. Exemple: +500M"
echo "3) write the size of swap partition. Exemple: +17G"
echo "4) write the size of rest partition. Exemple: +100G"
echo
lsblk

if [ $# -ne 4 ]
then
	echo "Wrong arguments number. Try again !"
	exit 1
fi

hard_disk="/dev/$1"
hard_disk1=$hard_disk"1"
hard_disk2=$hard_disk"2"
hard_disk3=$hard_disk"3"


mkfs.ext4 $hard_disk
echo "####################################################################"
echo $hard_disk "formated !                                              #"
echo "####################################################################"

fdisk $hard_disk << EOF
g
w
EOF
echo "####################################################################"
echo "partition table created !                                          #"
echo "####################################################################"

fdisk $hard_disk << EOF
n
1

$2
t
1
w
EOF
echo "####################################################################"
echo $hard_disk1 "created !                                              #"
echo "####################################################################"

fdisk $hard_disk << EOF
n
2

$3
t
19
w
EOF
echo "####################################################################"
echo $hard_disk2 "created !                                              #"
echo "####################################################################"


fdisk $hard_disk << EOF
n
3

$4
t
20
w
EOF
echo "####################################################################"
echo $hard_disk3 "created !                                              #"
echo "####################################################################"


#########################################################################################

#mkfs.fat -F32 $hard_disk1
#mkswap $hard_disk2
#swapon $hard_disk2
#mkfs.ext4 $hard_disk3

#########################################################################################

#mount /dev/sda3 /mnt

#########################################################################################

#mkdir /mnt/etc
#genfstab -U /mnt >> /mnt/etc/fstab

#########################################################################################

lsblk
echo
echo "###################################################"
echo "Now run 20-kernell_install to install the kernel. #"
echo "###################################################"