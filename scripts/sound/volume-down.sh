#!/bin/bash

pactl set-sink-volume @DEFAULT_SINK@ -1000

exec $HOME/scripts/sound/dunst-volume-refresh.sh
