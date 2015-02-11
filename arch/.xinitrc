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

# restore the last set nitrogen wallpaper
nitrogen --restore &

# set the mouse to standard left pointing
xsetroot -cursor_name left_ptr &

# activate the numlock
numlockx &

# if .Xreources exists, then load it
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# start urxvt daemon
urxvtd -q -f -o

# run bspwm
exec bspwm_run
# exec twm
