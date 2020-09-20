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

# picom
mkdir -p ~/.config/picom
ln -snf "$PWD"/picom/picom.conf ~/.config/picom/picom.conf

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

# pulseaudio
mkdir -p ~/.config/pulse
ln -snf "$PWD"/pulseaudio/daemon.conf ~/.config/pulse/daemon.conf

# shell
ln -snf "$PWD"/shell/.aliases ~/.aliases
ln -snf "$PWD"/shell/.functions ~/.functions
ln -snf "$PWD"/shell/.profile ~/.profile
ln -snf "$PWD"/shell/.zshrc ~/.zshrc

# x11
ln -snf "$PWD"/x11/.xinitrc ~/.xinitrc
ln -snf "$PWD"/x11/.Xresources ~/.Xresources

echo "Done!"
