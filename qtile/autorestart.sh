#!/bin/sh

xinput set-prop "ELAN1401:00 04F3:30DC Touchpad" 333 1 &
sleep 5; setxkbmap -model pc105 -layout us -variant intl -option caps:swapescape -option compose:rwin &
