#!/bin/bash

export color_main="^fg(#cdc5b3)"
export color_sec1="^fg(#72aca9)"
export color_sec2="^fg(#72aca9)"
export color_red="^fg(#F21108)"

export font="UbuntuMono-R-8"

fg_color="#cdc5b3"
bg_color="#0e0e0e"

dzen_style="-fg $fg_color -bg $bg_color -fn $font -h 20"

~/.config/bspwm/panel/status_bars/dzen_main.sh      | dzen2  -y 0 -x 700 -w 970  -ta r $dzen_style &
~/.config/bspwm/panel/status_bars/dzen_audio.sh     | dzen2 -y 770 -x 0    -w 1366 -ta l $dzen_style &
~/.config/bspwm/panel/status_bars/dzen_title.sh     | dzen2 -y 0 -x 0    -w 700 -ta l $dzen_style &
