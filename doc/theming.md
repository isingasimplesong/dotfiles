# Theming and Color Schemes

## Primary Theme: Nord

[Nord](https://www.nordtheme.com/) is the primary color scheme used throughout this configuration.

### Nord Palette

**Polar Night (Dark):**
- `#2e3440` - nord0 - Background
- `#3b4252` - nord1 - Lighter background
- `#434c5e` - nord2 - Selection background
- `#4c566a` - nord3 - Comments, borders

**Snow Storm (Light):**
- `#d8dee9` - nord4 - Foreground
- `#e5e9f0` - nord5 - Lighter foreground
- `#eceff4` - nord6 - Lightest foreground

**Frost (Blue/Cyan):**
- `#8fbcbb` - nord7 - Cyan
- `#88c0d0` - nord8 - Bright cyan
- `#81a1c1` - nord9 - Blue
- `#5e81ac` - nord10 - Bright blue

**Aurora (Accent Colors):**
- `#bf616a` - nord11 - Red
- `#d08770` - nord12 - Orange
- `#ebcb8b` - nord13 - Yellow
- `#a3be8c` - nord14 - Green
- `#b48ead` - nord15 - Purple

## Theme Application

### Hyprland

**Location:** `hypr/modules/colors.conf`

Nord colors applied to:
- Window borders
- Active/inactive window indicators
- Waybar (via `waybar/style.css`)
- Rofi (via `rofi/colors/nord.rasi`)
- Dunst notifications
- Hyprlock screen

### Qtile

**Location:** `qtile/colors.py`

Nord palette defined as Python dict:

```python
colors = {
    'bg': '#2e3440',
    'fg': '#d8dee9',
    'red': '#bf616a',
    'green': '#a3be8c',
    # ... etc
}
```

Applied to bar, widgets, borders.

### Terminals

**Kitty:** `kitty/nord-theme.conf`

**Ghostty:** Nord colors in `ghostty/config`

**Alacritty:** Nord palette in `alacritty.toml`

### Tmux

**Location:** `tmux/tmux.conf`

Nord colors for status bar and pane borders:

```tmux
set-option -g status-style bg=default,fg=#4c566a
set -g pane-border-style fg=#3b4252
set -g pane-active-border-style fg=#4c566a
```

### Neovim

Nord colorscheme via plugin (typically `shaunsingh/nord.nvim` or `arcticicestudio/nord-vim`).

Configured in `nvim/lua/plugins/colorscheme.lua`.

### Rofi

**Location:** `rofi/colors/nord.rasi`

Nord theme for rofi launcher and menus. Included in launcher configs.

### Waybar

**Location:** `waybar/style.css`

Nord colors for status bar modules, backgrounds, borders.

### Dunst

**Location:** `dunst/dunstrc`

Nord colors for notification urgency levels.

## Alternative Themes

### Catppuccin

Available in some configs:

- **Kitty:** `kitty/catppuccin-frappe-theme.conf`
- **Rofi:** `rofi/colors/catppuccin.rasi`

### Other Rofi Themes

```
rofi/colors/
├── adapta.rasi
├── arc.rasi
├── black.rasi
├── cyberpunk.rasi
├── dracula.rasi
├── everforest.rasi
├── gruvbox.rasi
├── lovelace.rasi
├── navy.rasi
├── onedark.rasi
├── paper.rasi
├── solarized.rasi
└── yousai.rasi
```

Switch by editing `rofi/launchers/type-X/launcher.rasi` to include different color file.

### Starship Themes

```
starship/
├── gruvbox-rainbow.toml
├── jetpack.toml
├── pastel-powerline.toml
├── pure.toml
└── tokyo-night.toml
```

Use by symlinking desired config to `~/.config/starship.toml`.

## Changing Themes

### System-Wide Theme Change

To change from Nord to another theme:

1. **Hyprland:**
   - Edit `hypr/modules/colors.conf`
   - Update color variables
   - Edit `waybar/style.css` for bar colors

2. **Terminals:**
   - Kitty: Edit `kitty.conf` to include different theme file
   - Alacritty: Edit color section in `alacritty.toml`
   - Ghostty: Edit `ghostty/config`

3. **Rofi:**
   - Edit launcher configs to include different `colors/*.rasi`

4. **Tmux:**
   - Edit `tmux/tmux.conf` status bar colors

5. **Neovim:**
   - Change colorscheme in `nvim/lua/plugins/colorscheme.lua`
   - Run `:colorscheme theme-name`

6. **Dunst:**
   - Edit `dunst/dunstrc` color values

### Per-Application Theme

Change theme for single application without affecting others.

Example - switch Kitty to Catppuccin:

```bash
# Edit kitty.conf
# Comment out: include nord-theme.conf
# Add: include catppuccin-frappe-theme.conf

# Reload kitty
# Ctrl+Shift+F5
```

## Creating Custom Themes

### Define Color Palette

Create color definition file with your palette:

```
# my-theme.conf
color_bg=#......
color_fg=#......
color_red=#......
# etc.
```

### Apply to Components

1. **Hyprland:** Create `hypr/modules/colors-mytheme.conf`
2. **Rofi:** Create `rofi/colors/mytheme.rasi`
3. **Terminals:** Add theme files to terminal configs
4. **Waybar:** Create `waybar/style-mytheme.css`

### Consistency

For cohesive look, maintain consistent:
- Background/foreground contrast
- Accent color usage (red for errors, green for success, etc.)
- Border/separator colors
- Transparency levels

## Nord Theme Resources

- **Official site:** https://www.nordtheme.com/
- **Ports:** https://github.com/nordtheme
- **Palette:** https://www.nordtheme.com/docs/colors-and-palettes

## Light vs Dark

Current configs use Nord dark theme. For light theme:

1. Swap background (nord0) with foreground (nord6)
2. Adjust contrast colors
3. Test readability in all applications

Nord light theme less common but possible with palette inversion.
