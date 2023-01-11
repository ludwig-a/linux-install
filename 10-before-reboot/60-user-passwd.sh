#!/bin/sh

user=wolfgang

# for root user
echo "set your root password :"
passwd

# add a user
useradd -m $user
echo "set your root password :"
passwd $user
usermod -aG wheel,audio,video,optical,storage $user