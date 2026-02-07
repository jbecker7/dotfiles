#!/usr/bin/env sh

# Minimalist color palette

# Primary colors
BLACK=0xff1a1a1a          # 黑 - Deep black
WHITE=0xfff5f5f5          # 白 - Pure white
RED=0xffc8102e            # 红 - Red
GOLD=0xffd4af37            # 金 - Gold accent
GRAY=0xff6b6b6b            # 灰 - Subtle gray

# Bar colors
BAR_COLOR=0xff0a0a0a       # Very dark background
BAR_BORDER=0xff2a2a2a      # Subtle border

# Text colors
ICON_COLOR=$WHITE
LABEL_COLOR=$WHITE

# Item colors (minimal, using gold for accents, red only for errors)
SPACE_ACTIVE=$GOLD
SPACE_INACTIVE=$GRAY
CLOCK_COLOR=$GOLD
BATTERY_COLOR=$WHITE
VOLUME_COLOR=$WHITE

# Font
FONT="FiraCode Nerd Font"

# Spacing (Linux bar style - more generous)
PADDINGS=6
CORNER_RADIUS=4
BORDER_WIDTH=0

# Section backgrounds (Linux bar style)
SECTION_BG=0xff1e1e1e

# Directories
ITEM_DIR="$HOME/.config/sketchybar/items"
PLUGIN_DIR="$HOME/.config/sketchybar/plugins"
