#!/bin/sh

status=$(cat /sys/class/power_supply/BAT0/status)
capacity=$(cat /sys/class/power_supply/BAT0/capacity)

if [[ "$status" == "Discharging" ]]; then
    if (( $capacity <= 5 )); then echo "  $capacity% " 
    elif (( $capacity <= 10 )); then echo "  $capacity% " 
    elif (( $capacity <= 20 )); then echo "  $capacity% " 
    elif (( $capacity <= 30 )); then echo "  $capacity% " 
    elif (( $capacity <= 40 )); then echo "  $capacity% " 
    elif (( $capacity <= 50 )); then echo "  $capacity% " 
    elif (( $capacity <= 60 )); then echo "  $capacity% " 
    elif (( $capacity <= 70 )); then echo "  $capacity% " 
    elif (( $capacity <= 80 )); then echo "  $capacity% " 
    elif (( $capacity <= 90 )); then echo "  $capacity% " 
    elif (( $capacity <= 100 )); then echo "  $capacity% " 
    fi
else
    echo "  $capacity% "
fi
