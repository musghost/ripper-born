#!/bin/bash

sudo pacman -Syu

sudo pacman -S --noconfirm chromium
sudo pacman -S --noconfirm virtualbox
sudo pacman -S --noconfirm gnome-terminal
sudo pacman -S --noconfirm vagrant
sudo pacman -S --noconfirm tmux
sudo pacman -S --noconfirm zsh
sudo pacman -S --noconfirm docker
sudo gpasswd -a $USER docker
sudo systemctl start docker
sudo pacman -S --noconfirm rofi
yaourt -S --noconfirm spotify
yaourt -S --noconfirm gpmdp
