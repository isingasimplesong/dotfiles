# Neovim Configuration

Modular Lua-based Neovim setup with LSP, completion, fuzzy finding, and Git integration.

## Structure

```
nvim/
├── init.lua               # Entry point
└── lua/
    ├── config/
    │   ├── options.lua    # Vim options
    │   ├── keymaps.lua    # Keybindings
    │   ├── lazy.lua       # Plugin manager setup
    │   └── autocommands.lua
    └── plugins/           # Plugin configurations (lazy.nvim)
```

## Configuration Overview

**Leader keys**:
- Leader: `Space`
- Local leader: `\`

**Nerd fonts**: Enabled for icons and glyphs

## Core Modules

Loaded from `init.lua:5-8`:

1. `config.options` - Editor settings (tabs, line numbers, search, etc.)
2. `config.keymaps` - Custom keybindings
3. `config.lazy` - Plugin manager initialization
4. `config.autocommands` - Auto-commands and hooks

## Plugin Management

Uses **lazy.nvim** for plugin management. Plugins are defined in `lua/plugins/` directory.

### Key Plugin Categories

- **LSP**: Language server protocol integration
- **Completion**: Autocompletion engine
- **Telescope**: Fuzzy finder for files, buffers, grep
- **Treesitter**: Syntax highlighting and parsing
- **Git**: Fugitive, gitsigns integration
- **UI**: Status line, file explorer, color schemes

## Custom Telescope Pickers

Located in `lua/user/`:

- `telescope_bin.lua` - Search executables in PATH
- `telescope_dot.lua` - Dotfiles picker
- `telescope_nvim.lua` - Neovim config files picker
- `telescope_crawler.lua` - Custom file crawler

## Dependencies

```bash
# Neovim
nvim >= 0.9

# Language servers (examples)
lua-language-server
pyright
gopls
bash-language-server

# Tools
ripgrep  # For telescope grep
fd       # For telescope file finding
git
```

## Installation

```bash
ln -sf ~/dotfiles/nvim ~/.config/nvim
```

First launch will trigger lazy.nvim plugin installation.

## Key Patterns

- **Space-based navigation**: Leader key workflows
- **Modular plugins**: Each plugin in separate file under `lua/plugins/`
- **Lazy loading**: Plugins load on-demand for fast startup
- **LSP-first**: Language intelligence via native LSP client

## Files Reference

- `init.lua:1-10`: Main initialization sequence
- `lua/config/`: Core configuration modules
- `lua/plugins/`: Individual plugin configurations
- `lua/user/`: Custom utilities and telescope pickers
