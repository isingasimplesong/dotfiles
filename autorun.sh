i#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}
run "picom --experimental-backends"
run "nm-applet"
run "blueman-applet"
run "dunst"
run "setxkbmap -option compose:rwin"
run "~/.fehbg"
run "pasystray"
run "insync start"

