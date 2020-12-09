#!/usr/bin/env bash
# install some software

#cd ~/csy_git/
#./update.sh

# git
sudo apt-get install git

# vim
sudo apt-get install vim

# VsCode
sudo apt-get install code

# vifm + ranger: file manager
sudo apt-get install vifm
sudo apt-get install ranger
# lf: file manager
cd Downloads
wget https://github.com/gokcehan/lf/releases/download/r13/lf-linux-amd64.tar.gz
tar -zxvf lf-linux-amd64.tar.gz
sudo mv lf /usr/local/bin
rm lf
git clone https://github.com/gokcehan/lf.git
cd lf
sudo mv lf.1 /usr/share/man/man1/lf.1
cd ..
rm -r lf
cd


# meld: file compare
sudo apt-get install meld

# terminal
sudo apt-get install tmux






# RIME input method
#sudo apt-get install ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4
#sudo apt-get install ibus-rime


# powerline
#pip install git+git://github.com/powerline/powerline
#wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
#wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
#mv PowerlineSymbols.otf /usr/share/fonts
#fc-cache -vf /usr/share/fonts/  #更新系统的字体缓存
#mv 10-powerline-symbols.conf /etc/fonts/conf.d 


exit 0
