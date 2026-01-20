#!/bin/sh

width=1366
height=768
half_width=$((width/2))
half_height=$((height/2))

fg_color=ffffff99
wrong_color=f82a1188
highlight_color=ffffff
verif_color=ffffff55
bg=#00000055

pkill -SIGUSR1 dunst # pause 

i3lock -n --force-clock --image="$HOME/.config/lock/lockscreen.png"  \
--ind-pos="w/2:h/2" --time-pos="w-71:h-50" --date-pos="w-82:h-28" --greeter-pos="w/2:h/2" \
--insidever-color=$fg_color --insidewrong-color=$wrong_color --inside-color=fefefe00 \
--ringver-color=$verif_color --ringwrong-color=$wrong_color --ring-color=$fg_color \
--keyhl-color=$highlight_color --bshl-color=$highlight_color --separator-color=00000000 \
--date-color=$fg_color --time-color=$fg_color --greeter-color=$fg_color \
--time-str="%H:%M" --time-size=36 \
--date-str="%a, %b %d" --date-size=21 \
--greeter-text="$full_alias" --greeter-size=18\
--line-uses-ring \
--radius 80 --ring-width 10 --indicator \
--lock-text="" --verif-text="" --greeter-text="" --no-modkey-text --wrong-text="" --noinput-text="" \
--clock --date-font="CartographCF" --time-font="CartographCF"

pkill -SIGUSR2 dunst # resume

