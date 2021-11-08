#!/bin/bash
xdg-open "$(rg --no-messages --files ~/Desktop/programming ~/Desktop/ricing ~/Desktop/media ~Desktop/school ~/Downloads \
    -g "!{*.srt,*.rar,*.txt,*.zip,*.nfo}" | rofi -threads 0 \
    -theme-str "#window { width: 900;}" \
    -dmenu -sort -sorting-method fzf -i -p "find")"