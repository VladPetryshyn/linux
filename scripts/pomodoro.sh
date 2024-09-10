#!/bin/sh

if zenity --question --text "Do you want to start pomodoro?"; then
	# POMODORO_TIME =  zenity --scale --min-value=15 --max-value=60 --value 25
	pomodoro_time = 1
	sleep $pomodoro_time'm'
fi
