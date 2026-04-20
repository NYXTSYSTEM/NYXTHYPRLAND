#!/bin/bash
set -eu

WALL="${1:-$(find ~/.config/wallpapers -type f | shuf -n 1)}"

awww img --transition-type grow --transition-pos 0.5,0.5 --transition-step 2 --transition-fps 60 "$WALL"

echo "Wallpaper set successfully"


if command -v wal >/dev/null 2>&1; then
    echo "applying pywal colors..."
    wal -i "$WALL"
    echo "pywal applied successfully"
    "$HOME/.config/mako/update-colors.sh" &
    "$HOME/.config/keyboard/set-color-keyboard.sh" &
else
    echo "pywal not installed, skipping"
fi
