#!/bin/bash

# Requires: maim, imagemagick, i3lock

lockfi='/tmp/lock'
lockbg='/tmp/lock.png'

maim "$lockbg"
convert "$lockbg" -filter point -resize 5% -resize 2000% "$lockbg"
touch "$lockfi"
i3lock -u -i "$lockbg"
trap "rm $lockfi;" EXIT