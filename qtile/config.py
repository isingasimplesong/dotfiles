from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen, ScratchPad, DropDown
from libqtile.lazy import lazy

from colors import colors
from bar import screens, widget_defaults
from keys import keys, mod
from layouts import layouts
from floating_layout import floating_layout
from scratchpad import scratchpads, scratchpad_keys
from groups import groups, group_keys
from mouse import mouse

import os
import subprocess


@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.Popen([home])


@hook.subscribe.startup
def autorestart():
    home = os.path.expanduser('~/.config/qtile/autorestart.sh')
    subprocess.Popen([home])


keys.extend(scratchpad_keys)  # add scratchpad keys to key list
keys.extend(group_keys)  # add group keys to key list

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True
# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None
# string for java UI programs
wmname = "LG3D"
