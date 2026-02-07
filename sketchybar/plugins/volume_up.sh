#!/usr/bin/env bash

# Increase volume by 5%
CURRENT=$(osascript -e "output volume of (get volume settings)")
osascript -e "set volume output muted false"
NEW=$((CURRENT + 5))
if [ $NEW -gt 100 ]; then
	NEW=100
fi
osascript -e "set volume output volume $NEW"

# Update the display immediately (don't wait for update_freq)
sh "$HOME/.config/sketchybar/plugins/volume.sh"
