from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen, ScratchPad, DropDown
from libqtile.lazy import lazy
import os
import subprocess

mod = "mod4"
terminal = "kitty"


@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.Popen([home])

@hook.subscribe.startup
def autostart():
    home = os.path.expanduser('~/.config/qtile/autorestart.sh')
    subprocess.Popen([home])


keys = [
        # A list of available commands that can be bound to keys can be found
        # at https://docs.qtile.org/en/latest/manual/config/lazy.html  
        # Switch between windows
        Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
        Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
        Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
        Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
        # Move windows between left/right columns or move up/down in current stack.
        # Moving out of range in Columns layout will create new column.
        Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
        Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
        Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
        Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
        # Grow windows. If current window is on the edge of screen and direction
        # will be to screen edge - window would shrink.
        Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
        Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
        Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
        Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
        Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
        Key([mod], "right", lazy.layout.grow()),
        Key([mod], "left", lazy.layout.shrink()),
        Key([mod], "m", lazy.layout.maximize()),
        Key([mod, "shift"], "space", lazy.layout.flip()),
        # Toggle between split and unsplit sides of stack.
        # Split = all windows displayed
        # Unsplit = 1 window displayed, like Max layout, but still with
        # multiple stack panes
        Key(
            [mod, "shift"],
            "Return",
            lazy.layout.toggle_split(),
            desc="Toggle between split and unsplit sides of stack",
            ),
        # Toggle between different layouts as defined below
        Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),

        Key([mod, "shift"], "f", lazy.window.toggle_floating()),
        Key([mod], "f", lazy.window.toggle_fullscreen()),
        Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
        Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
        Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
        Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
        # ScratchPad
        Key([mod], "s", lazy.group["scratchpad"].dropdown_toggle("term")),
        Key([mod], "g", lazy.group["scratchpad"].dropdown_toggle("gpt")),
        Key([mod], "c", lazy.group["scratchpad"].dropdown_toggle("calculator")),
        ]
scratchpads = [
        ScratchPad("scratchpad", [
            DropDown("term", "kitty", x=0.15, y=0.05, height=0.85, width=0.7, opacity=1, on_focus_lost_hide=True),
            DropDown("gpt", "firefox --new-instance https://chat.openai.com", x=0.15, y=0.05, height=0.85, width=0.7, opacity=1,)
            ]),
        ]

groups = [Group(i) for i in "1234567890"]

groups.extend(scratchpads)  # Add scratchpad to groups list

for i in groups:
    if not isinstance(i, ScratchPad):  # Do not add key bindings for ScratchPad
        keys.extend([
            # mod1 + letter of group = switch to group
            Key([mod], i.name, lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name)),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name)),
            ])

layouts = [
        layout.MonadTall(border_width=0, ratio=0.6, margin=8,),
        layout.MonadWide(border_width=0, ratio=0.6, margin=8,),
        layout.RatioTile(border_width=0, margin=8,),
        layout.Max(border_width=0, margin=8,),
        #layout.Columns(border_focus_stack=["#d75f5f", "#8f3d3d"], border_width=0, margin=4,),
        ]

widget_defaults = dict(
        font="Cantarell",
        fontsize=15,
        padding=3,
        )
extension_defaults = widget_defaults.copy()

screens=[
        Screen(
            top=bar.Bar(
                [
                    # widget.CurrentLayout(),
                    widget.CurrentLayoutIcon(
                        scale=.7,
                        ),
                    widget.GroupBox(
                        highlight_method='block',
                        this_current_screen_border="#a3be8c",
                        block_highlight_text_color="#2e3440",
                        disable_drag=True,
                        inactive="#4c566a",
                        active="#81a1c1"
                        ),
                    widget.Prompt(),
                    widget.WindowName(),
                    widget.Systray(),
                    widget.Spacer(5),
                    widget.TextBox("", padding=8, fontsize=12,),
                    widget.Battery(format="{char} {percent:1.0%}", charge_char="+", discharge_char="",),
                    widget.TextBox("󰃮", padding=7,),
                    widget.Clock(format="%A %d %B"),
                    widget.TextBox("", padding=7, fontsize=12,),
                    widget.Clock(format="%H:%M"),
                    ],
                27,
                background="#2a2f3a",
                ),
            right=bar.Gap(0),
            left=bar.Gap(0),
            bottom=bar.Gap(0),
            ),
        ]

# Drag floating layouts.
mouse = [
        Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
        Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
        Click([mod], "Button2", lazy.window.bring_to_front()),
        ]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
        float_rules=[
            # Run the utility of `xprop` to see the wm class and name of an X client.
            *layout.Floating.default_float_rules,
            Match(wm_class="galculator"),  # galculator
            Match(wm_class="pulsemixer"),  # galculator
            ],
        border_width=0,
        )
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
