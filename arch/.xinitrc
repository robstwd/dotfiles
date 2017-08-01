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

# swap Ctrl and Esc keys
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

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

# start the gnome-keyring-daemon
# https://wiki.archlinux.org/index.php/GNOME_Keyring#xinitrc_method
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# run bspwm
#exec bspwm_run
# exec twm
session=${1:-i3}

case $session in
    bspwm             ) exec bspwm_run;;
    i3|i3wm           ) exec i3;;
    monster|monsterwm ) exec monsterwm;;
    # No known session, try to run it as command
    *) exec $1;;
esac
