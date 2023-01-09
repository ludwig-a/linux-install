#!/bin/sh

echo "We are going to create a partition table. Then, we will format partitions"
echo "We will create 3 partitions ; for booting, for swap and for the rest"
echo "1 argument = boot partition"
echo "2 argument = swap partition"
echo "3 argument = rest partition"

hard_disk="/dev/sda"
#hard_disk="/dev/sdb"

$1=partition_boot_size
$2=partition_swap_size
$3=partition_rest_size

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

$partition_boot_size
t
1
w
EOF


fdisk $hard_disk << EOF
n
2

$partition_swap_size
t
19
w
EOF

fdisk $hard_disk << EOF
n
3

$partition_rest_size
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