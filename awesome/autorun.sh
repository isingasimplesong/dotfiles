#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}
run "xrdb -merge ~/.Xressources";
run "picom";
run "dunst";
run "setxkbmap -option compose:rwin";
run "setxkbmap -option caps:swapescape"
run "xinput set-prop "ELAN1401:00 04F3:30DC Touchpad" 337 1";
run "pasystray";
run "nm-applet";
run "blueman-applet";
## run "powerkit";
run "insync start";
