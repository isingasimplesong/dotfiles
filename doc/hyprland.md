# Hyprland Configuration

Wayland compositor with keyboard-centric workflow, Nord theme, and modular configuration.

## Structure

```
hypr/
├── hyprland.conf          # Main config (sources modules)
├── hypridle.conf          # Idle management
├── hyprlock.conf          # Lock screen
├── pyprland.toml          # Scratchpads & magic desktops
└── modules/
    ├── autostart.conf     # Autostart applications
    ├── bindings.conf      # Keybindings
    ├── colors.conf        # Nord color scheme
    ├── envvar.conf        # Environment variables
    ├── inputs.conf        # Input devices
    ├── look.conf          # Appearance settings
    ├── monitors.conf      # Monitor configuration
    ├── rules.conf         # Window rules
    └── submap-*.conf      # Modal keybinding layers
```

## Keybindings

Modifier: `Super` (Windows key)

### Basics

| Binding | Action |
|---------|--------|
| `Super + Return` | Terminal |
| `Super + Shift + Return` | Sesh session picker |
| `Super + Space` | Application launcher |
| `Super + Q` | Close window |
| `Super + F` | Toggle floating |
| `Super + Alt + F` | Fullscreen |

### Scratchpads (Pyprland)

| Binding | Action |
|---------|--------|
| `Super + W` | Terminal scratchpad |
| `Super + E` | File manager scratchpad |
| `Super + O` | Password manager scratchpad |

### Screenshots

| Binding | Action |
|---------|--------|
| `Super + P` | Annotate screenshot |
| `Super + Ctrl + P` | Legacy annotate |
| `Super + Shift + P` | Area screenshot |
| `Super + Shift + Ctrl + P` | Plain screenshot |

### Window Navigation (vim-style)

| Binding | Action |
|---------|--------|
| `Super + H/J/K/L` | Move focus left/down/up/right |
| `Super + Shift + H/J/K/L` | Swap window left/down/up/right |

### Workspaces

- **1-10**: `Super + 0-9`
- **11-22**: `Super + F1-F12`
- **Move window**: `Super + Shift + [0-9/F1-F12]`
- **Move silent**: `Super + Shift + Ctrl + [0-9/F1-F12]`

### Submaps (Modal Layers)

| Trigger | Purpose |
|---------|---------|
| `Super + A` | Application launchers |
| `Super + I` | System info |
| `Super + R` | Rofi menus |
| `Super + S` | Scratchpad management |

## Dependencies

```bash
# Core
hyprland wayland

# Panel & notifications
waybar dunst

# Launchers & menus
rofi-wayland

# Screenshots
grim satty hyprpicker

# Scratchpads
pyprland

# Power & lock
hypridle hyprlock

# Audio & brightness
pamixer playerctl brightnessctl

# Terminal & session management
kitty sesh tmux fzf
```

## Installation

```bash
ln -sf ~/dotfiles/hypr ~/.config/hypr
```

Adjust `modules/monitors.conf` for your display setup.

## Files Reference

- `hyprland.conf:1-10`: Module sourcing structure
- `modules/bindings.conf:1-196`: All keybindings
- `modules/colors.conf`: Nord color definitions
- `pyprland.toml`: Scratchpad configuration
