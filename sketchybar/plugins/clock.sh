#!/usr/bin/env bash

# Minimalist time display - 24 hour format
LABEL=$(date '+%H:%M')
sketchybar --set "$NAME" label="$LABEL"
