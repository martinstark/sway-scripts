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

echo "Done. Scripts installed to $INSTALL_DIR"
