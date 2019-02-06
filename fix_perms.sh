#!/bin/bash
USERNAMES=$(ls /home/images)

for username in $USERNAMES; do
	chmod -R g+s /home/$username
	setfacl -R -d -m g::rwx /home/$username
	setfacl -R -m g::rwx /home/$username
done
