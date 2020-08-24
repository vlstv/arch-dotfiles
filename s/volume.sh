#!/bin/sh

enabled=$(amixer -D pulse sget Master | grep 'Left:' | awk -F'[][]' '{ print $4 }')
volume=$(amixer -D pulse sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }' | sed 's/%//g')

if [[ "$enabled" == "off" ]]; then
    echo " 婢 off "
else
    if (( $volume == 0 )); then echo " 婢 $volume% "
    elif (( $volume <= 25 )); then echo " 奄 $volume% "
    elif (( $volume <= 50 )); then echo " 墳 $volume% "
    elif (( $volume <= 75 )); then echo " 墳 $volume% "
    elif (( $volume <= 100 )); then echo "  $volume% "
    elif (( $volume > 100 )); then echo "  $volume% "
    fi
fi
