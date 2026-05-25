#!/bin/sh
DIR=~/Pictures/Screenshots
mkdir -p "$DIR"
OUTPUT="$DIR/screenshot-$(date +%Y-%m-%d_%H-%M-%S)-edit.png"
grim -g "$(slurp)" - | satty --filename - --output-filename "$OUTPUT" --save-after-copy --copy-command 'wl-copy' --early-exit
wl-copy < "$OUTPUT"  # Ensure edited image copied
echo "$OUTPUT" | wl-copy --trim-newline  # Path to text clipboard
notify-send "Edited screenshot saved: image & path copied" "$OUTPUT"

