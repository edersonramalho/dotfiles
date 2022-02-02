#!/bin/bash

dthr="$(date '+%d%m%Y%H%M')"
dir="$HOME/.config/polybar"
log="$HOME/.log"
#style="archgui" ##Principal e funcional
# makccr / brodie / ederson / polybar-nord
style="polybar-nord"

killall -q polybar
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
#polybar bspwm &

echo "===>" | tee -a "$log/polybar_top.log"
echo "[$(date '+%Y/%m/%d-%H:%M')] Theme = $style" | tee -a "$log/polybar_top.log"

if type "xrandr"; then
  echo "[Polybar/01] xrandr" | tee -a "$log/polybar_top.log"  
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload -q bspwm -c "$dir/$style/config.ini" | tee -a "$log/polybar_top.log" &
    echo "[Polybar/01] $m" | tee -a "$log/polybar_top.log"
  done
else 
  echo "[Polybar/02] " | tee -a "$log/polybar_top.log"   
  polybar --reload -q bspwm -c "$dir/$style/config.ini" | tee -a "$log/polybar_top.log" 
fi