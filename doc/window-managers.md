# Window Managers

## Hyprland (Primary)

**Location:** `hypr/`

Keyboard-first tiling Wayland compositor with Nord theme. See [hypr/README.md](../hypr/README.md) for complete documentation.

### Key Features

- Modal keybinding submaps (Super+A/I/R/S)
- 22 workspaces mapped to 0-9, F1-F12
- Dual monitor support (laptop + external)
- Scratchpads via pyprland + magic desktops
- Clipboard history (cliphist)
- Auto-lock (hypridle/hyprlock)

### Configuration Structure

```
hypr/
├── hyprland.conf           # Main config, imports modules
├── modules/
│   ├── autostart.conf      # Startup applications
│   ├── bindings.conf       # Core keybindings
│   ├── colors.conf         # Nord color scheme
│   ├── envvar.conf         # Environment variables
│   ├── inputs.conf         # Keyboard/touchpad settings
│   ├── look.conf           # Appearance (gaps, borders, etc.)
│   ├── monitors.conf       # Display configuration
│   ├── rules.conf          # Window rules
│   ├── submap-*.conf       # Modal keybinding layers
├── hypridle.conf           # Idle/lock configuration
├── hyprlock.conf           # Lock screen appearance
└── pyprland.toml           # Scratchpad definitions
```

### Customization

Edit `modules/envvar.conf` to set preferred terminal, browser, file manager.

Modify `modules/colors.conf` for different color scheme.

Adjust `modules/bindings.conf` and `modules/submap-*.conf` for keybindings.

## Qtile

**Location:** `qtile/`

Python-based X11/Wayland tiling window manager. Modular configuration split across files.

### Configuration Structure

```
qtile/
├── config.py              # Main config, imports modules
├── colors.py              # Color definitions
├── bar.py                 # Status bar configuration
├── keys.py                # Keybindings
├── layouts.py             # Layout definitions
├── groups.py              # Workspace groups
├── scratchpad.py          # Scratchpad configuration
├── floating_layout.py     # Floating window rules
├── mouse.py               # Mouse bindings
├── autostart.sh           # Startup script (runs once)
└── autorestart.sh         # Restart script (runs on reload)
```

### Key Features

- Modular Python configuration
- Custom bar with widgets
- Scratchpad support
- Startup/restart hooks

### Keybindings

Check `keys.py` for full list. Default mod key is Super.

## bspwm

**Location:** `bspwm/`

Binary space partitioning window manager for X11. Minimal configuration.

### Configuration

```
bspwm/
└── bspwmrc               # Main configuration script
```

Keybindings defined in `sxhkd/sxhkdrc_bspwm` and `sxhkd/sxhkdrc_common`.

### Usage

```bash
ln -sf ~/dotfiles/bspwm ~/.config/bspwm
ln -sf ~/dotfiles/sxhkd ~/.config/sxhkd
chmod +x ~/.config/bspwm/bspwmrc
```

## Shared Components

### Rofi (Application Launcher)

**Location:** `rofi/`

Extensive rofi configuration with multiple launcher and powermenu styles.

```
rofi/
├── config.rasi            # Main rofi config
├── colors/                # Color schemes (nord, catppuccin, etc.)
├── launchers/             # Application launcher styles (type-1 to type-7)
├── powermenu/             # Power menu styles (type-1 to type-6)
├── applets/               # Utility applets
└── scripts/               # Launch scripts
```

Usage:
```bash
# Launch application menu
rofi -show drun

# Use custom launcher
~/dotfiles/rofi/scripts/launcher_t1

# Power menu
~/dotfiles/rofi/scripts/powermenu_t1
```

### Waybar (Status Bar)

**Location:** `waybar/`

Status bar for Wayland compositors (Hyprland, Sway).

```
waybar/
├── config.jsonc           # Bar modules and layout
└── style.css              # Styling (Nord theme)
```

Modules: workspaces, window title, system tray, network, pulseaudio, battery, clock.

Toggle visibility: `Super+B` (in Hyprland)

### Dunst (Notifications)

**Location:** `dunst/`

Notification daemon configuration with Nord theme.

```
dunst/
├── dunstrc                # Configuration
└── dunstrc.gz             # Compressed backup
```
