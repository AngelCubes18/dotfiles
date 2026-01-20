#!/bin/bash

# Get all workspace numbers, sorted
mapfile -t workspaces < <(i3-msg -t get_workspaces | jq -r '.[].num' | sort -n)

count=${#workspaces[@]}
current=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).num')

# If only one workspace exists → create workspace 2
if [ "$count" -eq 1 ]; then
    i3-msg workspace 2
    exit 0
fi

# If two or more → carousel between 1 and 2
if [ "$current" -eq 1 ]; then
    i3-msg workspace 2
else
    i3-msg workspace 1
fi
