#!/bin/bash  
echo -e "#\n# ~/.bash_profile\n#\n\n\n[[ -f ~/.bashrc ]] && . ~/.bashrc\n\n\n[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx" >> ~/.bash_profile
echo -e "#!/bin/sh\n#\n# ~/.xinitrc\n#\n\n# Executed by startx (run your window manager from here)\n\n\nif [ -d /etc/X11/xinit/xinitrc.d ]; then\n  for f in /etc/X11/xinit/xinitrc.d/*; do\n    [ -x "$f" ] && . "$f"\n  done\n  unset f\nfi\n\nexec cinnamon-session" >> ~/.xinitrc
sudo pacman -Syyu --noconfirm
cd ~/
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
rm -f ~/Desktop/Scripts/autoconfig.sh