#!/bin/sh

xrdb -merge ~/.Xressources &
sxhkd -c ~/.config/qtile/qtile-sxhkdrc &
lxpolkit &
picom &
dunst &
~/.fehbg & 
setxkbmap -option compose:rwin &
xinput set-prop "ELAN1401:00 04F3:30DC Touchpad" 337 1 &
pasystray &
nm-applet &
blueman-applet &
powerkit &
insync start &
#setxkbmap -option &
setxkbmap -option caps:swapescape &
