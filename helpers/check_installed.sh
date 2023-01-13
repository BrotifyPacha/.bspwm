#!/usr/bin/zsh

if ! which $1 > /dev/null ; then
    notify-send 'CONFIG ERROR' "$1 is not installed"
    exit 1
fi
