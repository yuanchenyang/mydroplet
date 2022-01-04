#!/bin/bash

# Here are some commands I ran on the newly created non-root user to set up a
# new droplet, running them all at once haven't been tested yet

## System update
sudo apt dist-upgrade

## Enable auto-upgrades
sudo dpkg-reconfigure unattended-upgrades

## Install docker and docker-compose
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
# apt-cache policy docker-ce
sudo apt install docker-ce
# sudo systemctl status docker

curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
# docker-compose version

## Install other programs
sudo apt install emacs python3 zsh

# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Clone git repo and copy dotfiles
git clone git@github.com:yuanchenyang/mydroplet.git
cd mydroplet
git submodule init
git submodule update
cp dotfiles/.* ~/
