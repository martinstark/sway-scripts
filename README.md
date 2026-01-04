# Scripts

A collection of utility scripts for Sway/Wayland desktops.

## Installation

```sh
./install.sh
```

Copies all scripts from `src/` to `~/.local/bin/`.

## Scripts

### tofi-bluetooth

Interactive Bluetooth device manager using tofi.

**Features:**
- Power on/off toggle
- Device scanning
- Connect/disconnect paired devices
- Pair new devices
- Remove paired devices
- Shows device type icons and connection status

**Dependencies:**
- `tofi`
- `bluetoothctl` (bluez)
- `notify-send` (libnotify)

---

### tofi-cliphist

Simple clipboard history selector.

**Dependencies:**
- `tofi`
- `cliphist`
- `wl-copy` (wl-clipboard)

---

### tofi-cliphist-preview

Clipboard history selector with live preview support. Shows image previews for copied images and syntax-highlighted text previews for code/text entries.

**Features:**
- Image preview (PNG, JPG, WebP, GIF)
- Syntax highlighting for code (Python, Rust, Go, JavaScript, C, Bash, JSON, HTML)
- Markdown rendering with glow
- Preview window automatically positioned next to tofi

**Dependencies:**
- `tofi` (with `--stream-events` support - requires custom build from `~/dev/tofi`)
- `cliphist`
- `wl-copy` (wl-clipboard)
- `imv` (image preview)
- `alacritty` (terminal for text preview)
- `bat` (syntax highlighting)
- `glow` (markdown rendering)
- `jq` (JSON parsing)
- `swaymsg` (sway)

## License

MIT
