#!/usr/bin/env bash

# Toggle popup menu on click
if [ "$BUTTON" = "left" ]; then
	# Toggle popup menu
	sketchybar --set volume popup.drawing=toggle
elif [ "$BUTTON" = "right" ]; then
	# Toggle mute
	MUTED=$(osascript -e "output muted of (get volume settings)")
	if [ "$MUTED" = "true" ]; then
		osascript -e "set volume output muted false"
	else
		osascript -e "set volume output muted true"
	fi
	# Update the display
	sh "$HOME/.config/sketchybar/plugins/volume.sh"
fi
