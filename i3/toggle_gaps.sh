#!/bin/bash

# Get the current inner gap size globally
current_gap=$(i3-msg -t get_tree | jq '.nodes[].nodes[].gaps.inner' | head -1)

# Toggle between 0 (no gaps) and 10 (desired global gap size)
if [ "$current_gap" -eq 0 ]; then
    i3-msg "gaps inner all set 10; gaps outer all set 10"
else
    i3-msg "gaps inner all set 0; gaps outer all set 0"
fi

