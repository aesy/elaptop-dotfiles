#!/bin/sh

update() {
  pacman -Syu --noconfirm
}

install() {
  yay -S --noconfirm --needed "$@"
}

# Setup
timedatectl set-ntp true

# System
update
install sudo which

# Maintenance
install acpi htop gtop ytop

# Environment
install xorg-server xorg-xinit xorg-xrdb xorg-xrandr xorg-xprop xorg-xbacklight xorg-xmodmap
install xf86-video-intel xf86-input-synaptics
install dunst picom
install bspwm sxhkd

# Fonts
install adobe-source-code-pro-fonts noto-fonts ttf-roboto
install otf-hasklig

# Terminal
install alacritty tmux
install ranger nano tree

# Security
install rofi
install rsync openssl openssh openvpn

# Network
install whois wget curl httpie wpa_supplicant
install networkmanager networkmanager-openvpn
systemctl enable NetworkManager.service
systemctl start NetworkManager.service

# Archive
install tar 7z bzip2 gzip unrar unzip zip

# Fun
install neofetch
install cmatrix asciiquarium

# Shell
install fish starship

# Development
install git
install postgresql
install docker docker-compose
install nodejs npm gradle maven
install gradle maven
install python python-pip python-setuptools python-virtualenv
install python2 python2-pip python2-virtualenv
install kotlin jdk11-openjdk openjdk11-doc openjdk11-src
install consul terraform aws-cli
sudo systemctl enable postgresql.service
sudo systemctl start postgresql.service

# Applications
install firefox-developer-edition
install vlc discord
install slack-desktop spotify

# Utilities
install speedcrunch deadd-notification-center
