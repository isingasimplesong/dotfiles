#!/bin/sh

xrdb -merge ~/.Xressources &
sxhkd -c ~/dotfiles/sxhkd/sxhkdrc_common &
lxpolkit &
picom &
dunst &
#~/.fehbg &
nitrogen --restore &
xinput set-prop "ELAN1401:00 04F3:30DC Touchpad" 337 1 &
powerkit &
# pasystray &
nm-applet &
blueman-applet &
nextcloud &
protonmail-bridge --no-window &
#setxkbmap -option &
#setxkbmap -option compose:rwin &
#sleep 5; setxkbmap -option caps:swapescape &
