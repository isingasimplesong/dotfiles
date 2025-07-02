# Dotfiles

Personal configuration files for Linux desktop environments and development tools.

## Desktop Environments

### [Hyprland](hypr/) (Primary)

Modern Wayland compositor with keyboard-first workflow using Nord theme. Features:

- **Submaps**: Modal keybinding layers (Super + A/I/R/S/Z)
- **Dual monitor support**: 22 workspaces (1-22 mapped to 0-9, F1-F12)
- **Scratchpads**: Pyprland integration + magic desktops
- **Power management**: hypridle/hyprlock integration
- **Screenshot tools**: grim + satty workflow

See [hypr/README.md](hypr/README.md) for detailed setup and keybindings.

### [Qtile](qtile/) & [bspwm](bspwm/) (Legacy)

Python-based and minimal tiling window managers. No longer actively maintained but functional starting points.

## Development Tools

### [Neovim](nvim/)

Modular Lua configuration with:

- Plugin management via lazy.nvim
- LSP integration and autocompletion
- Telescope fuzzy finder
- Git integration (fugitive, gitsigns)
- Syntax highlighting (treesitter)

### [Terminal Setup](kitty/)

- **Kitty**: GPU-accelerated terminal with Nord/Catppuccin themes
- **Zsh**: Custom shell configuration with aliases and environment setup
- **Tmux**: Terminal multiplexer configuration
- **Starship**: Cross-shell prompt with multiple themes

### [Git Configuration](gitconfig)

Optimized Git setup with:

- Compression and performance tweaks
- Custom aliases and shortcuts
- Commit template and hooks
- Delta diff viewer integration

## Theming & UI

### [Rofi](rofi/)

Application launcher with multiple themes and applets:

- 7 launcher types with various styles
- Power menu, network manager, screenshot tools
- Nord, Catppuccin, Gruvbox, and other color schemes

### [Waybar](waybar/)

Status bar for Wayland with system monitoring and workspace indicators.

### Color Schemes

- **Primary**: Nord theme across all applications
- **Alternatives**: Catppuccin, Gruvbox, Tokyo Night configurations

## Other Tools

- **[Dunst](dunst/)**: Notification daemon
- **[Picom](picom/)**: X11 compositor for transparency/effects
- **[Polybar](polybar/)**: X11 status bar (for bspwm/qtile)
- **[Satty](satty/)**: Screenshot annotation tool
- **[Zellij](zellij/)**: Terminal workspace manager

## Installation

1. **Clone repository**:

   ```bash
   git clone https://github.com/yourusername/dotfiles ~/.config/dotfiles
   ```

2. **Symlink configurations**:

   ```bash
   # Example for specific configs
   ln -sf ~/.config/dotfiles/nvim ~/.config/nvim
   ln -sf ~/.config/dotfiles/kitty ~/.config/kitty
   ln -sf ~/.config/dotfiles/hypr ~/.config/hypr
   ```

3. **Install dependencies**: See individual README files for specific requirements.

## ⚠️ Notes

- **Use at your own risk**: These are personal configurations
- **Hyprland config** is actively maintained and most feature-complete
- **Legacy configs** (Qtile/bspwm) are functional but not updated
- **Custom scripts** may require additional setup (see [duct-tape repo](https://github.com/isingasimplesong/duct-tape))
