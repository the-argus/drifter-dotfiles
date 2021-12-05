#!/bin/bash

DATE=$(echo $(date +"%F_%T"))
NAME=$(echo screenshot_$DATE)

ffmpeg -f x11grab -video_size 1920x1080 -i $DISPLAY -vframes 1 ~/Desktop/media/Images/screenshots/$NAME.png
