#!/bin/sh
DIR=~/Pictures/Screenshots
mkdir -p "$DIR"
F="$DIR/$(date +%Y%m%d-%H%M%S).png"
grim -g "$(slurp)" "$F" &&
wl-copy < "$F" &&  # Image to regular clipboard (Ctrl+V pastes image)
echo "$F" | wl-copy --trim-newline &&  # Path to text clipboard (wl-paste or primary)
notify-send "Screenshot saved: image & path copied" "$F"

