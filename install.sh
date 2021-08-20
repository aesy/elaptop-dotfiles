#!/bin/sh

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

# etc
sudo mkdir -p /etc/lightdm
sudo ln -snf "$PWD"/etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf
sudo ln -snf "$PWD"/etc/lightdm/lightdm-mini-greeter.conf /etc/lightdm/lightdm-mini-greeter.conf
sudo ln -snf "$PWD"/etc/pacman.conf /etc/pacman.conf

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
ln -snf "$PWD"/shell/.bashrc ~/.bashrc

mkdir -p ~/.config/fish
ln -snf "$PWD"/shell/config.fish ~/.config/fish/config.fish

# starship
ln -snf "$PWD"/starship/starship.toml ~/.config/starship.toml

# tmux
mkdir -p ~/.config/tmux
ln -snf "$PWD"/tmux/tmux.conf ~/.config/tmux/tmux.conf

# x11
ln -snf "$PWD"/x11/.xinitrc ~/.xinitrc
ln -snf "$PWD"/x11/.Xresources ~/.Xresources

echo "Done!"
