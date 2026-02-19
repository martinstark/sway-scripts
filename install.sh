#!/bin/bash
# Install scripts to ~/.local/bin

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/src"
INSTALL_DIR="$HOME/.local/bin"

mkdir -p "$INSTALL_DIR"

# List of scripts to install
scripts=(
    "tofi-bluetooth"
    "tofi-cliphist"
    "tofi-cliphist-preview"
    "tofi-mako"
    "record-screen"
    "record-screen-toggle"
    "tofi-hue"
)

for script in "${scripts[@]}"; do
    if [[ -f "$SCRIPT_DIR/$script" ]]; then
        cp "$SCRIPT_DIR/$script" "$INSTALL_DIR/$script"
        chmod +x "$INSTALL_DIR/$script"
        echo "Installed: $script"
    else
        echo "Warning: $script not found"
    fi
done

# Install desktop files
DESKTOP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/desktop"
DESKTOP_INSTALL_DIR="$HOME/.local/share/applications"

mkdir -p "$DESKTOP_INSTALL_DIR"

for desktop in "$DESKTOP_DIR"/*.desktop; do
    if [[ -f "$desktop" ]]; then
        name=$(basename "$desktop")
        cp "$desktop" "$DESKTOP_INSTALL_DIR/$name"
        echo "Installed: $name"
    fi
done

echo "Done. Scripts installed to $INSTALL_DIR, desktop files to $DESKTOP_INSTALL_DIR"
