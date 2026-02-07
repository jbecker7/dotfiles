#!/usr/bin/env bash

source "$HOME/.config/sketchybar/variables.sh"

# Numerals for spaces (一, 二, 三, 四, 五, 六, 七, 八, 九, 十)
SPACE_ICONS=("一" "二" "三" "四" "五" "六" "七" "八" "九" "十")

# Create spaces with Linux bar styling
for i in {0..9}; do
	sid=$((i + 1))
	sketchybar --add space space.$sid left \
		--set space.$sid associated_space=$sid \
		label.drawing=off \
		icon="${SPACE_ICONS[$i]}" \
		icon.font="$FONT:Regular:16.0" \
		icon.padding_left=10 \
		icon.padding_right=10 \
		icon.color="$SPACE_INACTIVE" \
		background.height=32 \
		background.corner_radius="$CORNER_RADIUS" \
		background.color="$SECTION_BG" \
		background.drawing=on \
		script="$PLUGIN_DIR/space.sh"
done

# Bracket for spaces (Linux bar style - unified section)
sketchybar --add bracket spaces '/space.*/' \
	--set spaces background.drawing=off
