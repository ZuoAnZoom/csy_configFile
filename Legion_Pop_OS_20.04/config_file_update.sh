#!/usr/bin/env bash

# shell
cp ~/.bashrc ./bashrc/
echo '- .bashrc updated!'

# vim
cp ~/.vimrc ./vim/
cp ~/.vim/.ycm_extra_conf.py ./vim/YCM/
echo '- .vimrc updated!'
echo '  - .ycm_extra_conf.py updated!'

# tmux
cp ~/.tmux.conf ./tmux/
echo '- tmux updated!'

# alacritty
cp ~/.config/alacritty/alacritty.yml ./alacritty/
echo '- alacritty updated!'

# conky
cp ~/.conkyrc ./conky/
echo '- .conkyrc updated!'

# espanso
#cp ~/.config/espanso/default.yml ./espanso/

# shadowsocks
#cp /etc/shadowsocks/config.json ./shadowsocks/
#cp ~/Desktop/JMS.sh ./shadowsocks/

# taskwarrior
# html file

# vnote
cp -r ~/.config/vnote/snippets ./vnote/
#cp -r ~/.config/vnote/templates/ ./vnote/
echo '- vnote_snippets updated!'

# fusuma
cp ~/.config/fusuma/config.yml ./fusuma/
echo '- fusuma updated!'

exit 0
