#!/bin/bash

id=$(xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')
name=$(xprop -id $id | awk '/_NET_WM_NAME/{$1=$2="";print}' | cut -d'"' -f2)

if [ "$name" == 'xprop: error: Invalid window id format: 0x0' ]

then
	echo ""
else

	echo "$name"

fi;


