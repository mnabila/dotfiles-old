#!/usr/bin/env sh

## Executed by startx (run your window manager from here)
xrdb -load ~/.Xresources
xset +fp /usr/share/fonts/local
xset fp rehash

if [ -d /etc/X11/xinit/xinitrc.d  ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f"  ] && . "$f"
  done
  unset f
fi

export EDITOR=nvim
export FONTCONFIG_PATH=/etc/fonts

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_SCALE_FACTOR=1
export QT_SCREEN_SCALE_FACTORS=1

export TERM=screen-256color
export TERMINAL=st

# default terminal ranger
export TERMCMD=st

# Clipmenu Environment Variables
export CM_LAUNCHER=rofi
export CM_DIR=/tmp/clipmenu

# Untuk SLiM Session
DEFAULTSESSION=i3
case "$1" in
    i3) exec i3 ;;
    awesome) exec awesome ;;
    i3-with-shmlog) exec i3-with-shmlog ;;
    sway) exec sway ;;
    *) exec $DEFAULTSESSION ;;
esac

