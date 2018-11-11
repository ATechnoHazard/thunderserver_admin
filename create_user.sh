useradd "$1"
passwd "$1"
cd /home/images
fallocate -l "$2" "$1.ext4"
mkfs.ext4 "$1".ext4
mkdir /home/"$1"
mount -t ext4 -o loop /home/images/"$1".ext4 /home/"$1"
echo Create user and mounted home dir.
cd -
