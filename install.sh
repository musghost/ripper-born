#!/bin/bash

sudo pacman -Syu
sudo pacman -S --noconfirm chromium
sudo pacman -S --noconfirm virtualbox
sudo pacman -S --noconfirm virtualbox-host-dkms
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


git clone https://github.com/ricardo-pcan/ripper.git ~/.ripper

pip install --user git+git://github.com/Lokaltog/powerline
mkdir -p ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d/
wget -O ~/.fonts/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
wget -O ~/.config/fontconfig/conf.d/10-powerline-symbols.conf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
fc-cache -vf ~/.fonts

echo -e "\n \e[92m Remove Pre settings\e[0m"
[ -e ~/.zshrc ] && rm ~/.zshrc
[ -e ~/.vimrc.local ] && rm ~/.vimrc.local
[ -e ~/.vimrc ] && rm ~/.vimrc
[ -e ~/.gitconfig ] && rm ~/.gitconfig
[ -e ~/.i3 ] && rm ~/.i3

if [ -d ~/.oh-my-zsh ]; then
        rm -r ~/.oh-my-zsh
fi


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

if [ -f ~/.zshrc ]; then
        echo -e "\n \e[92m Set the zsh options ..\e[0m"
        rm ~/.zshrc
        ln -sf $HOME/.ripper/includes/.zshrc $HOME/
        source ~/.zshrc
    else
        echo -e "\n \e[92m Set the zsh options ..\e[0m"
        echo -e "\n \e[92m Copy the zsh options ..\e[0m"
        ln -sf $HOME/.ripper/includes/.zshrc $HOME/
        source ~/.zshrc
    fi

    if [ -f ~/.gitconfig ]; then
        echo -e "\n \e[92m Set the git options ..\e[0m"
        rm ~/.gitconfig
        ln -sf $HOME/.ripper/includes/.gitconfig $HOME/
        source ~/.gitconfig
    else
        echo -e "\n \e[92m Set the git options ..\e[0m"
        echo -e "\n \e[92m Copy the git options ..\e[0m"
        ln -sf $HOME/.ripper/includes/.gitconfig $HOME/
        source ~/.gitconfig
    fi

    if [ -f ~/.tmux.conf ]; then
        echo -e "\n \e[92m Set the tmux options ..\e[0m"
        rm ~/.tmux.conf
        ln -sf $HOME/.ripper/includes/.tmux.conf $HOME/
        tmux source-file ~/.tmux.conf
    else
        echo -e "\n \e[92m Set the tmux options ..\e[0m"
        echo -e "\n \e[92m Copy the tmux file ..\e[0m"
        ln -sf $HOME/.ripper/includes/.tmux.conf $HOME/
        tmux source-file ~/.tmux.conf
    fi

    if [ -f ~/.i3/config ]; then
        echo -e "\n \e[92m Set the i3 options ..\e[0m"
        rm ~/.i3/config
        ln -sf $HOME/.ripper/includes/.i3/config $HOME/.i3/
    else
        echo -e "\n \e[92m Set the i3 options ..\e[0m"
        echo -e "\n \e[92m Copy the i3 options ..\e[0m"
        ln -sf $HOME/.ripper/includes/.i3/config $HOME/.i3/

    fi

    if [ -f ~/.rofirc ]; then
        echo -e "\n \e[92m Set the rofi options ..\e[0m"
        rm ~/.rofirc
        ln -sf $HOME/.ripper/includes/.rofirc $HOME/
    else
        echo -e "\n \e[92m Set the rofi options ..\e[0m"
        echo -e "\n \e[92m Copy the rofi options ..\e[0m"
        ln -sf $HOME/.ripper/includes/.rofirc $HOME/
    fi

    if [ -d ~/.fonts ]; then
        echo -e "\n \e[92m Set the fonts options ..\e[0m"
        rm -r ~/.fonts
        ln -s $HOME/.ripper/includes/.fonts $HOME/
    else
        echo -e "\n \e[92m Set the fonts options ..\e[0m"
        echo -e "\n \e[92m Copy the fonts options ..\e[0m"
        ln -s $HOME/.ripper/includes/.fonts $HOME/
    fi

    if [ -f ~/.vimrc.local ]; then
        echo -e "\n \e[92m Set the vim options ..\e[0m"
        rm ~/.vimrc.local
        ln -sf $HOME/.ripper/includes/.vimrc.local $HOME/
    else
        echo -e "\n \e[92m Set the vim options ..\e[0m"
        echo -e "\n \e[92m Copy the vim options ..\e[0m"
        ln -sf $HOME/.ripper/includes/.vimrc.local $HOME/
    fi
    echo -e "\n \e[95m Please windows + R for reload i3 config\e[0m"

    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    \curl -sSL https://get.rvm.io | bash -s stable
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
    git clone https://github.com/yyuu/pyenv.git ~/.pyenv
    pyenv install 2.7
    pyenv global 2.7
    
    pip install fabric
    pip install vo-fabutils
    
    curl http://j.mp/spf13-vim3 -L -o - | sh
    
    mkdir ~/mywork
    mkdir ~/myinbox
    mkdir ~/myrefereences
    mkdir ~/mysoftware
    mkdir ~/myexternalrepos
    mkdir ~/mystageprojects
