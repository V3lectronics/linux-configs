#!/bin/bash

USER_HOME='/home/jan'

echo '========== Updating config files... =========='
cp $USER_HOME/.zshrc .
cp $USER_HOME/.config/bspwm/bspwmrc .
cp $USER_HOME/.config/sxhkd/sxhkdrc .
cp $USER_HOME/.config/alacritty/alacritty.yml .
cp $USER_HOME/.config/polybar/config.ini .
cp $USER_HOME/.config/flameshot/flameshot.ini .
cp $USER_HOME/.config/ranger/rc.conf .
cp -r $USER_HOME/.config/nvim .
echo "[SUCCESS]Copied config files to local repository"

echo '========== Updating installed packages list... =========='
apt list --installed > installed_apt_packages.txt
echo "[SUCCESS]Updated list installed_apt_packages.txt"

echo '========== Commiting updates to git... =========='
git config --global user.email "niszczyciel.agawa@gmail.com"
git config --global user.name "barbarjan"
git add .
# git restore --staged .git
git commit -m 'automatically udpate config files'
# git push
echo "[SUCCESS]Commit created"

echo '========== Finished =========='
echo "You can do 'git push' now"
