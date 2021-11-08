#!/bin/bash
# sets the current window to be transparent given transparency percent.

ID1=$(xdotool getwindowfocus)
CURTRANS=$(xprop -id $ID1 | grep "_NET_WM_WINDOW_OPACITY"| grep -o '[[:digit:]]*')
MAXTRANS="4294967295"

declare CURTRANS -i
declare MAXTRANS -i

echo $CURTRANS

if [ $? == 0 ]; then
	if [ $CURTRANS == $MAXTRANS ]; then
		TARGET=$1
	else
		TARGET=255
	fi
else
	TARGET=$1
fi

ID=$(xwininfo -id $ID1 | grep "Window id:" | grep -o "\w*0x\w*")
TRANS=$(printf 0x%x $((0xffffffff * $TARGET / 255)))}

xprop -id $ID -format _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY $TRANS
