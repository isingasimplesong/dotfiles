# Neovim Configuration

**Location:** `nvim/`

Comprehensive neovim configuration with extensive plugin setup.

## Structure

```
nvim/
├── init.lua                # Entry point
├── lua/
│   ├── config/             # Core configuration
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua        # Plugin manager setup
│   │   └── options.lua
│   ├── plugins/            # Plugin specifications (33 files)
│   │   ├── colorscheme.lua
│   │   ├── lsp.lua
│   │   ├── treesitter.lua
│   │   ├── telescope.lua
│   │   └── ...
│   └── user/               # User customization
│       ├── init.lua
│       ├── keymaps.lua
│       ├── options.lua
│       └── plugins.lua
```

## Plugin Manager

Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.

Plugins auto-install on first launch. Update with `:Lazy sync`.

## Key Features

### Core Functionality
- LSP support (language servers)
- Treesitter syntax highlighting
- Fuzzy finding (Telescope)
- File explorer (neo-tree or nvim-tree)
- Git integration (fugitive, gitsigns)
- Auto-completion (nvim-cmp)
- Snippet support (LuaSnip)
- Terminal integration (toggleterm)
- Session management
- Tmux integration (vim-tmux-navigator)

### UI Enhancements
- Nord color scheme (or alternatives)
- Status line (lualine)
- Buffer line
- Indent guides
- Color highlighting
- Icons (nvim-web-devicons)

### Development Tools
- LSP configuration (mason.nvim)
- Linting (nvim-lint)
- Formatting (conform.nvim or null-ls)
- Debugging (nvim-dap)
- Testing integration
- Git blame, diff view
- Code actions, refactoring

### Editing Enhancements
- Surround (nvim-surround)
- Comment (Comment.nvim)
- Auto-pairs
- Multiple cursors
- Text objects
- Incremental selection

## Keybindings

Leader key typically `Space` or `,`. Check `lua/config/keymaps.lua` for full list.

### Common Bindings (typical setup)

**File Navigation:**
- `<leader>ff`: Find files (Telescope)
- `<leader>fg`: Live grep (Telescope)
- `<leader>fb`: Buffers (Telescope)
- `<leader>e`: Toggle file explorer

**LSP:**
- `gd`: Go to definition
- `gr`: References
- `K`: Hover documentation
- `<leader>ca`: Code actions
- `<leader>rn`: Rename

**Git:**
- `<leader>gs`: Git status
- `<leader>gc`: Git commit
- `<leader>gd`: Git diff
- `]c` / `[c`: Next/previous hunk

**Tmux Navigation:**
- `Ctrl+H/J/K/L`: Navigate between vim splits and tmux panes

**Terminal:**
- `<leader>tt`: Toggle terminal

Check actual keymaps in config files for precise bindings.

## LSP Configuration

Language servers managed via mason.nvim.

Install servers:
```vim
:Mason
```

Common servers:
- `lua_ls`: Lua
- `pyright`: Python
- `ts_ls`: TypeScript/JavaScript
- `rust_analyzer`: Rust
- `gopls`: Go
- `bashls`: Bash

Auto-configured via `lua/plugins/lsp.lua`.

## Customization

### User Directory

`lua/user/` contains user-specific overrides:

- `options.lua`: Override vim options
- `keymaps.lua`: Custom keybindings
- `plugins.lua`: Additional plugins

Changes here persist across config updates.

### Color Scheme

Edit `lua/plugins/colorscheme.lua` or set in `lua/user/init.lua`:

```lua
vim.cmd.colorscheme("nord")
-- Or: catppuccin, gruvbox, tokyonight, etc.
```

### Adding Plugins

Add to `lua/user/plugins.lua`:

```lua
return {
  {
    "username/plugin-name",
    config = function()
      -- Plugin setup
    end,
  },
}
```

Run `:Lazy sync` to install.

## File Types

Configuration includes support for:

- Python, Go, Rust, JavaScript/TypeScript, Lua
- Bash, Zsh
- Markdown, YAML, TOML, JSON
- HTML, CSS
- C, C++
- And more via Treesitter

## Integration

### Tmux

Seamless navigation via vim-tmux-navigator. `Ctrl+H/J/K/L` works across vim and tmux.

### Git

Fugitive for git commands, gitsigns for inline git status.

### Terminal

Kitty scrollback integration: view scrollback in nvim with syntax highlighting.

## Performance

- Lazy loading plugins for fast startup
- Treesitter incremental parsing
- LSP optimizations

## Troubleshooting

### Plugins not loading

```vim
:Lazy sync
:Lazy restore
```

### LSP not working

```vim
:LspInfo           " Check LSP status
:Mason             " Install language servers
:checkhealth lsp   " Diagnose issues
```

### Slow startup

```vim
:Lazy profile      " Check plugin load times
```

## Dependencies

- Neovim >= 0.9
- Git
- Node.js (for some LSP servers)
- ripgrep (for Telescope grep)
- fd (for Telescope file finding)
- Language-specific tools (compilers, linters, formatters)

## Usage

```bash
# Launch
nvim

# Open file
nvim file.txt

# Open directory
nvim .

# View scrollback (from kitty)
# Automatic via kitty config
```

Configuration is extensive. Explore `lua/plugins/` for specific plugin configs.
