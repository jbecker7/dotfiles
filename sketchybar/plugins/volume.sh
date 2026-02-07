#!/usr/bin/env bash

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

if [ "$MUTED" != "false" ]; then
	LABEL="静音"
	VOLUME=0
else
	LABEL="${VOLUME}%"
fi

sketchybar --set "$NAME" label="$LABEL"
