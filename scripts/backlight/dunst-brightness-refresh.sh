#!/bin/bash
# changeVolume

# send notification with dunst
msgTag='brightness_refresh'
dunstify -a "changeBrightness" -u low -h string:x-dunst-stack-tag:$msgTag \
	-h int:value:"$1" "Brightness: ${1}%"
