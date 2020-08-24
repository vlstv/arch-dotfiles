#!/bin/bash
xrandr --listactivemonitors | grep eDP-1 >/dev/null && (xrandr --output HDMI-1 --auto --primary && xrandr --output eDP-1 --off) || (xrandr --output eDP-1 --auto --primary && xrandr --output HDMI-1 --off)
