#! /bin/bash

# update pacman
pacman -Syu --noconfirm

# absolute basic packages
pacman -S base-devel git vi --noconfirm

# add sam
useradd sam
mkdir /home/sam
chown sam /home/sam
echo "Add password for user sam"
passwd sam
usermod -aG wheel sam
pacman -S sudo --noconfirm
visudo

# get other script
curl https://raw.githubusercontent.com/kagutaba256/dotfiles/main/dot_setup/arch/executable_arch-usersetup.sh -o user.sh
chmod +x user.sh
mv user.sh /home/sam/.

# login as sam
echo "log in as user sam"
su sam
