# Dotfiles

Personal configuration files for a keyboard-driven Linux desktop. Currently using
Arch Linux with Hyprland (Wayland), but includes legacy configs for bspwm/Qtile
(X11). Nord color scheme throughout.

Companion shell scripts live in a separate repository:
**[duct-tape](https://git.2027a.net/mathieu/duct-tape)** - backup helpers, rofi menus, notification scripts, etc.

Symlink configs to `~/.config/` as needed:

```sh
ln -s ~/dotfiles/hypr ~/.config/hypr
ln -s ~/dotfiles/nvim ~/.config/nvim
# etc.
```

- [`hypr/README.md`](hypr/README.md) - Hyprland keybindings and dependencies
