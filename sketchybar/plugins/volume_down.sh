#!/usr/bin/env bash

# Decrease volume by 5%
CURRENT=$(osascript -e "output volume of (get volume settings)")
NEW=$((CURRENT - 5))
if [ $NEW -lt 0 ]; then
	NEW=0
fi
osascript -e "set volume output volume $NEW"

# Update the display immediately (don't wait for update_freq)
sh "$HOME/.config/sketchybar/plugins/volume.sh"
