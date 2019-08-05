#!/usr/bin/env bash

set -e

USER=$(whoami)
PWD=$(pwd)

echo "Installing symlinks for user '$USER'..."

# alacritty
mkdir -p ~/.config/alacritty
ln -snf "$PWD"/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# bspwm
mkdir -p ~/.config/bspwm
ln -snf "$PWD"/bspwm/bspwmrc ~/.config/bspwm/bspwmrc

# compton
ln -snf "$PWD"/compton/compton.conf ~/.config/compton.conf

# dunst
mkdir -p ~/.config/dunst
ln -snf "$PWD"/dunst/dunstrc ~/.config/dunst/dunstrc

# git
ln -snf "$PWD"/git/.gitconfig ~/.gitconfig
ln -snf "$PWD"/git/.gitignore ~/.gitignore

# polybar
mkdir -p ~/.config/polybar
ln -snf "$PWD"/polybar/config ~/.config/polybar/config

# rofi
mkdir -p ~/.config/rofi
ln -snf "$PWD"/rofi/easy.rasi ~/.config/rofi/easy.rasi

# sxhkd
mkdir -p ~/.config/sxhkd
ln -snf "$PWD"/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc

# shell
ln -snf "$PWD"/shell/.aliases ~/.aliases
ln -snf "$PWD"/shell/.functions ~/.functions
ln -snf "$PWD"/shell/.profile ~/.profile
ln -snf "$PWD"/shell/.zshrc ~/.zshrc

# x11
ln -snf "$PWD"/shell/.xinitrc ~/.xinitrc
ln -snf "$PWD"/shell/.Xresources ~/.Xresources

echo "Done!"
