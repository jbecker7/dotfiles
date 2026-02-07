#!/usr/bin/env bash

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ "$PERCENTAGE" = "" ]; then
	exit 0
fi

# Separate charging icon (lightning bolt) from percentage for better spacing
# The main "电" icon stays, we add the lightning bolt as a prefix to the label
if [ "$CHARGING" != "" ]; then
	sketchybar --set "$NAME" label="⚡ ${PERCENTAGE}%"
else
	sketchybar --set "$NAME" label="${PERCENTAGE}%"
fi
