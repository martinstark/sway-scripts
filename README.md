# Scripts

A collection of utility scripts for Sway/Wayland desktops.

## Installation

Requires sway with tofi as launcher.

In sway config:

```sh
set $menu tofi-drun \
  --width 360 \
  --height 272 \
  | xargs -d '\n' swaymsg exec --
```

To install scripts as well as desktop entries, run:

```sh
chmod +x ./install.sh
./install.sh
```

Copies all scripts from `src/` to `~/.local/bin/`, and desktop files to `~/.local/share/applications`.

## Scripts

### tofi-bluetooth

Interactive Bluetooth device manager using tofi.

- Power on/off toggle
- Device scanning
- Connect/disconnect paired devices
- Pair new devices
- Remove paired devices
- Shows device type icons and connection status

<img width="320" height="315" alt="image" src="https://github.com/user-attachments/assets/3e53330c-89d3-41c3-aee2-6613e25ff480" />

<img width="320" height="850" alt="image" src="https://github.com/user-attachments/assets/07b35048-224d-436c-8d28-2f783832b0e9" />

**Dependencies:**
- `tofi`
- `bluetoothctl` (bluez)
- `notify-send` (libnotify)

---

### tofi-cliphist

Clipboard history selector. Selecting an item in clip history will put it in wl-copy.

<img width="320" height="318" alt="image" src="https://github.com/user-attachments/assets/2a60b19b-fb4e-4b34-afa8-59c78c88372e" />

<img width="320" height="849" alt="image" src="https://github.com/user-attachments/assets/57e216ed-130d-41a9-bca6-927445ec2937" />

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

<img width="2301" height="857" alt="image" src="https://github.com/user-attachments/assets/ab0acb83-21f2-4ad3-b530-fcfd37f43e7c" />

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
