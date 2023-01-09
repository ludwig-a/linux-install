#!/bin/sh

git clone --recurse-submodules https://github.com/fairyglade/ly; cd ly; make; make install installsystemd
systemctl enable ly.service
systemctl disable getty@tty2.service