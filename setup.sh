#!/bin/sh

set -e

update() {
  yay -Syu --noconfirm
}

install() {
  yay -S --noconfirm --needed "$@"
}

start() {
  sudo systemctl enable "$@"
  sudo systemctl start "$@"
}

echo "Configuring system..."

# Setup
timedatectl set-ntp true

# System
update
install sudo which udiskie

# Maintenance
install acpi htop gtop

# Environment
install xorg-server xorg-xinit xorg-xrdb xorg-xrandr xorg-xprop xorg-xsetroot xinit-xsession xorg-xbacklight xorg-xmodmap xorg-server-xephyr
install xf86-video-intel xf86-input-synaptics
install dunst picom
install bspwm sxhkd
install polybar feh brightnessctl wmname

# Audio
install pipewire pipewire-alsa pipewire-pulse
install playerctl

# Fonts
install adobe-source-code-pro-fonts noto-fonts ttf-roboto ttf-material-design-icons-git otf-hasklig

# Terminal
install alacritty tmux
install ranger nano tree

# Security
install rofi
install rsync openssl openssh openvpn

# Network
install whois wget curl httpie wpa_supplicant
install networkmanager
systemctl enable NetworkManager.service
systemctl start NetworkManager.service

# Archive
install tar p7zip bzip2 gzip unrar unzip zip

# Fun
install neofetch
install cmatrix asciiquarium

# Shell
install fish starship
install exa bat ripgrep

# Development
install git
install postgresql
install docker docker-compose
install nodejs npm
install gradle maven
install python python-pip python-setuptools python-virtualenv
install kotlin jdk11-openjdk openjdk11-doc openjdk11-src
install terraform
sudo systemctl enable postgresql.service
sudo systemctl start postgresql.service

# Applications
install firefox-developer-edition
install vlc discord slack-desktop spotify

# Utilities
install speedcrunch deadd-notification-center-bin flameshot tldr

echo "Done!"
