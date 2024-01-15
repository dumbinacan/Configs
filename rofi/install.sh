#!/bin/bash
# installs rofi and themes
# Requires yay


<<<<<<< HEAD
mkdir -p ~/.config/rofi
ln -s $(pwd)/config.rasi ~/.config/rofi/config.rasi

sudo pacman -S --noconfirm rofi
yay -S --noconfirm rofi-theme-applet-1080p rofi-theme-fonts rofi-theme-launcher-1080p rofi-theme-menu-1080p rofi-theme-used rofi-themes-collection-git
=======
sudo pacman -S --noconfirm rofi
mkdir -p ~/.config/rofi
ln -s $(pwd)/config.rasi ~/.config/rofi/config.rasi
yay -S --noconfirm rofi-theme-applet-1080p rofi-theme-fonts rofi-theme-launcher-1080p rofi-theme-menu-1080p rofi-theme-used rofi-themes-collection-git

>>>>>>> ac398aa764cc50e30471d31902e882adc43de152
