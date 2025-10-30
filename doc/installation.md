# Installation

## Prerequisites

- Linux system (Arch or Debian-based)
- Git
- GNU Stow (recommended) or manual symlink management

## Quick Install

```bash
# Clone repository
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles

# Symlink configs using stow (recommended)
stow -t ~ bash zsh tmux nvim git

# Or manually symlink specific configs
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
```

## Per-Component Installation

### Shell (zsh)

```bash
# Arch
pacman -S zsh zsh-autosuggestions zsh-syntax-highlighting fzf zoxide

# Debian/Ubuntu
apt install zsh zsh-autosuggestions zsh-syntax-highlighting fzf

# Install powerlevel10k (optional)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.local/share/powerlevel10k

# Symlink config
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/dotfiles/zsh/aliases ~/.config/zsh/aliases
ln -sf ~/dotfiles/zsh/env ~/.config/zsh/env
```

### Hyprland Desktop

See [hypr/README.md](../hypr/README.md) for comprehensive installation instructions.

Dependencies: `hyprland`, `waybar`, `rofi-wayland`, `pyprland`, `cliphist`, `grim`, `satty`, `dunst`

```bash
ln -sf ~/dotfiles/hypr ~/.config/hypr
ln -sf ~/dotfiles/waybar ~/.config/waybar
ln -sf ~/dotfiles/rofi ~/.config/rofi
```

### Qtile Desktop

```bash
# Arch
pacman -S qtile python-psutil

# Symlink config
ln -sf ~/dotfiles/qtile ~/.config/qtile
```

### Terminal Emulators

```bash
# Kitty
ln -sf ~/dotfiles/kitty ~/.config/kitty

# Ghostty
ln -sf ~/dotfiles/ghostty ~/.config/ghostty

# Alacritty
ln -sf ~/dotfiles/alacritty.toml ~/.config/alacritty/alacritty.toml
```

### Neovim

```bash
# Requires Neovim >= 0.9
ln -sf ~/dotfiles/nvim ~/.config/nvim

# Launch nvim - plugins will auto-install via lazy.nvim
nvim
```

### Multiplexers

```bash
# tmux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf

# zellij
ln -sf ~/dotfiles/zellij ~/.config/zellij
```

### Git

```bash
ln -sf ~/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/gitignore ~/.config/git/ignore
ln -sf ~/dotfiles/commit-template.txt ~/.config/git/template

# Install diff-so-fancy for better diffs
# Arch: pacman -S diff-so-fancy
# Debian: apt install diff-so-fancy
```

## Post-Installation

### Set zsh as default shell

```bash
chsh -s $(which zsh)
```

### Configure p10k prompt

```bash
# Run configuration wizard
p10k configure

# Or use provided config
ln -sf ~/dotfiles/zsh/p10k.zsh ~/.p10k.zsh
```

### Install fonts

JetBrainsMono Nerd Font is used throughout configs.

```bash
# Arch
pacman -S ttf-jetbrains-mono-nerd

# Manual install
mkdir -p ~/.local/share/fonts
# Download from https://www.nerdfonts.com/font-downloads
unzip JetBrainsMono.zip -d ~/.local/share/fonts/
fc-cache -fv
```

## Troubleshooting

### zsh plugins not loading

Check plugin paths in `zshrc` match your system:
- Arch: `/usr/share/zsh/plugins/`
- Debian: `/usr/share/`

### tmux vim navigation not working

Install vim-tmux-navigator plugin in nvim.

### Hyprland not starting

Check dependencies listed in `hypr/README.md`. Verify `hyprland.conf` paths match your system.
