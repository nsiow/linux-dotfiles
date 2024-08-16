#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Define configuration
CONFIG=~/.config/polybar/config.ini
LOG_DIR=/tmp/polybar

# Launch all bars
mkdir -p "${LOG_DIR}"
for MONITOR in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  for BAR in $(rg '\[bar/([a-zA-Z0-9_]+)\]' -or '$1' ~/.config/polybar/config.ini); do
    echo "---" | tee -a "${LOG_DIR}/${BAR}"
    echo "${MONITOR}/${BAR}" | tee -a "${LOG_DIR}/${BAR}"
    MONITOR="${MONITOR}" polybar --reload -c "${CONFIG}" "${BAR}" 2>&1 | tee -a "${LOG_DIR}/${BAR}" &
  done
done

echo "all bars launched"
