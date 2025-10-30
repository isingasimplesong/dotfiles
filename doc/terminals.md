# Terminal Emulators

## Kitty (Primary)

**Location:** `kitty/`

GPU-accelerated terminal with extensive features. Primary terminal emulator.

### Configuration

```
kitty/
├── kitty.conf                    # Main configuration
├── nord-theme.conf               # Nord color scheme
└── catppuccin-frappe-theme.conf  # Alternative theme
```

### Key Features

- JetBrainsMono Nerd Font, 13pt
- Underline cursor with trail effect
- 20,000 line scrollback
- Nvim as scrollback pager
- Copy on select
- Nord theme
- No audio bell
- Powerline tab bar style
- Vi mode keybindings
- Ctrl+Space prefix (disabled by default)

### Notable Settings

```
font_family      JetBrainsMono Nerd Font
font_size        13.0
cursor_shape     underline
cursor_trail     3
scrollback_lines 20000
scrollback_pager nvim '+MAn! +INPUT_LINE_NUMBER'
copy_on_select   yes
shell_integration no-cursor
```

### Keybindings

- `kitty_mod+l`: Disable ligatures
- `kitty_mod+k`: Enable ligatures

Default `kitty_mod` is `Ctrl+Shift`.

### Theme Switching

Edit `kitty.conf` to include different theme:

```
# Nord (default)
include nord-theme.conf

# Catppuccin Frappe
include catppuccin-frappe-theme.conf
```

Reload config: `Ctrl+Shift+F5`

## Ghostty

**Location:** `ghostty/config`

Fast, native terminal emulator. Minimal configuration.

### Configuration

Single file: `ghostty/config`

Check file for specific settings. Similar aesthetic to kitty with Nord theme.

## Alacritty

**Location:** `alacritty.toml`

OpenGL terminal emulator. Lightweight alternative.

### Configuration

Single TOML file at repository root: `alacritty.toml`

### Features

- Nord color scheme
- JetBrainsMono Nerd Font
- Minimal, performant

### Usage

```bash
ln -sf ~/dotfiles/alacritty.toml ~/.config/alacritty/alacritty.toml
```

## Common Configuration

All terminals configured with:

- **Font:** JetBrainsMono Nerd Font
- **Theme:** Nord (primary)
- **Font size:** 12-13pt
- **Ligatures:** Enabled
- **Scrollback:** 10,000-20,000 lines

## Choosing a Terminal

**Kitty:** Feature-rich, GPU-accelerated, extensive configuration. Best for power users.

**Ghostty:** Fast, native, minimal config. Good for performance-focused setups.

**Alacritty:** Lightweight, OpenGL-based. Good for minimal resource usage.

All three work seamlessly with tmux/zellij and nvim.
