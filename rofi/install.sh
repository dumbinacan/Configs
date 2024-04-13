#!/bin/bash
# installs rofi and themes
# Requires yay

sudo pacman -S --noconfirm rofi
yay -S --noconfirm rofi-theme-applet-1080p rofi-theme-fonts rofi-theme-launcher-1080p rofi-theme-menu-1080p rofi-theme-used rofi-themes-collection-git

mkdir -p ~/.config/rofi
ln -s $(pwd)/config.rasi ~/.config/rofi/config.rasi
