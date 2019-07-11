#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

cinnamon-screensaver &
DISPLAY=:0 gsettings set org.cinnamon.settings-daemon.plugins.power lock-on-suspend true &
DISPLAY=:0 gsettings set org.cinnamon.desktop.lockdown disable-lock-screen false &
DISPLAY=:0 gsettings set org.cinnamon.desktop.screensaver lock-enabled true &
exec cinnamon-session
