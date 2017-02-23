#!/bin/bash

#sudo pacman -Syu

#sudo pacman -S --noconfirm chromium
#sudo pacman -S --noconfirm virtualbox
#sudo pacman -S --noconfirm gnome-terminal
#sudo pacman -S --noconfirm vagrant
#sudo pacman -S --noconfirm tmux
#sudo pacman -S --noconfirm zsh
#sudo pacman -S --noconfirm docker
#sudo gpasswd -a $USER docker
#sudo systemctl start docker
#sudo pacman -S --noconfirm rofi
#yaourt -S --noconfirm spotify
#yaourt -S --noconfirm gpmdp

#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#\curl -sSL https://get.rvm.io | bash -s stable

#curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

#git clone https://github.com/ricardo-pcan/ripper.git ~/.ripper

echo -e "\n \e[92m Remove Pre settings\e[0m"
[ -e ~/.zshrc ] && rm ~/.zshrc
[ -e ~/.vimrc.local ] && rm ~/.vimrc.local
[ -e ~/.vimrc ] && rm ~/.vimrc
[ -e ~/.gitconfig ] && rm ~/.gitconfig
[ -e ~/.i3 ] && rm ~/.i3


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
