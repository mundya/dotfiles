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

# Personal Preferences
setxkbmap gb						# Keyboard
xset b off						# No BEEP
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources	# Xresources

# Wallpaper
feh --bg-fill IMAG0241.jpg

# Start PulseAudio
start-pulseaudio-x11

# Start xmonad
exec xmonad
