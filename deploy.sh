#!/bin/bash

sudo apt update
sudo apt upgrade

sudo apt install latte-dock git curl

sudo apt install zsh
sudo chsh -s $(which zsh)

echo "Installing firewall and openssh server..."
sudo apt install ufw openssh-server

echo "Setting up Bonjour..."
sudo apt install avahi-daemon avahi-discover libnss-mdns

echo "Setting up UFW"
./setup-ufw.sh

echo "Setting up audio..."
./setup-audio.sh

echo "Applying UI patches for plasmoids..."
./setup-ui-patches.sh

sudo apt install neofetchN