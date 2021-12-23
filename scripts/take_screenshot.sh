#!/bin/bash

DATE=$(echo $(date +"%F_%T"))
NAME=$(echo screenshot_$DATE)

SCROTPATH="$HOME/Desktop/media/Images/screenshots"

ffmpeg -f x11grab -video_size 1920x1080 -i $DISPLAY -vframes 1 $SCROTPATH/$NAME.png

# send notif
dunstify -a "takeScreenshot" -u low -h string:x-dunst-stack-tag:"takeScreenshot" $NAME
