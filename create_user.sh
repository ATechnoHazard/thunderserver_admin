#!/bin/bash
cd /home/images
fallocate -l "$2" "$1.ext4"
mkfs.ext4 "$1".ext4
mkdir /home/"$1"
mount -t ext4 -o loop /home/images/"$1".ext4 /home/"$1"
useradd "$1" -d /home/"$1" -M -s /bin/bash
passwd "$1"
cp -a /etc/skel/. /home/"$1"/
chown "$1" /home/"$1"
echo Create user and mounted home dir.
cd -
