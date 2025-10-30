# Shell Configuration

## Zsh (Primary)

**Location:** `zsh/`

Main shell configuration with extensive customization.

### Files

```
zsh/
├── zshrc              # Main configuration
├── aliases            # Command aliases
├── env                # Environment variables
├── p10k.zsh           # Powerlevel10k theme config
├── p10k-pure.zsh      # Pure-style p10k config
└── README.md          # Minimal readme
```

### Features

- Vi mode keybindings
- Powerlevel10k prompt (optional)
- Auto-suggestions
- Syntax highlighting
- fzf integration
- zoxide (smart cd)
- tmux auto-attach on SSH
- sesh session manager integration
- 50,000 line history
- Directory stack (auto_pushd)

### Key Options

```zsh
setopt auto_cd              # cd without typing cd
setopt auto_pushd           # automatic directory stack
setopt share_history        # share history across sessions
setopt hist_ignore_dups     # ignore duplicate commands
setopt nullglob             # empty glob expands to nothing
unsetopt beep               # no beeping
```

### Custom Functions

**tn()** - Interactive tmux session creator
```bash
tn  # Prompts for session name, creates/switches to session
```

**sesh-sessions()** - fzf-based session switcher
```bash
# Bound to Alt+S in vi/emacs mode
# Opens fzf menu to select tmux/zellij/zoxide sessions
```

**mkcd()** - Create and enter directory
```bash
mkcd project  # mkdir -p project && cd project
```

### Keybindings

- `Alt+S`: Open sesh session switcher (fzf)
- Vi mode enabled (`bindkey -v`)
- fzf keybindings (Ctrl+R for history, Ctrl+T for files, Alt+C for cd)

### Aliases

Defined in `zsh/aliases`. Common patterns:

```bash
# Navigation
alias ..='cd ..'
alias ...='cd ../..'

# ls replacements (if using exa/eza)
alias ls='exa'
alias ll='exa -l'
alias la='exa -la'

# Git shortcuts
alias g='git'
alias gs='git status'
alias gd='git diff'
```

Check `aliases` file for complete list.

### Environment Variables

Defined in `zsh/env`:

```bash
export DOTPATH="$HOME/dotfiles"
export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
```

### OS-Specific Loading

Configuration auto-detects Arch vs Debian and loads plugins from correct paths:

**Arch:**
- `/usr/share/zsh/plugins/zsh-autosuggestions/`
- `/usr/share/zsh/plugins/zsh-syntax-highlighting/`
- `/usr/share/fzf/`

**Debian/Ubuntu:**
- `/usr/share/zsh-autosuggestions/`
- `/usr/share/zsh-syntax-highlighting/`
- `/usr/share/doc/fzf/examples/`

### Powerlevel10k

Optional prompt theme. Two configs provided:

- `p10k.zsh`: Full-featured config
- `p10k-pure.zsh`: Minimal pure-style config

Configure:
```bash
p10k configure  # Interactive wizard
```

Or symlink provided config:
```bash
ln -sf ~/dotfiles/zsh/p10k.zsh ~/.p10k.zsh
```

### Integration with Multiplexers

Auto-attaches to tmux on SSH connections:

```bash
if [ -n "$SSH_CONNECTION" ] && [ -z "$TMUX" ]; then
    tmux attach || tmux new -s "$(hostname)"
fi
```

## Bash

**Location:** `bash/`

Minimal bash configuration for fallback/compatibility.

### Files

```
bash/
└── bashrc             # Basic bash configuration
```

### Usage

```bash
ln -sf ~/dotfiles/bash/bashrc ~/.bashrc
```

Less featured than zsh. Provides basic aliases and prompt customization.

## Shared Configuration

### Starship Prompt (Alternative)

**Location:** `starship/`

Cross-shell prompt. Multiple presets available:

```
starship/
├── gruvbox-rainbow.toml
├── jetpack.toml
├── nerd-font-symbols.toml
├── pastel-powerline.toml
├── pure.toml
└── tokyo-night.toml
```

Usage:
```bash
# Install starship
# Arch: pacman -S starship
# Cargo: cargo install starship

# Use preset
ln -sf ~/dotfiles/starship/pure.toml ~/.config/starship.toml
```

Add to shell rc:
```bash
eval "$(starship init zsh)"  # or bash
```

## Switching Shells

```bash
# Set zsh as default
chsh -s $(which zsh)

# Set bash as default
chsh -s $(which bash)
```

Log out and back in for changes to take effect.
