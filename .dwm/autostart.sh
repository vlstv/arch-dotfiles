#!/bin/bash
setxkbmap -model pc104 -layout us,ru -variant ,, -option grp:alt_shift_toggle &
nm-applet &
pkill dwmblocks; dwmblocks &
pkill picom; picom &
feh --bg-scale ~/Pictures/wallpapers/408.jpg &
wmname LG3D &
udiskie &
