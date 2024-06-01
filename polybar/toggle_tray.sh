#!/usr/bin/env bash
CACHE_DIR="$HOME/.cache/polybar-scripts"
mkdir -p "$CACHE_DIR"

# If the lock file exists, the tray is currently hidden
LOCK_FILE="tray_toggle.lock"

SLEEP_PID=0

show_tray() {
  polybar-msg action tray module_show &>/dev/null
  echo ""
}

hide_tray() {
  polybar-msg action tray module_hide &>/dev/null
  echo ">"
}

handle_click() {
  if [ -f "$CACHE_DIR/$LOCK_FILE" ]; then
    show_tray
    rm -f "$CACHE_DIR/$LOCK_FILE"
  else
    hide_tray
    touch "$CACHE_DIR/$LOCK_FILE"
  fi
}
