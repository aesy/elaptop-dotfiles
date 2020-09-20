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
install git hub gitflow-avh
install redis postgresql postgis mariadb sqlite rabbitmq
install docker docker-compose
install nodejs npm gradle maven
install gradle maven
install python python-pip python-setuptools python-virtualenv
install python2 python2-pip python2-virtualenv
install kotlin jdk8-openjdk openjdk8-doc openjdk8-src
install consul terraform aws-cli
sudo systemctl enable redis.service
sudo systemctl start redis.service
sudo systemctl enable mariadb.service
sudo systemctl start mariadb.service
sudo systemctl enable postgresql.service
sudo systemctl start postgresql.service
sudo systemctl enable rabbitmq.service
sudo systemctl start rabbitmq.service
sudo rabbitmq-plugins enable rabbitmq_management

# Applications
install firefox-developer-edition
install ghostwriter vlc thunderbird discord
install slack-desktop skypeforlinux-stable-bin spotify

# Utilities
install speedcrunch coulr colorpicker deadd-notification-center
