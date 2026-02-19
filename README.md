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

<img width="722" height="343" alt="image" src="https://github.com/user-attachments/assets/ee22fa34-a104-458c-b064-c9f57c56714d" />

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
- Text preview with syntax highlighting
- Preview window automatically positioned next to tofi

<img width="2301" height="857" alt="image" src="https://github.com/user-attachments/assets/ab0acb83-21f2-4ad3-b530-fcfd37f43e7c" />

**Dependencies:**
- `tofi` (with `--stream-events` support - requires custom build from [tofi fork](https://github.com/martinstark/tofi/tree/feat/stdout))
- `cliphist`
- `wl-copy` (wl-clipboard)
- `imv` (image preview)
- `alacritty` (terminal for text preview)
- `micro` (text editor for preview)
- `jq` (JSON parsing)
- `swaymsg` (sway)

### tofi-hue

Interactive Philips Hue light controller using tofi.

- View all rooms and lights with on/off status and brightness
- Control individual lights (on/off, brightness presets)
- Control rooms (on/off, brightness presets, activate scenes)
- Global all-on / all-off

<img width="720" height="250" alt="image" src="https://github.com/user-attachments/assets/42ccda3f-d9cf-4c09-a857-96901b455b84" />

<img width="723" height="328" alt="image" src="https://github.com/user-attachments/assets/d9508744-d727-4619-86c0-039a77561342" />

**Dependencies:**
- `tofi`
- `openhue` (openhue-cli)
- `jq`
- `notify-send` (libnotify)

---

### tofi-mako

Notification history browser using tofi. Browse past notifications from mako and copy their content to clipboard.

- Lists notification history with app name, summary, and body
- Copies selected notification text to clipboard

<img width="586" height="248" alt="image" src="https://github.com/user-attachments/assets/e349c314-8627-4296-b059-40c18c44939d" />

**Dependencies:**
- `tofi`
- `busctl` (systemd)
- `jq`
- `wl-copy` (wl-clipboard)
- `notify-send` (libnotify)

---

### record-screen

Screen recorder using wf-recorder with NVENC hardware encoding.

<img width="641" height="398" alt="image" src="https://github.com/user-attachments/assets/18f47a4c-c931-4ef9-ba13-1779e1579f9f" />

- Record full screen or a selected region
- Saves to `~/video/rec/` with timestamped filenames
- Sends notification with file path when recording is saved

`record-screen-toggle` is a convenience wrapper that stops an active recording or starts a new one (defaults to region capture).

**Dependencies:**
- `wf-recorder`
- `slurp` (region selection)
- `notify-send` (libnotify)

## License

MIT
