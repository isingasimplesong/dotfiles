from libqtile.config import ScratchPad, DropDown
from libqtile.config import Key
from libqtile.lazy import lazy
from keys import mod

scratchpads = [
    ScratchPad("scratchpad", [
        DropDown("term", "kitty", x=0.15, y=0.06, height=0.85,
                 width=0.7, opacity=1, on_focus_lost_hide=False),
        DropDown("gpt", "firefox https://chat.openai.com https://messenger.com https://2027a.net/m/notes",
                 x=0.15, y=0.06, height=0.85, width=0.7,
                 opacity=1, on_focus_lost_hide=False),
        DropDown("bitwarden", "bitwarden", x=0.15, y=0.06,
                 height=0.85, width=0.7, opacity=1, on_focus_lost_hide=False),
        DropDown("ytmusic", "flatpak run app.ytmdesktop.ytmdesktop", x=0.15, y=0.06, height=0.85,
                 width=0.7, opacity=1, on_focus_lost_hide=False),
        DropDown("keepassxc", "keepassxc %f", x=0.15, y=0.06, height=0.85,
                 width=0.7, opacity=1, on_focus_lost_hide=False),
        DropDown("ranger", "kitty -e ranger", x=0.15, y=0.06, height=0.85,
                 width=0.7, opacity=1, on_focus_lost_hide=False),
    ],
               single=True,
               ),
]

scratchpad_keys = [
    # ScratchPads
    Key([mod], "s", lazy.group["scratchpad"].dropdown_toggle("term")),
    Key([mod], "g", lazy.group["scratchpad"].dropdown_toggle("gpt")),
    Key([mod], "b", lazy.group["scratchpad"].dropdown_toggle("bitwarden")),
    Key([mod], "y", lazy.group["scratchpad"].dropdown_toggle("yt-music")),
    Key([mod], "p", lazy.group["scratchpad"].dropdown_toggle("ranger")),
    Key([mod], "p", lazy.group["scratchpad"].dropdown_toggle("keepassxc")),
]
