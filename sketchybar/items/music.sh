#!/usr/bin/env bash

source "$HOME/.config/sketchybar/variables.sh"

# Linux bar style - music/audio player
sketchybar --add item music right \
	--set music \
	update_freq=2 \
	icon="󰎆" \
	icon.font="$FONT:Regular:15.0" \
	icon.color="$LABEL_COLOR" \
	icon.padding_left=12 \
	icon.padding_right=6 \
	label.color="$LABEL_COLOR" \
	label.font="$FONT:Regular:14.0" \
	label.padding_right=12 \
	label.width=200 \
	scroll_texts=on \
	background.height=32 \
	background.corner_radius="$CORNER_RADIUS" \
	background.color="$SECTION_BG" \
	background.drawing=on \
	script="$PLUGIN_DIR/music.sh" \
	--subscribe music media_change song_update
