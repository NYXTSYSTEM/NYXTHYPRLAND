#!/bin/bash
# apply pywal colors to openrgb
# it brings colors from /.cache/wal/colors
# color_index: 0-15 (default: 1)

WAL_COLORS="$HOME/.cache/wal/colors"
COLOR_INDEX="${1:-1}"

# ── dependency check ──────────────────────────────────────────
if ! command -v openrgb &>/dev/null; then
    echo "Error: openrgb not found" >&2
    exit 1
fi

if [[ ! -f "$WAL_COLORS" ]]; then
    echo "Error: pywal colors not found at $WAL_COLORS" >&2
    echo "Run 'wal -i <wallpaper>' first" >&2
    exit 1
fi

# ── read color from pywal ─────────────────────────────────────
mapfile -t COLORS < "$WAL_COLORS"

if [[ $COLOR_INDEX -lt 0 || $COLOR_INDEX -ge ${#COLORS[@]} ]]; then
    echo "Error: color_index must be 0–$((${#COLORS[@]} - 1))" >&2
    exit 1
fi

HEX="${COLORS[$COLOR_INDEX]#\#}"   # strip leading #
HEX="${HEX^^}"                     # uppercase

# ── check OpenRGB server ──────────────────────────────────────
if ! openrgb --list-devices &>/dev/null; then
    echo "Error: cannot connect to OpenRGB server" >&2
    echo "Start it with: openrgb --server &" >&2
    exit 1
fi

# ── apply to all devices ──────────────────────────────────────
DEVICE_COUNT=$(openrgb --list-devices 2>/dev/null | grep -c "^[0-9]\+:")

if [[ $DEVICE_COUNT -eq 0 ]]; then
    echo "No RGB devices found" >&2
    exit 1
fi

echo "Applying color #$HEX (index $COLOR_INDEX) to $DEVICE_COUNT device(s)..."

for (( i=0; i<DEVICE_COUNT; i++ )); do
    openrgb --device "$i" --color "$HEX" --mode static
done

echo "Done."
