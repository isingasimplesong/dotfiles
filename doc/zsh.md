# Zsh Configuration

Custom zsh setup with vi-mode, history management, completion system, and Powerlevel10k integration.

## Structure

```
zsh/
├── zshrc              # Main configuration
├── aliases            # Command aliases
├── env                # Environment variables
├── secrets            # Private env vars (gitignored)
├── p10k.zsh           # Powerlevel10k configuration
└── p10k-pure.zsh      # Alternative minimal prompt
```

## Features

### Shell Behavior

From `zshrc:32-100`:

- **Vi mode**: `bindkey -v` for vim-style editing
- **History**: 50k lines, deduplication, instant append
- **Completion**: Menu-based selection, case-insensitive
- **Directory navigation**: Auto-cd, pushd stack
- **Nullglob**: Empty globs expand to null string

### Custom Functions

| Function | Description |
|----------|-------------|
| `sesh-sessions` | Fuzzy session picker (Alt+S) |
| `tn` | Create named tmux session interactively |
| `mkcd` | Create directory and cd into it |

### OS-Specific Configuration

Detects Arch/Debian and sources appropriate:

- `fzf` key-bindings and completion
- `zsh-autosuggestions`
- `zsh-syntax-highlighting`
- `zoxide` (Arch only) - smarter cd replacement

### SSH Behavior

Auto-attaches to tmux when connecting via SSH:

```bash
if [ -n "$SSH_CONNECTION" ] && [ -z "$TMUX" ]; then
    tmux -u attach || tmux -u new -s "${host}"
fi
```

### Powerlevel10k

Optional prompt theme:

- Instant prompt support
- Two configurations: `p10k.zsh` (full) and `p10k-pure.zsh` (minimal)
- Sources from `/usr/share/zsh-theme-powerlevel10k/` or `~/.local/share/`

## Dependencies

```bash
# Core
zsh

# Plugins (Arch paths)
zsh-autosuggestions
zsh-syntax-highlighting
fzf

# Optional
zoxide              # Smarter cd
powerlevel10k       # Prompt theme
sesh                # Session manager
tmux                # Terminal multiplexer
```

## Installation

```bash
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc

# Create secrets file if needed
touch ~/dotfiles/zsh/secrets
```

Set zsh as default shell:

```bash
chsh -s /bin/zsh
```

## Keybindings

| Binding | Action |
|---------|--------|
| `Alt + S` | Sesh session picker (works in vi/emacs mode) |
| Vi mode | Enabled globally (`bindkey -v`) |
| Ctrl+R | fzf history search |

## Files Reference

- `zshrc:1-203`: Main configuration
- `zshrc:86-100`: History settings
- `zshrc:129-148`: Custom functions
- `zshrc:164-184`: OS-specific plugin loading
- `aliases`: Command shortcuts
- `env`: Environment variables
