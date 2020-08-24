#!/bin/bash
read a
if [ "$a" = "HDMI-1" ]; then
	xrandr --output HDMI-1 --auto --primary && xrandr --output eDP-1 --off;
elif [ "$a" = "eDP-1" ]; then
	xrandr --output eDP-1 --auto --primary && xrandr --output HDMI-1 --off;
elif [ "$a" = "HDMI-1+eDP-1" ]; then
	xrandr --output HDMI-1 --auto --primary && xrandr --output eDP-1 --auto --noprimary --right-of HDMI-1;
fi
#i3-msg restart;
sh ~/.dwm/autostart.sh

