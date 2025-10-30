# Git Configuration

Optimized git setup with nvim integration, diff-so-fancy pager, performance tweaks, and Nord-inspired colors.

## Structure

```
dotfiles/
├── gitconfig          # Main git configuration
├── gitignore          # Global ignore patterns
└── commit-template.txt # Commit message template
```

## User Configuration

From `gitconfig:1-6`:

```ini
[user]
    name = Mathieu Rousseau
    email = mathieu@2027a.net

[init]
    defaultBranch = main
```

## Core Settings

### Performance Optimizations

From `gitconfig:8-12`:

- **Compression level 9**: Maximum space savings (higher CPU usage)
- **Preload index**: Faster command execution
- **Editor**: nvim for commits and interactive operations

### Merge Tool

From `gitconfig:23-28`:

```bash
git mergetool  # Opens nvim -d with LOCAL and REMOTE side-by-side
```

## Display Configuration

### Pager (diff-so-fancy)

From `gitconfig:35-40`:

- **diff/log**: Piped through `diff-so-fancy` then `less`
- **branch/tag**: No pager (immediate output)
- **show**: Plain `less`

### Diff Settings

From `gitconfig:42-48`:

- **Context**: 3 lines before/after changes
- **Renames**: Detected as copies
- **Hunk context**: 10 lines to group related changes

### Colors (Nord-inspired)

From `gitconfig:77-100`:

| Element | Color |
|---------|-------|
| HEAD | Red |
| Local branches | Blue |
| Remote branches | Magenta/Yellow |
| Tags | Yellow/Green |
| Current branch | Magenta |
| Diff meta | Blue |
| Removed lines | Red |
| Commit hash | Yellow |

## Workflow Behaviors

### Push

From `gitconfig:54-57`:

- **Auto-setup remote**: New branches auto-track on first push
- **Default current**: Only push current branch
- **Follow tags**: Push associated tags automatically

### Pull & Rebase

From `gitconfig:59-65`:

- **Pull default**: Current branch only
- **Rebase by default**: `git pull` rebases instead of merging
- **Auto-stash**: Stash uncommitted changes before rebase

## Status & Display

From `gitconfig:30-33`:

```bash
git status  # Shows:
            # - Current branch
            # - Stash count
            # - All untracked files
```

### Log Settings

From `gitconfig:67-69`:

- **Abbreviated commits**: Short SHA1 hashes
- **Graph colors**: blue, yellow, cyan, magenta, green, red

### Sorting

From `gitconfig:71-75`:

- **Branches**: By commit date (newest first)
- **Tags**: By tag date (newest first)

## Interactive Mode

From `gitconfig:50-52`:

- **Single key**: One-letter commands in interactive mode
- **Diff filter**: diff-so-fancy for patches

## Dependencies

```bash
# Core
git

# Enhanced diff viewer
diff-so-fancy

# Editor
nvim

# Optional: better pager
less
```

## Installation

```bash
ln -sf ~/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/gitignore ~/.gitignore
ln -sf ~/dotfiles/commit-template.txt ~/.config/git/template
```

Or use git config to set paths:

```bash
git config --global core.excludesfile ~/dotfiles/gitignore
git config --global commit.template ~/dotfiles/commit-template.txt
```

## Files Reference

- `gitconfig:1-101`: Complete configuration
- `gitconfig:8-12`: Performance settings
- `gitconfig:35-40`: Pager configuration
- `gitconfig:54-65`: Push/pull workflow
- `gitconfig:77-100`: Color scheme
