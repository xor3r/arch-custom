#!/bin/bash
sudo post-clean
sudo pacman -Rns virtualbox-guest-utils --noconfirm
sudo pacman -Rns virtualbox-guest-dkms --noconfirm
sudo rm /etc/modules-load.d/virtualbox.conf
cd ~/Desktop
sudo rm -f hostconfig.sh hostconfig.desktop
