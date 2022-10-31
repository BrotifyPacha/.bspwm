#!/bin/sh

if [ -z "$(firefox -v)" ] ; then notify-send "Unable to start $1 firefox is required"; fi
class="firefox_app_$1"
shift
xdo activate -N "$class" || firefox --class "$class" $@ &
