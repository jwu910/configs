#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar top -c ~/configs/statusbar/polybar/polybar.conf &
polybar bottom -c ~/configs/statusbar/polybar/polybar.conf &


