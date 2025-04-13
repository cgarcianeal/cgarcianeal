#!/bin/bash

DEVICE_ID=10  # Replace with your actual device ID

if xinput list-props $DEVICE_ID | grep "Device Enabled (.*):.*1" > /dev/null
then
    xinput disable $DEVICE_ID
    echo "Keyboard disabled"
else
    xinput enable $DEVICE_ID
    echo "Keyboard enabled"
fi
