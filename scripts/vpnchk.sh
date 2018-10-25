#!/bin/bash

output=$(ifconfig | grep tun0)

if [ -n "$output" ]

then

echo " "

#notify-send -u normal VPN Connected

else

echo " "
#notify-send -u normal VPN Disconnected

fi;
