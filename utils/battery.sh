#!/bin/bash

PERCENT="??%"
ICON="󰂑"

POWER_SUPPLY=$(find /sys/class/power_supply/ -name 'BAT*' | head -n 1)

if [ -n "$POWER_SUPPLY" ] && [ -r "$POWER_SUPPLY/capacity" ]; then
    CAPACITY=$(cat "$POWER_SUPPLY/capacity")
    STATUS=$(cat "$POWER_SUPPLY/status")

    PERCENT="${CAPACITY}%"

    if [ "$STATUS" = "Charging" ]; then
        ICON="󰂄"
    elif [ "$STATUS" = "Full" ]; then
	ICON="󰚥"
    elif [ "$STATUS" = "Not charging" ]; then
	ICON="󱈑"
    else
	if [ "$CAPACITY" -ge 90 ]; then
	    ICON="󰁹"
        elif [ "$CAPACITY" -ge 80 ]; then
            ICON="󰂁"
	elif [ "$CAPACITY" -ge 70 ]; then
            ICON="󰂀"
	elif [ "$CAPACITY" -ge 60 ]; then
            ICON="󰁿"
	elif [ "$CAPACITY" -ge 50 ]; then
            ICON="󰁾"
	elif [ "$CAPACITY" -ge 40 ]; then
            ICON="󰁽"
	elif [ "$CAPACITY" -ge 30 ]; then
            ICON="󰁼"
	elif [ "$CAPACITY" -ge 20 ]; then
            ICON="󰁻"
	elif [ "$CAPACITY" -ge 10 ]; then
            ICON="󰁺"
	else
	    ICON="󰂎"
	fi
    fi
fi

case "$1" in
    --status)
	echo "$PERCENT"
        echo "$ICON" >&2
        ;;
    --icon)
        echo "$ICON"
        ;;
    *)
        echo "$PERCENT"
        ;;
esac

