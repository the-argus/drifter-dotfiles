#!/bin/bash
CUR=`cat $HOME/scripts/backlight/current.store`

declare -i CUR

if [[ CUR -gt 0 ]]
then
	(( CUR = CUR - 10 ))
fi

echo $CUR > $HOME/scripts/backlight/current.store

backlight_control $CUR

exec $HOME/scripts/backlight/dunst-brightness-refresh.sh $CUR
