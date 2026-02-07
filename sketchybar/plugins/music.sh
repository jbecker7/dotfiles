#!/usr/bin/env bash

# Check for Spotify first (via media_change event)
if [ "$INFO" != "" ]; then
	STATE=$(echo "$INFO" | jq -r '.state' 2>/dev/null)
	APP=$(echo "$INFO" | jq -r '.app' 2>/dev/null)
	
	if [ "$STATE" = "playing" ] && [ "$APP" = "Spotify" ]; then
		TITLE=$(echo "$INFO" | jq -r '.title' 2>/dev/null)
		ARTIST=$(echo "$INFO" | jq -r '.artist' 2>/dev/null)
		sketchybar --set "$NAME" label="${ARTIST} - ${TITLE}" drawing=on
		exit 0
	fi
fi

# Check for Apple Music
if pgrep -x "Music" > /dev/null; then
	PLAYER_STATE=$(osascript -e "tell application \"Music\" to set playerState to (get player state) as text" 2>/dev/null)
	
	if [ "$PLAYER_STATE" = "playing" ] || [ "$PLAYER_STATE" = "paused" ]; then
		TITLE=$(osascript -e 'tell application "Music" to get name of current track' 2>/dev/null)
		ARTIST=$(osascript -e 'tell application "Music" to get artist of current track' 2>/dev/null)
		
		if [ -n "$TITLE" ] && [ -n "$ARTIST" ]; then
			if [ "$PLAYER_STATE" = "paused" ]; then
				sketchybar --set "$NAME" icon="󰏤" label="${ARTIST} - ${TITLE}" drawing=on
			else
				sketchybar --set "$NAME" icon="󰎆" label="${ARTIST} - ${TITLE}" drawing=on
			fi
			exit 0
		fi
	fi
fi

# Show icon even when nothing is playing (just icon, no label)
sketchybar --set "$NAME" icon="󰎆" label="" drawing=on
