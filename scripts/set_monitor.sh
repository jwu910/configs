#!/bin/bash

# Work monitor
WORK_MONITOR=DP-1
LAPTOP=LVDS-1-1

function workConnected {
	! xrandr | grep "^DP-1 " | grep disconnected
}

if workConnected
then
	echo "Setting monitor to $WORK_MONITOR"
	xrandr --output LVDS-1-1 --off --output HDMI-1-1 --off --output VGA-1-1 --off --output DP-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal --output DP-1-1 --off --output DP-0 --off
	xrandr --dpi 96
else
    xrandr --output LVDS-1-1 --auto
    xrandr --dpi 96
fi

