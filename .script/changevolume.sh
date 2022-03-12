#!/bin/bash

function send_notification() {
	#volume=$(pamixer --get-volume)
    volume=$(pacmd list-sinks|grep -A 15 '* index'| awk '/volume: front/{ print $5 }' | sed 's/[%|,]//g')
	dunstify -a "changevolume" -u low -r "9993" -h int:value:"$volume" -i "volume-$1" "Volume: ${volume}%" -t 2000
}

case $1 in
up)
	# Set the volume on (if it was muted)
	#pamixer -u
    pactl set-sink-mute 0 0
	#pamixer -i 5 --allow-boost
    pactl set-sink-volume 0 +5%
	send_notification $1
	;;
down)
	pactl set-sink-mute 0 0
    pactl set-sink-volume 0 -5%
    #pamixer -u
	#pamixer -d 5 --allow-boost
	send_notification $1
	;;
mute)
	#pamixer -t
    pactl set-sink-mute 0 toggle
	#if $(pamixer --get-mute); then
    if $(pacmd list-sinks|grep -A 15 '* index'|awk '/muted:/{ print $2 }') == 'yes'; then
		dunstify -i volume-mute -a "changevolume" -t 2000 -r 9993 -u low "Muted"
	else
		send_notification up
	fi
	;;
esac
