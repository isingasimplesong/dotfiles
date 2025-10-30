# Documentation Index

Comprehensive documentation for dotfiles repository.

## Getting Started

1. **[Installation](installation.md)** - Start here for setup instructions
2. **[Main README](../README.md)** - Repository overview and quick start

## Component Documentation

### Desktop Environment

- **[Window Managers](window-managers.md)** - Hyprland, Qtile, bspwm
  - Hyprland modal keybindings and submaps
  - Qtile modular Python configuration
  - bspwm binary space partitioning
  - Shared components: Rofi, Waybar, Dunst

### Terminal & Shell

- **[Terminals](terminals.md)** - Kitty, Ghostty, Alacritty
  - Kitty primary configuration with Nord theme
  - GPU acceleration and feature comparison
  - Font and scrollback settings

- **[Shell](shell.md)** - Zsh and Bash
  - Zsh with vi mode, fzf, zoxide
  - Powerlevel10k prompt configuration
  - Custom functions and aliases
  - OS-specific plugin loading

- **[Multiplexers](multiplexers.md)** - tmux and Zellij
  - tmux with Ctrl+Space prefix
  - Vim-tmux navigation integration
  - Sesh session manager
  - Zellij modern alternative

### Development

- **[Editor](editor.md)** - Neovim
  - Lazy.nvim plugin management
  - LSP, Treesitter, Telescope
  - 33+ plugins configuration
  - Keybindings and customization

- **[Tools](tools.md)** - Git and development utilities
  - Git with diff-so-fancy
  - Rofi application launcher
  - Screenshot and annotation tools
  - Status bars and system monitors

### Utilities

- **[Templates](templates.md)** - Script templates
  - Bash strict mode template
  - Python script template
  - Best practices and examples

- **[Theming](theming.md)** - Color schemes
  - Nord theme application
  - Alternative themes
  - Per-component customization
  - Creating custom themes

## Quick Reference

### File Locations

```
~/dotfiles/
├── hypr/           → ~/.config/hypr/
├── kitty/          → ~/.config/kitty/
├── nvim/           → ~/.config/nvim/
├── qtile/          → ~/.config/qtile/
├── rofi/           → ~/.config/rofi/
├── tmux/           → ~/.config/tmux/
├── waybar/         → ~/.config/waybar/
├── zellij/         → ~/.config/zellij/
├── zsh/zshrc       → ~/.zshrc
├── gitconfig       → ~/.gitconfig
└── alacritty.toml  → ~/.config/alacritty/alacritty.toml
```

### Key Keybindings

**Hyprland:**
- `Super + Return`: Terminal
- `Super + Space`: Application menu
- `Super + A/I/R/S`: Enter submaps
- `Super + H/J/K/L`: Navigate windows

**tmux:**
- `Ctrl+Space`: Prefix
- `Prefix + -`: Split horizontal
- `Prefix + \`: Split vertical
- `Prefix + O`: Session switcher
- `Ctrl+H/J/K/L`: Navigate panes/vim

**Zsh:**
- `Alt+S`: Session switcher (sesh)
- `Ctrl+R`: History search (fzf)
- `Ctrl+T`: File finder (fzf)
- Vi mode enabled

### Common Commands

```bash
# Install configs
stow -t ~ zsh tmux nvim git

# Update plugins
nvim +Lazy sync +qa

# Reload configs
tmux source ~/.config/tmux/tmux.conf
hyprctl reload

# Session management
sesh connect
tmux attach
```

## Documentation Stats

- **Total files:** 9 documentation files + main README
- **Total lines:** ~2,165 lines of documentation
- **Coverage:** All major components documented
- **Style:** Technical, minimal, Unix-philosophy aligned

## Contributing to Docs

When adding new configurations:

1. Update relevant doc file in `doc/`
2. Add entry to main README.md
3. Update this index if adding new doc file
4. Keep style consistent: technical, no fluff
5. Include file paths and ready-to-use commands

## Additional Resources

- **Hyprland:** [hypr/README.md](../hypr/README.md) - Most comprehensive component doc
- **Zsh:** [zsh/README.md](../zsh/README.md) - Minimal overview
- **Nord Theme:** https://www.nordtheme.com/
- **Dotfiles Philosophy:** See main README.md

## Help

For issues or questions:

1. Check relevant documentation file
2. Review actual config files in repository
3. Consult upstream documentation for specific tools
4. Verify dependencies are installed

Configurations assume Linux competence. Not beginner tutorials.
