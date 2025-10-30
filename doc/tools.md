# Development Tools

## Git

**Location:** `gitconfig`, `gitignore`, `commit-template.txt`

Comprehensive git configuration with optimizations and custom settings.

### Configuration Highlights

**User:**
```gitconfig
[user]
    name = Mathieu Rousseau
    email = mathieu@2027a.net
```

**Core:**
- Editor: nvim
- Compression: 9 (maximum)
- Whitespace errors treated as blocking
- Preload index for performance

**Commit:**
- Template: `~/.config/git/template`
- Custom commit message template with structure

**Merge:**
- Tool: nvim in diff mode
- Command: `nvim -d "$LOCAL" "$REMOTE"`

**Diff:**
- Enhanced with `diff-so-fancy`
- 3 lines context
- Rename detection as copies
- 10 lines inter-hunk context

**Push/Pull:**
- Auto-setup remote on push
- Push current branch by default
- Follow tags on push
- Rebase on pull (not merge)

**Rebase:**
- Auto-stash before rebase
- Warn on missing commits

**Log:**
- Abbreviated commit IDs
- Custom graph colors

**Branch/Tag:**
- Sort by date (recent first)

**Pager:**
- `diff-so-fancy` for diffs and logs
- `less` for show
- No pager for branch/tag

### Commit Template

**Location:** `commit-template.txt`

Structured commit message format. Customize for your workflow.

### Global Gitignore

**Location:** `gitignore`

System-wide ignore patterns. Add to git config:

```bash
git config --global core.excludesfile ~/.config/git/ignore
```

### Dependencies

```bash
# diff-so-fancy for better diffs
# Arch
pacman -S diff-so-fancy

# Debian
apt install diff-so-fancy

# Or via npm
npm install -g diff-so-fancy
```

## Rofi (Application Launcher)

**Location:** `rofi/`

Extensive rofi setup with multiple themes and applets. See [window-managers.md](window-managers.md#rofi-application-launcher) for details.

## Satty (Screenshot Annotation)

**Location:** `satty/config.toml`

Screenshot annotation tool for Wayland.

### Usage

Integrated with Hyprland:
- `Super+P`: Screenshot and annotate
- `Super+Shift+P`: Screenshot area and annotate

### Configuration

```toml
# satty/config.toml
# Annotation settings, output directory, etc.
```

## Bat (Cat Replacement)

**Location:** `bat/config`

Syntax-highlighted cat alternative.

### Configuration

```bash
# bat/config
--theme="Nord"
--style="numbers,changes,header"
```

### Usage

```bash
bat file.txt           # View with syntax highlighting
bat -A file.txt        # Show all characters
bat -d file.txt        # Diff mode
```

## Starship (Shell Prompt)

**Location:** `starship/`

Cross-shell prompt with multiple presets. See [shell.md](shell.md#starship-prompt-alternative) for details.

## Ticker (Stock Market Monitor)

**Location:** `ticker.yaml`

Terminal-based stock market ticker configuration.

### Configuration

```yaml
# ticker.yaml
# Define watchlists, refresh intervals, etc.
```

### Usage

```bash
ticker --config ~/dotfiles/ticker.yaml
```

Integrated with sesh sessions (see `sesh/sesh.toml`).

## Picom (X11 Compositor)

**Location:** `picom/picom.conf`

Compositor for X11 window managers (bspwm, qtile).

### Features

- Transparency
- Shadows
- Fading
- Blur (optional)
- VSync

### Usage

```bash
ln -sf ~/dotfiles/picom/picom.conf ~/.config/picom/picom.conf
picom &
```

Auto-started by bspwm/qtile if configured.

## Polybar (Status Bar)

**Location:** `polybar/`

Status bar for X11 window managers.

```
polybar/
├── config.ini         # Bar configuration
└── launch.sh          # Launch script
```

### Usage

```bash
ln -sf ~/dotfiles/polybar ~/.config/polybar
~/.config/polybar/launch.sh
```

Add to window manager autostart.

## Neofetch (System Info)

**Location:** `neofetch`

System information display configuration.

### Usage

```bash
ln -sf ~/dotfiles/neofetch ~/.config/neofetch/config.conf
neofetch
```

## Most (Pager)

**Location:** `mostrc`

Alternative to less with color support.

### Usage

```bash
ln -sf ~/dotfiles/mostrc ~/.mostrc
export PAGER=most
```

## Xresources (X11 Settings)

**Location:** `Xresources`

X11 resource configuration (fonts, colors, DPI).

### Usage

```bash
ln -sf ~/dotfiles/Xresources ~/.Xresources
xrdb ~/.Xresources
```

Add to X11 startup (`.xinitrc` or display manager).

## Mattermost Theme

**Location:** `mattermost/nord_theme`

Nord color scheme for Mattermost.

### Usage

Import theme in Mattermost settings:
1. Settings → Display → Theme
2. Custom Theme → Import from file
3. Select `mattermost/nord_theme`

## Facebook Clean My Feeds

**Location:** `fb-clean-my-feeds_settings.json`

Browser extension settings for Facebook feed cleaning.

Import in extension settings.

## Miscellaneous

**Location:** `misc/`

### License Templates

```
misc/
├── mit            # MIT license template
├── wtfplv2        # WTFPL license
├── glwtpl         # GLWT license
└── license        # Generic license template
```

### Config Prompts

```
misc/config_prompts/
├── bayes_assistant.md
├── code_review.md
├── gpt4_custom.md
├── headers_prompt.md
└── llm_custom.md
```

LLM prompt templates for various tasks.

### Icons

```
misc/icons/
├── green-circle.png
├── red-circle.png
├── yellow-circle.png
└── ...
```

Status icons for scripts or notifications.

### Test Prompts

```
misc/test_prompts/
└── main.txt
```

Test data for prompt engineering.
