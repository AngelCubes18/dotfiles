#!/bin/bash

# Handle clicks
case "$1" in
    up) brightnessctl set 5%+ ;;
    down) brightnessctl set 5%- ;;
esac

# Get current brightness
current=$(brightnessctl get)
max=$(brightnessctl max)
percent=$(( current * 100 / max ))

# Output for Polybar
echo "󰃟 $percent%"


