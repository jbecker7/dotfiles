#!/usr/bin/env bash

# Date display - format: year年 month月 day日 (e.g., 2024年12月25日)
YEAR=$(date '+%Y')
MONTH=$(date '+%m')
DAY=$(date '+%d')
# Remove leading zeros from month and day
MONTH=$((10#$MONTH))
DAY=$((10#$DAY))
LABEL="${YEAR}年${MONTH}月${DAY}日"
sketchybar --set "$NAME" label="$LABEL"
