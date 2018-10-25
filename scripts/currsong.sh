#!/bin/bash

song=$(/usr/bin/playerctl metadata title)
artist=$(/usr/bin/playerctl metadata artist)

if [[ -z "${song// }" ]]; then
	echo "Spotify Not Playing"
else
	echo "  $artist - $song"
fi

