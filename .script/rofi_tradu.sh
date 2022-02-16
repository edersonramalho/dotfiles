#!/bin/bash

#rofi -show drun -theme squared-nord -icon-theme "Tela-circle" -show-icons
#um=`echo -e "traduzir" | rofi -dmenu `
#um='echo -e "traduzir" | rofi -show drun -theme squared-nord'

um=`echo -e "traduzir" | rofi -theme squared-nord -dmenu `

palavra=`trans -no-ansi -no-bidi -no-warn "$um" | sed -n 3,4p`

if [ -z $um ]
then
    exit 1
else
    dunstify -u normal -t 6000 "Tradução" "$palavra"
fi
