#!/usr/bin/env bash

# Vagrant box(Ubuntu 14.04)
sudo apt-get update

sudo apt-get install -y zsh
sudo apt-get install -y git
sudo apt-get install -y vim
sudo apt-get install -y python-pip
sudo apt-get install -y nodejs-legacy
sudo apt-get install -y npm
sudo apt-get install -y tmux
sudo apt-get install -y xclip

sudo apt-get install -y ruby
# sudo gem install tmuxinator

# npm
# sudo npm install -g cnpm
sudo npm install -g jshint

# pip
sudo pip install cheat

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
mkdir -p ./.vim/backups
mkdir -p ./.vim/swaps
git clone https://github.com/gmarik/Vundle.vim.git ./.vim/bundle/Vundle.vim
vim +PluginInstall +qall
# Vim - tagbar(js)
sudo apt-get install -y exuberant-ctags
cd ./.vim/bundle/tern_for_vim
npm install
cd ../../../
sudo npm install -g git://github.com/ramitos/jsctags.git

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
sudo make install
cd ..
