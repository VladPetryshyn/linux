#!/bin/bash

while true; do
    currentTime=$(date +%H:%M)
    if [['$currentTime > 22:00']]; then
        poweroff
    fi
    sleep 300  # Check every 5 minutes (300 seconds)
done
