#! /bin/bash

THRESHOLD=10

for bat in /sys/class/power_supply/BAT*; do
	level=$(< $bat/capacity)
	if [ $level -le $THRESHOLD ] && grep -i -q discharging ${bat}/status; then
		notify-send -u critical "Battery level is $(printf '%2d%%' $level). Please plug in the adapter."
	else
		exit 0
	fi
done
