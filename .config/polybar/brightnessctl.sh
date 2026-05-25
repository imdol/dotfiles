#!/bin/bash

# Get current brightness percentage
BRIGHTNESS=$(brightnessctl -m -d intel_backlight | awk -F, '{print substr($4, 0, length($4)-1)}')
# Alternative if intel_backlight doesn't work:
# BRIGHTNESS=$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')

# Choose icon based on brightness level
if [ "$BRIGHTNESS" -lt 30 ]; then
    ICON=""
elif [ "$BRIGHTNESS" -lt 60 ]; then
    ICON=""
else
    ICON=""
fi

echo "$ICON $BRIGHTNESS%"
