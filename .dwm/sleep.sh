#!/bin/bash

while true; do
    currentHour=$(date +"%H")
    if [ $currentHour -ge 22 ]; then
        sudo poweroff
    fi
    sleep 300  # Check every 5 minutes (300 seconds)
done
