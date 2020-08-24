#!/bin/sh
dmenufont="monospace:size=10"
col_gray1="#202745"
col_gray2="#202745"
col_gray3="#969cb3"
col_gray4="#202745"
col_back1="#638cc4"
col_cyan="#638cc4" #9c6279

dmenu -fn $dmenufont -nb $col_gray1 -nf $col_gray3 -sb $col_cyan -sf $col_gray4
