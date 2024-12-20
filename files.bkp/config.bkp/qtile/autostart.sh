#!/bin/sh

EXTERNAL_OUTPUT="HDMI1" #sua saída externa
INTERNAL_OUTPUT="LVDS1" #sua tela 

xrandr | grep $EXTERNAL_OUTPUT | grep " connected "
if [ $? -eq 0 ]; then
    xrandr --output $INTERNAL_OUTPUT --off --output $EXTERNAL_OUTPUT --auto 
else
    xrandr --output $INTERNAL_OUTPUT --auto --output $EXTERNAL_OUTPUT --off
fi

xset -b
# xrandr --output LVDS1 --mode 1366x768
# xrandr --output HDMI1 --mode 1360x768
nitrogen --restore &
polybar &
picom &
unclutter --jitter 10 --ignore-scrolling --start-hidden --fork &
setxkbmap -model abnt2 -layout br -variant abnt2
