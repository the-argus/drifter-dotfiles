#!/bin/bash
CUR=`cat $HOME/scripts/backlight/current.store`

declare -i CUR

if [[ CUR -lt 100 ]]
then
	(( CUR = CUR + 10 ))
fi

echo $CUR > $HOME/scripts/backlight/current.store

backlight_control $CUR

exec $HOME/scripts/backlight/dunst-brightness-refresh.sh $CUR
