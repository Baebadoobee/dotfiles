xset -b

setxkbmap -model abnt2 -layout br -variant abnt2
picom &
lxappearance &
nitrogen --restore &
exec qtile start
