# Terminal Multiplexers

## tmux (Primary)

**Location:** `tmux/tmux.conf`

Primary terminal multiplexer with vim integration.

### Configuration

Single file: `tmux/tmux.conf`

### Key Features

- **Prefix:** `Ctrl+Space` (instead of default Ctrl+B)
- **Vi mode:** Vi-style keybindings in copy mode
- **Vim integration:** Seamless navigation between tmux panes and vim splits (vim-tmux-navigator)
- **Sesh integration:** fzf-based session switcher
- **Nord theme:** Minimal status bar with Nord colors
- **24-bit color:** True color support
- **Mouse support:** Enabled
- **Status bar:** Top position, minimal design

### Keybindings

#### Prefix Key
- `Ctrl+Space`: Prefix key

#### Panes
- `Prefix + -`: Split horizontally
- `Prefix + \`: Split vertically
- `Ctrl+H/J/K/L`: Navigate panes (works with vim splits)

#### Sessions
- `Prefix + O`: Open sesh session switcher (fzf)

#### Scrollback
- `Prefix + V`: View scrollback in nvim

#### Windows
- Windows numbered from 1 (not 0)
- Auto-renumber on close

### Vim-Tmux Navigation

Requires `vim-tmux-navigator` plugin in nvim.

Navigate seamlessly between vim splits and tmux panes:
- `Ctrl+H`: Left
- `Ctrl+J`: Down
- `Ctrl+K`: Up
- `Ctrl+L`: Right
- `Ctrl+\`: Previous pane

### Sesh Integration

Session manager with fzf interface.

```bash
# From within tmux
Prefix + O  # Opens session switcher
```

Shows:
- Existing tmux sessions
- Zoxide directories (frequent dirs)
- Git repositories

### Status Bar

Minimal design:
- **Left:** Empty (or session name)
- **Right:** Session name in magenta
- **Position:** Top
- **Colors:** Nord theme (muted grays)
- **Window format:** ` window-name` (active in green)

### Configuration Highlights

```tmux
# Prefix
set-option -g prefix C-Space

# Vi mode
setw -g mode-keys vi

# True color
set -g default-terminal "tmux-256color"
set -sa terminal-overrides ',xterm-256color:Tc'

# Mouse
set -g mouse on

# History
set -g history-limit 10000

# Status bar
set -g status-position top
```

### Usage

```bash
# Start new session
tmux new -s session-name

# Attach to session
tmux attach -t session-name

# List sessions
tmux ls

# Kill session
tmux kill-session -t session-name
```

## Zellij

**Location:** `zellij/`

Modern Rust-based multiplexer. Alternative to tmux.

### Configuration Structure

```
zellij/
├── config.kdl             # Main configuration
└── layouts/
    ├── default.kdl        # Default layout
    ├── regular.kdl        # Regular layout
    └── slim.kdl           # Minimal layout
```

### Features

- Modern UI with tabs and panes
- Built-in session management
- Plugin system
- KDL configuration format
- Floating panes
- Scrollback search

### Layouts

**default.kdl:** Standard layout with multiple panes

**regular.kdl:** Balanced workspace layout

**slim.kdl:** Minimal single-pane layout

### Usage

```bash
# Start with default layout
zellij

# Start with specific layout
zellij --layout regular

# Attach to session
zellij attach session-name

# List sessions
zellij list-sessions
```

### Keybindings

Zellij uses modes (similar to vim):

- `Ctrl+P`: Pane mode
- `Ctrl+T`: Tab mode
- `Ctrl+N`: Resize mode
- `Ctrl+S`: Scroll mode
- `Ctrl+Q`: Quit mode

Check `config.kdl` for full keybinding list.

## Sesh (Session Manager)

**Location:** `sesh/sesh.toml`

Session manager that works with both tmux and zellij.

### Configuration

```toml
[[session]]
name = "monitoring"
path = "~"
windows = ["ticker", "portfolio"]

[[window]]
name = "ticker"
startup_script = "ticker"

[[window]]
name = "portfolio"
startup_script = "portfolio"
```

### Features

- Unified interface for tmux/zellij
- Zoxide integration (smart directory jumping)
- Git repository detection
- fzf-based selection
- Pre-configured sessions

### Usage

```bash
# Interactive session switcher
sesh connect

# List sessions
sesh list

# Connect to specific session
sesh connect session-name
```

### Integration

**Zsh:** Bound to `Alt+S` - opens fzf session switcher

**Tmux:** Bound to `Prefix + O`

## Choosing a Multiplexer

**tmux:** Mature, widely supported, extensive plugin ecosystem. Best for traditional workflows.

**zellij:** Modern, user-friendly, built-in features. Good for users wanting simpler setup.

**sesh:** Use with either tmux or zellij for enhanced session management.

Both configs use Nord theme and integrate with zsh/nvim.
