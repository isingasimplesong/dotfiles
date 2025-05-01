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
- `rofi` (I use [rofi-wayland fork](https://github.com/in0ni/rofi-wayland))
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

### Application Launchers & Basic Actions

- `$mainMod + return`: Terminal (`$terminal`)
- `$mainMod + space`: Application menu (`~/.config/rofi/launchers/type-2/launcher.sh`)
- `$mainMod + N`: Notes (`~/.local/bin/notes-dmenu.sh`)

### System & Session Control

- `$mainMod + M` : Toogle hypridle (`~/.local/bin/keepawake.sh -t`)
- `$mainMod + SHIFT + M`: Power menu (`~/.config/rofi/powermenu/type-3/powermenu.sh`)
- `Lid Switch Close`: Lock screen and suspend (`hyprlock --immediate-render & systemctl suspend`)

### Waybar Control

- `$mainMod + B`: Toggle waybar visibility
- `$mainMod + SHIFT + B`: Reload waybar config
- `$mainMod + T`: Toggle tray visibility (`~/.local/bin/waybar-toggle-tray.sh`)

### Scratchpads (Pyprland)

- `$mainMod + W`: Toggle Terminal
- `$mainMod + E`: Toggle File Manager
- `$mainMod + O`: Toggle Bitwarden

### Screenshots & Utilities

- `$mainMod + P`: Screenshot active monitor & edit (`grim -o "$active_monitor" - | satty -f -`)
- `$mainMod + SHIFT + P`: Screenshot full desktop & Save (`grim $HOME/Images/Screenshots/screenshot-...png`)
- `$mainMod + ALT + P`: Launch color picker (`hyprpicker -aln`)

### Hardware Keys (Volume / Media / Brightness)

Should work as expected with `pamixer`, `playerctl` & `brightnessctl`

### Window management

#### Closing windows

- `$mainMod + Q`: Close Active Window (graceful) (`killactive`)

#### Window state & position

- `$mainMod + F`: Toggle Floating State
- `$mainMod + ALT + F11`: Toggle fullscreen (monocle layout)
- `$mainMod + C`: Center active floating window
- `$mainMod + ALT + p`: Pin active floating window (toggle)

#### Focus control

- `$mainMod + H`: Focus left
- `$mainMod + L`: Focus right
- `$mainMod + K`: Focus up
- `$mainMod + J`: Focus down

#### Window swapping

- `$mainMod + SHIFT + H`: Swap active window left
- `$mainMod + SHIFT + L`: Swap active window right
- `$mainMod + SHIFT + K`: Swap active window up
- `$mainMod + SHIFT + J`: Swap active window down

#### Resizing windows

- `$mainMod + Left Arrow`: Decrease width
- `$mainMod + Right Arrow`: Increase width
- `$mainMod + Up Arrow`: Decrease height
- `$mainMod + Down Arrow`: Increase height

#### Moving floating windows

- `$mainMod + ALT + Left Arrow`: Move left
- `$mainMod + ALT + Right Arrow`: Move right
- `$mainMod + ALT + Up Arrow`: Move up
- `$mainMod + ALT + Down Arrow`: Move down

#### Mouse actions

- `$mainMod + Mouse Button 1 Drag`: Move window
- `$mainMod + Mouse Button 3 Drag`: Resize window

### Layout management

- `$mainMod + G`: Toggle layouts (`~/.local/bin/hypr-toggle-layouts.sh`)
- `$mainMod + SHIFT + G`: Cycle master orientation
- `$mainMod + TAB`: Roll next window into master position
- `$mainMod + BACKSPACE`: Roll previous window into master position
- `$mainMod + SHIFT + D`: Toggle pseudo tiling (dwindle layout)

### Workspace management

#### Switching workspaces

- `$mainMod + [0-9] | [F1-F12]`: Switch to workspace 1-22

#### Moving windows to workspaces and follow focus

- `$mainMod + SHIFT + [0-9] | [F1-F12]`: Move active window to workspace 1-22

#### Moving windows to workspaces (silently - no focus change)

- `$mainMod + SHIFT + CTRL + [0-9] | [F1-F12]`: Move active window silently to workspace 1-22

### Submaps

#### Submap: [A]pplications (`$mainMod + A` to enter)

- `2`: Launch `enteauth`
- `A`: Launch `alacritty`
- `B`: Launch `brave`
- `C`: Launch `galculator`
- `D`: Launch `transmission-remote-gtk`
- `E`: Launch File Manager (`thunar`)
- `F`: Launch `$webBrowser` (facebook)
- `G`: Launch `ghostty`
- `N`: Launch Notes Script (`notes-dmenu.sh`)
- `T`: Launch `brave --tor`
- `U`: Unmount all removable disk
- `V`: Launch `$terminal -e vim`
- `W`: Launch `$webBrowser`
- `Y`: Launch `$terminal -e yazi`
- `Z`: Launch tor browser (`torBrowser-launcher %u`)
- `escape`: Exit submap

#### Submap: [I]nfo (`$mainMod + I` to enter)

- `A`: Show air quality (`~/.local/bin/iq-air.sh`)
- `B`: Show pfview (`~/.local/bin/pfview.sh`)
- `C`: Copy from clipboard history
- `D`: Delete from clipboard history
- `E`: Show CAD exchange rate (`~/.local/bin/cad.sh`)
- `M`: Show weather (`~/.local/bin/weather.sh`)
- `O`: Launch `$webBrowser` (ChatGPT URL)
- `P`: Launch `$webBrowser` (Claude.ai URL)
- `Q`: Launch `$webBrowser` (ai.2027a.net URL)
- `R`: Launch `$webBrowser` (Deepseek Chat URL)
- `S`: Web search via rofi (`~/.local/bin/web-search.sh`)
- `T`: Show date (`~/.local/bin/today.sh`)
- `Z`: Show selected time zones (`~/.local/bin/zones-time.sh`)
- `escape`: Exit submap

#### Submap: [R]ofi (`$mainMod + R` to enter)

- `C`: Copy from clipboard history
- `D`: Delete from clipboard history
- `E`: Show rofi emoji selector
- `F`: Show rofi file browser
- `R`: Launch radio script (`~/.local/bin/radios.sh`)
- `S`: Show rofi SSH launcher
- `W`: Show rofi window switcher
- `escape`: Exit submap

#### Submap: [S]cratchpads (`$mainMod + S` to enter)

_(These use Hyprland's "special" named workspaces for quick scratchpads)_

- `[A-Z]`: Toggle special workspace `[A-Z]`
- `SHIFT + [A-Z]`: Move active window to special workspace `[A-Z]`
- `escape`: Exit submap
