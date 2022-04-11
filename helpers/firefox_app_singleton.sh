#!/bin/sh

if [ -z "$(firefox -v)" ] ; then notify-send "Unable to start $1 firefox is required"; fi
xdo activate -N "firefox_app_$1" || firefox --kiosk --class "firefox_app_$1" $2 &
