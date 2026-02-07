#!/usr/bin/env bash

source "$HOME/.config/sketchybar/variables.sh"

# Linux bar style - section with background
# Separate icon (char) and charging icon (lightning bolt)
sketchybar --add item battery right \
	--set battery \
	update_freq=60 \
	icon="电" \
	icon.font="$FONT:Regular:15.0" \
	icon.color="$LABEL_COLOR" \
	icon.padding_left=12 \
	icon.padding_right=4 \
	label.color="$LABEL_COLOR" \
	label.font="$FONT:Regular:14.0" \
	label.padding_left=6 \
	label.padding_right=12 \
	background.height=32 \
	background.corner_radius="$CORNER_RADIUS" \
	background.color="$SECTION_BG" \
	background.drawing=on \
	script="$PLUGIN_DIR/power.sh" \
	--subscribe battery power_source_change
