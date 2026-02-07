#!/usr/bin/env bash

source "$HOME/.config/sketchybar/variables.sh"

# Chinese numerals
SPACE_ICONS=("一" "二" "三" "四" "五" "六" "七" "八" "九" "十")
SPACE_CLICK_SCRIPT="yabai -m space --focus $SID 2>/dev/null"

if [ "$SELECTED" = "true" ]; then
	# Active space - highlight with gold and brighter background
	sketchybar --animate tanh 5 --set "$NAME" \
		icon.color="$SPACE_ACTIVE" \
		icon="${SPACE_ICONS[$SID - 1]}" \
		background.color=0xff2a241a \
		click_script="$SPACE_CLICK_SCRIPT"
else
	# Inactive space - subtle gray
	sketchybar --animate tanh 5 --set "$NAME" \
		icon.color="$SPACE_INACTIVE" \
		icon="${SPACE_ICONS[$SID - 1]}" \
		background.color="$SECTION_BG" \
		click_script="$SPACE_CLICK_SCRIPT"
fi
