#!/bin/bash

DEVICE_NAME="UGTABLET UGEE S640 Pen"
MONITOR="DisplayPort-0"

# Get the device ID dynamically based on the name
DEVICE_ID=$(xinput list | grep "$DEVICE_NAME" | grep -o "id=[0-9]*" | cut -d'=' -f2)

if [ -n "$DEVICE_ID" ]; then
    # Disable the original key
    # xinput set-button-map $DEVICE_ID 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
   xinput map-to-output $DEVICE_ID $MONITOR
   echo "device found, $DEVICE_ID"
else
    echo "Device not found."
fi
