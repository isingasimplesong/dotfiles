# Bash Configuration

Minimal bash setup for servers and fallback shell, sharing aliases/env with zsh.

## Structure

```
bash/
├── bashrc         # Main configuration
└── secrets        # Private variables (gitignored)
```

## Features

From `bashrc:1-77`:

### Interactive Check

```bash
[ -z "$PS1" ] && return  # Exit if non-interactive
```

### History

- **50k lines**: `HISTSIZE`, `HISTFILESIZE`, `HISTFILE`
- **Deduplication**: `ignoreboth:erasedups`
- **Timestamps**: `HISTTIMEFORMAT="%F %T "`
- **Immediate append**: Commands saved instantly

### Shell Behavior

- **Vi mode**: `set -o vi` for vim-style editing
- **No bell**: `bind "set bell-style none"`
- **Case-insensitive completion**: `completion-ignore-case on`

### Shared Configuration

From `bashrc:32-36`:

```bash
source ~/dotfiles/zsh/aliases
source ~/dotfiles/zsh/env
[ -f ~/dotfiles/bash/secrets ] && source ~/dotfiles/bash/secrets
```

Reuses zsh aliases and environment variables for consistency.

### OS-Specific Loading

From `bashrc:38-51`:

Detects Arch/Debian and sources:

- `fzf` key-bindings
- `fzf` completion

### SSH Auto-Tmux

From `bashrc:54-56`:

```bash
if [ -n "$SSH_CONNECTION" ] && [ -z "$TMUX" ]; then
    tmux -u attach || tmux -u new -s $(uname --nodename)
fi
```

Automatically attaches to tmux on SSH login.

### Terminal Title

From `bashrc:5-9`:

Updates terminal title with `user@host: path` for xterm-compatible terminals.

### PATH

From `bashrc:71-74`:

Adds `~/.local/bin` if it exists.

### Go Path

From `bashrc:76`:

```bash
export GOPATH="$HOME/.local/share/go"
```

## Dependencies

```bash
# Core
bash >= 4.0

# Optional
bash-completion    # Command completion
fzf               # Fuzzy finder
tmux              # Terminal multiplexer
neofetch          # System info (shown on login)
dircolors         # ls color configuration
```

## Installation

```bash
ln -sf ~/dotfiles/bash/bashrc ~/.bashrc

# Create secrets file if needed
touch ~/dotfiles/bash/secrets
```

## Differences from Zsh Config

| Feature | Bash | Zsh |
|---------|------|-----|
| Vi mode | `set -o vi` | `bindkey -v` |
| Completion | bash-completion | zsh compinit |
| Prompt | Simple PS1 | Powerlevel10k support |
| Plugins | None | autosuggestions, syntax-highlighting |
| Session picker | None | sesh function with Alt+S |

## Use Case

- **SSH servers**: Lightweight, universally available
- **Fallback shell**: When zsh unavailable
- **Scripts**: `#!/bin/bash` for portability

## Files Reference

- `bashrc:1-77`: Complete configuration
- `bashrc:11-19`: History settings
- `bashrc:32-36`: Shared config sourcing
- `bashrc:54-56`: SSH tmux auto-attach
