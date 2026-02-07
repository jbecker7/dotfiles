#!/usr/bin/env bash

source "$HOME/.config/sketchybar/variables.sh"

# Linux bar style - date display
sketchybar --add item date right \
	--set date update_freq=60 \
	icon="日" \
	icon.font="$FONT:Regular:15.0" \
	icon.color="$LABEL_COLOR" \
	icon.padding_left=12 \
	icon.padding_right=6 \
	label.color="$LABEL_COLOR" \
	label.font="$FONT:Regular:14.0" \
	label.padding_right=12 \
	align=center \
	background.height=32 \
	background.corner_radius="$CORNER_RADIUS" \
	background.color="$SECTION_BG" \
	background.drawing=on \
	script="$PLUGIN_DIR/date.sh"
