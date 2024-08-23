#!/bin/bash

# Hide tmux status bar
tmux set-option status off

# Send the nvim command to the current tmux pane
tmux send-keys "nvim $*" C-m

# Wait for nvim to finish
wait

# Restore tmux status bar after nvim exits
tmux set-option status on

