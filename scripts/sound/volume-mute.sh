#!/bin/bash

pactl set-sink-mute @DEFAULT_SINK@ toggle

exec $HOME/scripts/sound/dunst-volume-refresh.sh
