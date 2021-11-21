#! /bin/bash

# update apt 
apt update -yyyy
apt upgrade -yyyy

# absolute basic packages
apt install git vim sudo -yyyy

# add sam
useradd sam
mkdir /home/sam
chown sam /home/sam
echo "Add password for user sam"
passwd sam
usermod -aG sudo sam
visudo

# get other script
curl https://raw.githubusercontent.com/kagutaba256/dotfiles/main/dot_setup/ubuntu/executable_ubuntu-usersetup.sh -o user.sh
chmod +x user.sh
mv user.sh /home/sam/.

# login as sam
echo "log in as user sam"
su sam
