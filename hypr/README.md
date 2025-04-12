# A keyboard first hyprland config for nerds

This configuration crafts a highly efficient, keyboard-centric desktop environment built around the Hyprland Wayland compositor, featuring the popular Nord color scheme, subtle window gaps (which disappear when only one window is present), rounded corners, and smooth animations with a touch of background blur for depth. The overall feel is minimalist but visually polished.

Functionally, it's designed for speed and organization through tiling window management (primarily using a master-stack layout, but easily switchable). Interaction heavily relies on keyboard shortcuts, including Vim-style navigation (HJKL) for moving focus and swapping windows. There is an extensive use of "submaps" – modal keybinding layers triggered by `Super + <Letter>` (for \[A\]pps, \[I\]nfo, \[R\]ofi, \[S\]cratchpads) – which provide quick, context-specific access to applications, custom information scripts, Rofi functions (like clipboard history access, emoji selection, SSH), and 26 instantly accessible "magic" scratchpad workspaces. The setup explicitly configures dual monitors (laptop screen `eDP-1` and external `HDMI-A-1`) with a large number of workspaces (22 total: 1 to 22, mapped to 0-9 and F1-F12) that dynamically adapt when the external monitor is disconnected. It includes integrated clipboard history management, power management via `hypridle` for laptops, and lock screen styling via `hyprlock`.

This configuration is best suited for: **(neo)vim users, developers, power users, sysadmins:** Individuals who spend significant time in terminals, IDEs, and browsers, and benefit immensely from rapid, keyboard-driven context switching and command execution.

It's likely less suitable for users who strongly prefer mouse-driven interaction or those brand new to Linux who might find the initial learning curve for the keybindings steep.

If someone were to adopt this configuration, they would likely want to personalize:

1. **Keybindings:** This is the most crucial area. Review *all* bindings, especially within the submaps (`submap-a/i/r/s.conf`). Change bindings that conflict with muscle memory, reassign the placeholder `notify-send` bindings to useful commands, and potentially simplify the workspace/scratchpad bindings if 22+26 options feel excessive.
2. **Core Applications:** Modify the `$terminal`, `$webBrowser`, `$fileManager` variables in `envvar.conf`. Update bindings in `submap-a.conf` and `pyprland.toml` to launch preferred applications (e.g., replace `librewolf` with Firefox, `kitty` with Wezterm, `thunar`/`yazi` with something else).
3. **Custom Scripts:** The various `.sh` scripts called within submaps (`notes-dmenu.sh`, `weather.sh`, etc.) are specific. Most of them [are available here](https://github.com/isingasimplesong/duct-tape/). These need to be reviewed, potentially rewritten, replaced with different tools, or removed entirely.
4. **Appearance:** Change the color scheme in `colors.conf`, adjust fonts, gaps, borders, rounding in `look.conf` and `envvar.conf`. Customize the associated Rofi theme(s) and Waybar configuration ([available here](https://github.com/isingasimplesong/dotfiles/tree/main/waybar)). Modify the `hyprlock.conf` background and styling.
6. **Input Settings:** Modify keyboard layout, variant, or options (like `caps:swapescape`) in `inputs.conf` to match personal hardware and preferences. Adjust touchpad settings like `natural_scroll`.

## Keybinding Cheatsheet

**Modifier Key:**

* `$mainMod`: SUPER (Windows/Command key)

### I. Application Launchers & Basic Actions

* `$mainMod + return`: Launch Terminal (`kitty`)
* `$mainMod + space`: Launch Application Menu (`~/.config/rofi/launchers/type-2/launcher.sh`)
* `$mainMod + N`: Launch Notes Script (`~/.local/bin/notes-dmenu.sh`)

### II. System & Session Control

* `$mainMod + SHIFT + M`: Launch Power Menu (`~/.config/rofi/powermenu/type-3/powermenu.sh`)
* `Lid Switch Close`: Lock Screen and Suspend (`hyprlock --immediate-render & systemctl suspend`)

### III. Waybar Control

* `$mainMod + B`: Send SIGUSR1 to Waybar (often used to toggle modules/visibility)
* `$mainMod + SHIFT + B`: Send SIGUSR2 to Waybar (often used for alternative toggle/reload)
* `$mainMod + T`: Toggle Waybar Tray (`~/.local/bin/waybar-toggle-tray.sh`)

### IV. Scratchpads (Pyprland)

* `$mainMod + W`: Toggle Terminal Scratchpad (`pypr toggle term` -> `kitty-dropterm`)
* `$mainMod + E`: Toggle File Manager Scratchpad (`pypr toggle yazi` -> `kitty-yazi`)
* `$mainMod + O`: Toggle Bitwarden Scratchpad (`pypr toggle bitwarden` -> `Bitwarden`)

### V. Screenshots & Utilities

* `$mainMod + P`: Screenshot Active Monitor & Edit (`grim -o "$active_monitor" - | satty -f -`)
* `$mainMod + SHIFT + P`: Screenshot Active Monitor & Save (`grim $HOME/Images/Screenshots/screenshot-...png`)
* `$mainMod + ALT + P`: Launch Color Picker (`hyprpicker -aln`)

### VI. Hardware Keys (Volume / Media / Brightness)

* `XF86AudioRaiseVolume`: Increase Volume 5% (`pamixer -i 5`)
* `XF86AudioLowerVolume`: Decrease Volume 5% (`pamixer -d 5`)
* `XF86AudioMicMute`: Toggle Microphone Mute (`pamixer --default-source -m`)
* `XF86AudioMute`: Toggle Speaker/Output Mute (`pamixer -t`)
* `XF86AudioPlay` / `XF86AudioPause`: Toggle Media Play/Pause (`playerctl play-pause`)
* `XF86AudioNext`: Media Next Track (`playerctl next`)
* `XF86AudioPrev`: Media Previous Track (`playerctl previous`)
* `XF86MonBrightnessUp`: Increase Screen Brightness 5% (`brightnessctl s +5%`)
* `XF86MonBrightnessDown`: Decrease Screen Brightness 5% (`brightnessctl s 5%-`)

### VII. Window Management

#### Closing / Killing Windows

* `$mainMod + Q`: Close Active Window (graceful) (`killactive`)
* `$mainMod + SHIFT + X`: Force Kill Active Window (`hyprctl kill`)

#### Window State & Position

* `$mainMod + F`: Toggle Floating State
* `$mainMod + ALT + F11`: Toggle Fullscreen (Mode 1)
* `$mainMod + C`: Center Active Window
* `$mainMod + ALT + p`: Pin Active Floating Window (Toggle)

#### Focus Control (Vim Keys)

* `$mainMod + H`: Focus Window Left (`movefocus l`)
* `$mainMod + L`: Focus Window Right (`movefocus r`)
* `$mainMod + K`: Focus Window Up (`movefocus u`)
* `$mainMod + J`: Focus Window Down (`movefocus d`)

#### Window Swapping (Vim Keys)

* `$mainMod + SHIFT + H`: Swap Active Window Left (`swapwindow l`)
* `$mainMod + SHIFT + L`: Swap Active Window Right (`swapwindow r`)
* `$mainMod + SHIFT + K`: Swap Active Window Up (`swapwindow u`)
* `$mainMod + SHIFT + J`: Swap Active Window Down (`swapwindow d`)

#### Resizing Windows (Arrows)

* `$mainMod + Left Arrow`: Decrease Width by 25px (`resizeactive -25 0`)
* `$mainMod + Right Arrow`: Increase Width by 25px (`resizeactive 25 0`)
* `$mainMod + Up Arrow`: Decrease Height by 25px (`resizeactive 0 -25`)
* `$mainMod + Down Arrow`: Increase Height by 25px (`resizeactive 0 25`)

#### Moving Floating Windows (Arrows)

* `$mainMod + ALT + Left Arrow`: Move Left by 25px (`moveactive -25 0`)
* `$mainMod + ALT + Right Arrow`: Move Right by 25px (`moveactive 25 0`)
* `$mainMod + ALT + Up Arrow`: Move Up by 25px (`moveactive 0 -25`)
* `$mainMod + ALT + Down Arrow`: Move Down by 25px (`moveactive 0 25`)

#### Mouse Actions

* `$mainMod + Mouse Button 1 Drag`: Move Window (`movewindow`)
* `$mainMod + Mouse Button 3 Drag`: Resize Window (`resizewindow`)

### VIII. Layout Management

* `$mainMod + G`: Toggle Layouts (`~/.local/bin/hypr-toggle-layouts.sh`)
* `$mainMod + SHIFT + G`: Cycle Master Orientation (Master Layout) (`layoutmsg orientationcycle`)
* `$mainMod + SHIFT + D`: Toggle Pseudo Tiling (Dwindle Layout) (`pseudo`)
* `$mainMod + TAB`: Roll Next Window into Master Position (Master Layout) (`layoutmsg rollnext`)
* `$mainMod + BACKSPACE`: Roll Previous Window into Master Position (Master Layout) (`layoutmsg rollprev`)

### IX. Workspace Management

#### Switching Workspaces

* `$mainMod + [1-9]`: Switch to Workspace 1-9
* `$mainMod + 0`: Switch to Workspace 10
* `$mainMod + F[1-12]`: Switch to Workspace 11-22

#### Moving Windows to Workspaces (and Follow Focus)

* `$mainMod + SHIFT + [1-9]`: Move Active Window to Workspace 1-9
* `$mainMod + SHIFT + 0`: Move Active Window to Workspace 10
* `$mainMod + SHIFT + F[1-12]`: Move Active Window to Workspace 11-22

#### Moving Windows to Workspaces (Silently - No Focus Change)

* `$mainMod + SHIFT + CTRL + [1-9]`: Move Active Window Silently to Workspace 1-9
* `$mainMod + SHIFT + CTRL + 0`: Move Active Window Silently to Workspace 10
* `$mainMod + SHIFT + CTRL + F[1-12]`: Move Active Window Silently to Workspace 11-22

### X. Submaps

#### Submap: [A]pplications (`$mainMod + A` to enter)

* `2`: Launch `enteauth`
* `A`: Launch `alacritty`
* `B`: Launch `brave`
* `C`: Launch `galculator`
* `D`: Launch `transmission-remote-gtk`
* `E`: Launch File Manager (`thunar`)
* `F`: Launch `librewolf` (Facebook)
* `G`: Launch `ghostty`
* `I`: Launch `librewolf` (Claude, ai.2027a.net, ChatGPT URLs)
* `M`: Launch `librewolf` (mm.2027a.net URL)
* `N`: Launch Notes Script (`notes-dmenu.sh`)
* `T`: Launch `brave --tor`
* `U`: Unmount All Disks (`udiskie-umount -ad`)
* `V`: Launch `kitty -e vim`
* `W`: Launch `librewolf`
* `Y`: Launch `kitty -e yazi`
* `Z`: Launch Tor Browser (`torBrowser-launcher %u`)
* `escape`: Exit Submap

#### Submap: [I]nfo (`$mainMod + I` to enter)

* `A`: Show Air Quality (`~/.local/bin/iq-air.sh`)
* `B`: Show pfview (`~/.local/bin/pfview.sh`)
* `C`: Copy from Clipboard History (`cliphist list | rofi ... | wl-copy`)
* `D`: Delete from Clipboard History (`cliphist list | rofi ... | cliphist delete`)
* `E`: Show CAD Exchange Rate (`~/.local/bin/cad.sh`)
* `M`: Show Weather (`~/.local/bin/weather.sh`)
* `O`: Launch `librewolf` (ChatGPT URL)
* `P`: Launch `librewolf` (Claude.ai URL)
* `Q`: Launch `librewolf` (ai.2027a.net URL)
* `R`: Launch `librewolf` (Deepseek Chat URL)
* `S`: Web Search via Rofi (`~/.local/bin/web-search.sh`)
* `T`: Show Today's Agenda (`~/.local/bin/today.sh`)
* `Z`: Show Time Zones (`~/.local/bin/zones-time.sh`)
* `escape`: Exit Submap

#### Submap: [R]ofi (`$mainMod + R` to enter)

* `C`: Copy from Clipboard History (`cliphist list | rofi ... | wl-copy`)
* `D`: Delete from Clipboard History (`cliphist list | rofi ... | cliphist delete`)
* `E`: Show Rofi Emoji Selector (`rofi -modi emoji -show emoji`)
* `F`: Show Rofi File Browser (`rofi -show filebrowser`)
* `R`: Launch Radio Script (`~/.local/bin/radios.sh`)
* `S`: Show Rofi SSH Launcher (`rofi -show ssh`)
* `W`: Show Rofi Window Switcher (`rofi -show window`)
* `escape`: Exit Submap

#### Submap: [S]cratchpads (`$mainMod + S` to enter)

*(These use Hyprland's "special" named workspaces for quick scratchpads)*

* `[A-Z]`: Toggle Special Workspace `special:magic-[a-z]`
* `SHIFT + [A-Z]`: Move Active Window to Special Workspace `special:magic-[a-z]`
* `escape`: Exit Submap
