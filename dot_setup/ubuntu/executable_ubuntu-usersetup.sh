#! /bin/bash

# make folders in home
cd ~
mkdir dl dox serv vpn

# install base stuff
sudo apt install git htop vim neovim zsh tmux openssh-client curl -yyyy

# change shell to zsh
chsh -s $(which zsh)

# ssh-keygen
ssh-keygen

# omz
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# chezmoi
mkdir ~/dl/chezmoi
cd ~/dl/chezmoi
sh -c "$(curl -fsLS git.io/chezmoi)"
./bin/chezmoi init https://github.com/kagutaba256/dotfiles.git
./bin/chezmoi apply
