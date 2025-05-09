# A keyboard-first hyprland config for nerds

This config sets up a fast, keyboard-driven, tiling desktop using [Hyprland](https://hyprland.org/), with the [Nord color scheme](https://www.nordtheme.com/) and a clean, simple, modern look.

[![Hyprland Nord desktop](hyprnord.png)](hyprnord.png)

It’s built for speed and organization: you control windows and workspaces almost entirely with the keyboard, using Vim-style HJKL keys for navigation and swapping.

- **Submaps:** Press `Super + <Letter>` (A/I/R/S) to enter modal keybinding layers for quick access to apps, info scripts, Rofi functions, and 26 "magic" scratchpads.
- **Dual monitors:** Supports a laptop screen (`eDP-1`) and external (`HDMI-A-1`), with 22 workspaces (1-22, mapped to 0-9 and F1-F12) that adjust as monitors are connected/disconnected.
- **Clipboard & power:** Clipboard history via [cliphist](https://github.com/sentriz/cliphist), power management and auto-lock with `hypridle` and `hyprlock`.
- **Scratchpads:** Uses [pyperland](https://github.com/hyprland-community/pyprland) for preset scratchpads, and hyprland magic desktop feature for scratchpads on the fly.

Best for (neo)vim users, developers, sysadmins, and anyone who lives in terminals, editors, and browsers. Not ideal for mouse-first users or Linux beginners.

**To personalize:**

1. **Keybindings:** Check all bindings, especially in submaps (`submap-a/i/r/s.conf`). Change anything that conflicts with your habits. The default `notify-send` bindings are placeholders.
2. **Apps:** Set your preferred `$terminal`, `$webBrowser`, `$fileManager` in `envvar.conf`. Update app launch bindings in `submap-a.conf` and `pyprland.toml`.
3. **Scripts:** Many scripts (like `notes-dmenu.sh`, `weather.sh`) are custom. Most are [here](https://github.com/isingasimplesong/duct-tape/). Replace or edit as needed.
4. **Appearance:** Change colors in `colors.conf`, tweak fonts, gaps, borders, and rounding in `look.conf` and `envvar.conf`. Adjust Rofi and Waybar themes ([Waybar config](https://github.com/isingasimplesong/dotfiles/tree/main/waybar), [Rofi config](https://github.com/isingasimplesong/dotfiles/tree/main/rofi)). Edit `hyprlock.conf` for lock screen style.
5. **Input:** Set keyboard layout and options (like `caps:swapescape`) in `inputs.conf`. Adjust touchpad settings.

## Dependencies

For the full _desktop_ experience, you need these installed and in your `$PATH`:

### Hyprland & system tools

- [`hyprland`](https://hyprland.org/)
- `hyprctl`
- `hyprlock`
- `hypridle`
- `hyprpicker`
- [`pyprland`](https://github.com/hyprland-community/pyprland)
- [`waybar`](https://github.com/Alexays/Waybar)
- `waypaper`
- `rofi` (I use [rofi-wayland fork](https://github.com/in0ni/rofi-wayland) with [adi1090x rofi applets](https://github.com/adi1090x/rofi))
- `clipboard-wl`
- [`cliphist`](https://github.com/sentriz/cliphist)
- `nm-applet`
- [`udiskie`](https://pypi.org/project/udiskie/)
- `notify-send`
- `brightnessctl`
- `pamixer`
- `playerctl`
- [`grim`](https://gitlab.freedesktop.org/emersion/grim)
- [`satty`](https://github.com/gabm/Satty) (see [satty config](../satty/))
- `xrdb`
- `dbus-update-activation-environment`

### Custom scripts

Used for _desktop_ features (others are external, see [duct-tape repo](https://github.com/isingasimplesong/duct-tape)):

- `~/.local/bin/waybar-toggle-tray.sh` (toggle tray in waybar)
- `~/.local/bin/hypr-toggle-layouts.sh` (toggle layouts)

## Keybinding Cheatsheet

**Modifier Key:**

- `$mainMod`: SUPER (Windows/Command key)

### Application Launchers & Basics

- `$mainMod + return`: Terminal (`$terminal`)
- `$mainMod + space`: Application menu (`$menu`)
- `$mainMod + N`: Notes (`~/.local/bin/notes-dmenu.sh`)

### System & Session Control

- `$mainMod + M`: Toggle hypridle (`~/.local/bin/keepawake.sh -t`)
- `$mainMod + SHIFT + M`: Power menu (`$powerMenu`)
- `Lid Switch Close`: Lock screen and suspend (`$switchLock`)

### Waybar Control

- `$mainMod + B`: Toggle waybar visibility
- `$mainMod + SHIFT + B`: Reload waybar config
- `$mainMod + T`: Toggle tray visibility (`~/.local/bin/waybar-toggle-tray.sh`)

### Scratchpads (Pyprland)

- `$mainMod + W`: Toggle Terminal
- `$mainMod + E`: Toggle Yazi
- `$mainMod + O`: Toggle Bitwarden

### Screenshots & Utilities

- `$mainMod + P`: Screenshot (modify)
- `$mainMod + SHIFT + P`: Screenshot (modify area)
- `$mainMod + SHIFT + CTRL + P`: Screenshot (plain)
- `$mainMod + ALT + C`: Color picker (`hyprpicker -aln`)

### Hardware Keys (Volume / Media / Brightness)

- `XF86AudioRaiseVolume`: Volume up
- `XF86AudioLowerVolume`: Volume down
- `XF86AudioMicMute`: Mute mic
- `XF86AudioMute`: Mute output
- `XF86AudioPlay/Pause`: Play/Pause
- `XF86AudioNext/Prev`: Next/Previous track
- `XF86MonBrightnessUp/Down`: Screen brightness

### Window Management

- `$mainMod + Q`: Close active window
- `$mainMod + ALT + F`: Toggle floating state
- `$mainMod + F`: Toggle fullscreen
- `$mainMod + C`: Center active floating window
- `$mainMod + ALT + P`: Pin active floating window

#### Focus control

- `$mainMod + H/J/K/L`: Focus left/down/up/right

#### Window swapping

- `$mainMod + SHIFT + H/J/K/L`: Swap window left/down/up/right

#### Resizing windows

- `$mainMod + ←/→/↑/↓`: Resize window (width/height)

#### Moving floating windows

- `$mainMod + ALT + ←/→/↑/↓`: Move floating window

#### Mouse actions

- `$mainMod + Mouse Button 1 Drag`: Move window
- `$mainMod + Mouse Button 3 Drag`: Resize window

### Layout Management

- `$mainMod + G`: Toggle layouts (`~/.local/bin/hypr-toggle-layouts.sh`)
- `$mainMod + SHIFT + G`: Cycle master orientation
- `$mainMod + TAB`: Roll next window into master position
- `$mainMod + BACKSPACE`: Roll previous window into master position
- `$mainMod + SHIFT + D`: Toggle pseudo tiling (dwindle layout)

### Workspace Management

- `$mainMod + [0-9]` / `F1-F12`: Switch to workspace 1-22
- `$mainMod + SHIFT + [0-9]` / `F1-F12`: Move active window to workspace 1-22
- `$mainMod + SHIFT + CTRL + [0-9]` / `F1-F12`: Move active window silently to workspace 1-22

### Submaps

- See `modules/submap-*.conf` for details on submap bindings (A/I/R/S/Z)
