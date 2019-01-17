#!/bin/bash
IMAGES=$(ls /home/images)
cd /home/images
for image in $IMAGES; do
	user=$(echo $image | awk -F"." '{print $1}')
	echo "Mounting image for $user"
	mount -t ext4 -o loop $image /home/$user
	chown "$user":"$user" /home/$user
done
