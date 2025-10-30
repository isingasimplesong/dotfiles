# Tmux Configuration

Terminal multiplexer setup with Ctrl+Space prefix, vim-style navigation, and Nord theme.

## Structure

```
tmux/
└── tmux.conf          # Single configuration file
```

## Core Settings

**Prefix**: `Ctrl+Space` (instead of default `Ctrl+B`)

From `tmux.conf:1-9`:

- **1-based indexing**: Windows start at 1, not 0
- **Renumber windows**: Gaps filled automatically
- **Vi mode**: `mode-keys vi` for copy mode
- **Passthrough**: Terminal features preserved

## Keybindings

| Binding | Action |
|---------|--------|
| `Ctrl+Space` | Prefix key |
| `Prefix + -` | Split horizontal |
| `Prefix + \` | Split vertical |
| `Prefix + o` | Sesh session switcher |
| `Prefix + v` | View scrollback in nvim |

### Vim-Tmux Navigation

Smart pane switching with awareness of vim splits (via `vim-tmux-navigator`):

| Binding | Action |
|---------|--------|
| `Ctrl+H/J/K/L` | Navigate left/down/up/right |
| `Ctrl+\` | Last pane |

Works both in normal and copy mode.

## Visual Configuration

From `tmux.conf:36-81`:

### Colors

- **24-bit color**: `tmux-256color` with true color support
- **Nord palette**: `#3b4252`, `#4c566a` for borders
- **Status bar**: Transparent background, muted foreground

### Layout

- **Status position**: Top
- **Pane borders**: Single line style
- **Window format**: Minimal, current window in green
- **Status left**: Empty
- **Status right**: Session name in magenta

## Features

### Scrollback Management

From `tmux.conf:41-43`:

- **10k line history**
- `Prefix + v`: Capture entire scrollback to `/tmp/tmux-backlog.txt` and open in nvim

### Session Switching

From `tmux.conf:54`:

- **Sesh integration**: `Prefix + o` opens fzf session picker
- Auto-connects to selected session

### Mouse Support

- **Enabled**: Click, drag, resize, scroll

### Terminal Integration

From `tmux.conf:36-39`:

- **Clipboard**: Copy/paste support
- **Hyperlinks**: Clickable links
- **Focus events**: Vim integration
- **Window titles**: Set from pane title

## Dependencies

```bash
# Core
tmux >= 3.0

# Session manager
sesh

# Fuzzy finder
fzf

# Editor (for scrollback)
nvim

# Vim plugin (for navigation)
# github.com/christoomey/vim-tmux-navigator
```

## Installation

```bash
ln -sf ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf

# Or traditional location
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
```

Install TPM (Tmux Plugin Manager) if using plugins:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Files Reference

- `tmux.conf:1-9`: Core settings
- `tmux.conf:14-33`: Vim-tmux navigation
- `tmux.conf:36-39`: Terminal feature support
- `tmux.conf:49-51`: Split pane bindings
- `tmux.conf:62-80`: Nord theme configuration
