#!/bin/bash
resolution="$(xdpyinfo  | grep -oP 'dimensions:\s+\K\S+')"
import -window root /tmp/screenshot.png
convert /tmp/screenshot.png -blur 0x5 RGB:- | i3lock --raw ${resolution}:rgb -u -e --image /dev/stdin
rm -rf /tmp/screenshot.png
