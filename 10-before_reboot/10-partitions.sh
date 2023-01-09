#!/bin/sh

echo "We are going to create a partition table. Then, we will format partitions"
echo "We will create 3 partitions ; for booting, for swap and for the rest"
echo "Default partitions size : 1 = 500M, 2 = 2 * RAM = 17G, 3 = size of th rest"

hard_disk="/dev/sda"
#hard_disk="/dev/sdb"

fdisk $hard_disk

mkfs.ext4 $hard_disk
echo "####################################################################"
echo $hard_disk "formated !                                              #"
echo "####################################################################"

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

#hard_disk1=$hard_disk"1"
#hard_disk2=$hard_disk"2"
#hard_disk3=$hard_disk"3"

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