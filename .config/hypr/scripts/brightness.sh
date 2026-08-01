#!/bin/bash

DEVICE=$(brightnessctl -l | grep -oP "Device '\K[^']+" | grep -v '^nvidia_0$' | head -n1)

if [ -z "$DEVICE" ]; then
    brightnessctl s "$1"
else
    brightnessctl -d "$DEVICE" s "$1"
fi
EOF
