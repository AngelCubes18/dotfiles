#!/bin/bash

# Increase PulseAudio volume by 5%, capped at 100%
pactl set-sink-volume @DEFAULT_SINK@ +5%
current=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po "\d+%" | head -1 | tr -d "%")
if [ "$current" -gt 100 ]; then
    pactl set-sink-volume @DEFAULT_SINK@ 100%
fi
