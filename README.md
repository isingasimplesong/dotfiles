# Dotfiles

Personal configuration files for Linux desktop environments and development tools.

## Overview

Text-centric, keyboard-driven setup optimized for terminal workflows. Nord theme throughout. Arch Linux primary target, Debian/Ubuntu compatible.

## Components

### Window Managers

- **[Hyprland](hypr/)** - Primary Wayland compositor. Keyboard-first, modal keybindings, dual monitor support. See [hypr/README.md](hypr/README.md)
- **[Qtile](qtile/)** - Python-based X11/Wayland tiling WM. Modular configuration
- **[bspwm](bspwm/)** - Binary space partitioning WM for X11

### Terminals

- **[Kitty](kitty/)** - GPU-accelerated, feature-rich. Primary terminal
- **[Ghostty](ghostty/)** - Fast, native terminal
- **[Alacritty](alacritty.toml)** - OpenGL-based, minimal

### Shells

- **[Zsh](zsh/)** - Primary shell. Vi mode, fzf, zoxide, powerlevel10k
- **[Bash](bash/)** - Fallback shell configuration

### Multiplexers

- **[tmux](tmux/)** - Primary multiplexer. Vim integration, sesh sessions
- **[Zellij](zellij/)** - Modern Rust-based alternative

### Editor

- **[Neovim](nvim/)** - Comprehensive config. LSP, Treesitter, Telescope, 33+ plugins

### Tools

- **[Git](gitconfig)** - Enhanced with diff-so-fancy, custom config, commit templates
- **[Rofi](rofi/)** - Application launcher with multiple themes
- **[Waybar](waybar/)** - Wayland status bar
- **[Starship](starship/)** - Cross-shell prompt (alternative to p10k)
- **[Sesh](sesh/)** - Session manager for tmux/zellij
- **[Satty](satty/)** - Screenshot annotation
- **[Bat](bat/)** - Syntax-highlighted cat
- **[Dunst](dunst/)** - Notification daemon
- **[Picom](picom/)** - X11 compositor
- **[Polybar](polybar/)** - X11 status bar

### Templates

- **[Bash](templates/bash.tpl)** - Strict mode bash script template
- **[Python](templates/python.tpl)** - Python script template with docstrings

## Quick Start

```bash
# Clone repository
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles

# Install with GNU Stow (recommended)
stow -t ~ zsh bash tmux nvim git

# Or symlink manually
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/nvim ~/.config/nvim

# For Hyprland desktop
ln -sf ~/dotfiles/hypr ~/.config/hypr
ln -sf ~/dotfiles/waybar ~/.config/waybar
ln -sf ~/dotfiles/kitty ~/.config/kitty
```

See [doc/installation.md](doc/installation.md) for detailed installation instructions.

## Documentation

- **[Installation](doc/installation.md)** - Setup instructions, dependencies, per-component installation
- **[Window Managers](doc/window-managers.md)** - Hyprland, Qtile, bspwm configuration and usage
- **[Terminals](doc/terminals.md)** - Kitty, Ghostty, Alacritty setup and features
- **[Shell](doc/shell.md)** - Zsh and bash configuration, aliases, functions
- **[Multiplexers](doc/multiplexers.md)** - tmux and zellij setup, keybindings, sesh integration
- **[Editor](doc/editor.md)** - Neovim configuration, plugins, LSP setup
- **[Tools](doc/tools.md)** - Git, rofi, waybar, and other development tools
- **[Templates](doc/templates.md)** - Script templates for bash and python
- **[Theming](doc/theming.md)** - Nord theme application, alternative themes, customization

## Philosophy

- **Keyboard-first:** Minimal mouse usage, vim-style navigation
- **Text-based:** Plain text configs, composable tools
- **Minimal:** No unnecessary features or visual clutter
- **Consistent:** Nord theme, unified keybindings, predictable behavior
- **Portable:** Works on Arch and Debian-based systems
- **Modular:** Components work independently, easy to adopt partially

## Key Features

- **Unified theme:** Nord color scheme across all applications
- **Vim integration:** Seamless navigation between vim, tmux, and terminal
- **Session management:** sesh for unified tmux/zellij/zoxide sessions
- **Modal keybindings:** Hyprland submaps for organized shortcuts
- **Smart shell:** zsh with autosuggestions, syntax highlighting, fzf, zoxide
- **Modern tooling:** LSP, Treesitter, fuzzy finding, git integration
- **Dual monitor:** Hyprland config supports laptop + external display

## Dependencies

### Core
- Linux (Arch or Debian-based)
- Git
- Neovim >= 0.9
- Zsh
- Tmux or Zellij

### Optional
- Hyprland (Wayland desktop)
- Qtile or bspwm (X11 desktop)
- fzf, ripgrep, fd (fuzzy finding)
- zoxide (smart cd)
- diff-so-fancy (git diffs)
- JetBrainsMono Nerd Font

See [doc/installation.md](doc/installation.md) for complete dependency lists.

## Structure

```
dotfiles/
├── doc/                    # Documentation
├── hypr/                   # Hyprland config (see hypr/README.md)
├── qtile/                  # Qtile config
├── bspwm/                  # bspwm config
├── kitty/                  # Kitty terminal config
├── ghostty/                # Ghostty terminal config
├── zsh/                    # Zsh shell config
├── bash/                   # Bash shell config
├── tmux/                   # tmux config
├── zellij/                 # Zellij config
├── nvim/                   # Neovim config
├── rofi/                   # Rofi launcher config
├── waybar/                 # Waybar status bar config
├── starship/               # Starship prompt configs
├── sesh/                   # Sesh session manager config
├── templates/              # Script templates
├── misc/                   # Miscellaneous configs and resources
├── gitconfig               # Git configuration
├── alacritty.toml          # Alacritty terminal config
└── README.md               # This file
```

## Customization

Configs designed for personal use but easily adaptable:

1. **User info:** Edit `gitconfig` for name/email
2. **Keybindings:** Modify `hypr/modules/bindings.conf`, `tmux/tmux.conf`, etc.
3. **Theme:** Change colors in `hypr/modules/colors.conf`, `waybar/style.css`, terminal configs
4. **Applications:** Set preferred terminal/browser in `hypr/modules/envvar.conf`
5. **Shell:** Edit `zsh/aliases` and `zsh/env` for custom aliases and variables

## License

Configuration files are personal and provided as-is. Use freely, modify as needed.

License templates available in `misc/` for projects.

## Notes

- Hyprland config is most comprehensive - see [hypr/README.md](hypr/README.md)
- Zsh is primary shell - bash config is minimal
- Kitty is primary terminal - others are alternatives
- tmux is primary multiplexer - zellij is alternative
- Nord is primary theme - alternatives available for some components

Configurations assume competence with Linux, terminals, and text editors. Not beginner-friendly.
