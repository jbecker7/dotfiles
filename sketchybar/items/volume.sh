#!/usr/bin/env bash

source "$HOME/.config/sketchybar/variables.sh"

# Linux bar style - section with background
# Clickable volume control with popup menu
sketchybar --add item volume right \
	--set volume \
	update_freq=3 \
	icon="音" \
	icon.font="$FONT:Regular:15.0" \
	icon.color="$LABEL_COLOR" \
	icon.padding_left=12 \
	icon.padding_right=6 \
	label.color="$LABEL_COLOR" \
	label.font="$FONT:Regular:14.0" \
	label.padding_right=12 \
	background.height=32 \
	background.corner_radius="$CORNER_RADIUS" \
	background.color="$SECTION_BG" \
	background.drawing=on \
	script="$PLUGIN_DIR/volume.sh" \
	click_script="$PLUGIN_DIR/volume_click.sh" \
	--subscribe volume volume_change

# Volume up button
sketchybar --add item volume_up popup.volume \
	--set volume_up icon="▲" \
	icon.font="$FONT:Regular:16.0" \
	icon.color="$LABEL_COLOR" \
	label="增加" \
	label.font="$FONT:Regular:14.0" \
	label.color="$LABEL_COLOR" \
	background.padding_left=10 \
	background.padding_right=10 \
	click_script="$PLUGIN_DIR/volume_up.sh"

# Volume down button
sketchybar --add item volume_down popup.volume \
	--set volume_down icon="▼" \
	icon.font="$FONT:Regular:16.0" \
	icon.color="$LABEL_COLOR" \
	label="减少" \
	label.font="$FONT:Regular:14.0" \
	label.color="$LABEL_COLOR" \
	background.padding_left=10 \
	background.padding_right=10 \
	click_script="$PLUGIN_DIR/volume_down.sh"
