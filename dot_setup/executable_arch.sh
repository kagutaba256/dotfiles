#! /bin/bash

mkdir dl dox serv vpn

sudo pacman -S base-devel git 

# yay
cd ~/dl
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# install base stuff
yay -S htop vim neovim zsh tmux bpytop chezmoi

# ssh-keygen
ssh-keygen

# omz
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# chezmoi
chezmoi init https://github.com/kagutaba256/dotfiles.git
chezmoi apply
