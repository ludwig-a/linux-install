#!/bin/sh

# for root user
passwd

# add a user
useradd -m wolfgang
passwd wolfgang
usermod -aG wheel,audio,video,optical,storage wolfgang