# Qtile Configuration

Python-based tiling window manager with modular configuration structure.

**Status**: Legacy / not actively maintained. Functional starting point.

## Structure

```
qtile/
├── config.py          # Main entry point
├── autostart.sh       # Startup-once applications
├── autorestart.sh     # Every restart applications
├── bar.py             # Status bar & widgets
├── colors.py          # Color scheme
├── floating_layout.py # Floating window rules
├── groups.py          # Workspace definitions
├── keys.py            # Keybindings
├── layouts.py         # Tiling layouts
├── mouse.py           # Mouse bindings
└── scratchpad.py      # Dropdown terminals
```

## Architecture

From `config.py:1-32`:

```python
# Modular imports
from colors import colors
from bar import screens, widget_defaults
from keys import keys, mod
from layouts import layouts
from floating_layout import floating_layout
from scratchpad import scratchpads, scratchpad_keys
from groups import groups, group_keys
from mouse import mouse

# Hooks
@hook.subscribe.startup_once
def autostart():
    subprocess.Popen([os.path.expanduser("~/.config/qtile/autostart.sh")])

@hook.subscribe.startup
def autorestart():
    subprocess.Popen([os.path.expanduser("~/.config/qtile/autorestart.sh")])
```

## Core Settings

From `config.py:34-46`:

- **Follow mouse**: `False` - Focus follows clicks, not mouse movement
- **Cursor warp**: `False` - Cursor stays in place
- **Focus on activation**: `smart` - Intelligent window focus
- **Auto minimize**: `True`
- **WM name**: `"Millenium Falcon"` - Java UI compatibility hack

## Keybindings

Defined in `keys.py`:

- **Modifier key**: Stored in `mod` variable (typically `Super`)
- Extended with scratchpad and group keys in main config
- Vim-style navigation expected (based on typical Qtile patterns)

## Layouts

Managed in `layouts.py`:

- Multiple tiling layouts available
- Floating layout rules in separate module
- Per-group layout selection possible

## Workspaces (Groups)

Defined in `groups.py`:

- Named workspaces
- Group-specific keybindings generated dynamically
- Scratchpad groups for dropdown terminals

## Bar & Widgets

From `bar.py`:

- Custom widget configuration
- Screen-specific bars
- Shared widget defaults

## Dependencies

```bash
# Core
qtile
python

# Python dependencies
python-libqtile

# Utilities (typically)
alacritty / kitty  # Terminal
rofi               # Launcher
picom              # Compositor
nitrogen / feh     # Wallpaper
```

## Installation

```bash
ln -sf ~/dotfiles/qtile ~/.config/qtile

# Make autostart scripts executable
chmod +x ~/.config/qtile/autostart.sh
chmod +x ~/.config/qtile/autorestart.sh
```

Add to display manager or `.xinitrc`:

```bash
exec qtile start
```

## Customization

**To modify**:

1. `colors.py` - Change color scheme
2. `keys.py` - Adjust keybindings
3. `layouts.py` - Configure tiling layouts
4. `bar.py` - Customize status bar
5. `autostart.sh` - Set startup applications

## Files Reference

- `config.py:1-48`: Main configuration structure
- `config.py:19-28`: Autostart hooks
- `keys.py`: Keybinding definitions
- `layouts.py`: Window layout configuration
- `groups.py`: Workspace setup
- `bar.py`: Status bar configuration
