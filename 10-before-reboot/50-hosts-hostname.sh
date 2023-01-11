#!/bin/sh

hostname=arch

echo $hostname > /etc/hostname

echo "127.0.0.1 localhost" > /etc/hosts
echo "::1 localhost" >> /etc/hosts
echo "127.0.1.1 $hostname.localdomain $hostname" >> /etc/hosts
