#!/usr/bin/env bash
# Established Date: 04/20/2020 Mon 00:42:55
# Author: JeremyC
# Note: 
# -----------------

mypath="/Documents/csy_mac_backup_files"
#echo $mypath

cp ~/.bash_profile ~/Documents/workspace_csy/csy_configFile/macOS_Mojave_10.14.6/bash_profile/
echo -e ".bash_profile\033[32m✔︎\033[0m"

cp ~/.zshrc ~/Documents/workspace_csy/csy_configFile/macOS_Mojave_10.14.6/zshrc
echo -e ".zshrc\033[32m✔︎\033[0m"

cp ~/.vimrc ~/Documents/workspace_csy/csy_configFile/macOS_Mojave_10.14.6/vim/
echo -e ".vimrc\033[32m✔︎\033[0m"

cp ~/.tmux.conf ~/Documents/workspace_csy/csy_configFile/macOS_Mojave_10.14.6/tmux/
echo -e ".tmux.conf\033[32m✔︎\033[0m"

cp ~/Library/Preferences/espanso/default.yml ~/Documents/workspace_csy/csy_configFile/macOS_Mojave_10.14.6/espanso/
echo -e "default.yml\033[32m✔︎\033[0m"

cp ~/.config/alacritty/alacritty.yml  ~/Documents/workspace_csy/csy_configFile/macOS_Mojave_10.14.6/alacritty/
echo -e "alacritty.yml\033[32m✔︎\033[0m"


echo -e "\033[32mALL FILES BACKUP SUCCESSFUL!\033[0m"
