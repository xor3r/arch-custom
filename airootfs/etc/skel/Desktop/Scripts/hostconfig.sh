#!/bin/bash
sudo post-clean
sudo pacman -Rns virtualbox-guest-utils --noconfirm
sudo pacman -Rns virtualbox-guest-dkms --noconfirm
sudo rm /etc/modules-load.d/virtualbox.conf
sudo rm -f ~/Desktop/Scripts/hostconfig.sh
