#!/usr/bin/env bash

# Vagrant default box(Ubuntu 12.04LTS)
# Obtaining a recent version of Node or installing on older Ubuntu
apt-get install python-software-properties
add-apt-repository -y ppa:chris-lea/node.js
# Latest Tmux
add-apt-repository -y ppa:kalakris/tmux

apt-get update

apt-get install -y zsh
apt-get install -y git
apt-get install -y vim
apt-get install -y nodejs
apt-get install -y tmux
apt-get install -y xclip

# npm
# npm install -g cnpm

# User target
cd /home/vagrant/

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ./.oh-my-zsh
cp ./.oh-my-zsh/templates/zshrc.zsh-template ./.zshrc
chsh -s $(which zsh)

# dotfiles
git clone https://github.com/hulufei/dotfiles.git
ln -s dotfiles/.vimrc ./
ln -s dotfiles/.tmux.conf ./

# Vim
mkdir ./.vim/backups
mkdir ./.vim/swaps
git clone https://github.com/gmarik/Vundle.vim.git ./.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# git
git config --global user.email 'f.calabash@gmail.com'
git config --global user.name 'hulufei'
# Github: generating ssh keys
# http://goo.gl/lyu73
ssh-keygen -f ./.ssh/id_rsa -t rsa -C 'f.calabash@gmail.com' -N ''
# start the ssh-agent in the background
eval "$(ssh-agent -s)"
ssh-add ./.ssh/id_rsa
# Next: Step 3

# fasd (alternative autojump)
git clone https://github.com/clvv/fasd.git
cd fasd
make install
cd ..
