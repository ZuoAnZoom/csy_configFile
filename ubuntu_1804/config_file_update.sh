#!/usr/bin/env bash

# shell
cp ~/.bashrc ./bashrc/
cp ~/.zshrc ./zshrc/

# vim
cp ~/.vimrc ./vim/
cp ~/.vim/.ycm_extra_conf.py ./vim/YCM/

# tmux
cp ~/.tmux.conf ./tmux/

# alacritty
cp ~/.config/alacritty/alacritty.yml ./alacritty/

# espanso
cp ~/.config/espanso/default.yml ./espanso/

# shadowsocks
cp /etc/shadowsocks/config.json ./shadowsocks/
cp ~/Desktop/JMS.sh ./shadowsocks/

# taskwarrior
# html file

# vnote
cp -r ~/.config/vnote/snippets ./vnote/
