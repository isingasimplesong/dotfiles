from libqtile.config import ScratchPad, DropDown
from libqtile.config import Key
from libqtile.lazy import lazy
from keys import mod

scratchpads = [
    ScratchPad("scratchpad", [
        DropDown("term", "kitty", x=0.15, y=0.06, height=0.85,
                 width=0.7, opacity=1, on_focus_lost_hide=False),
        DropDown("gpt", "firefox --new-instance https://chat.openai.com",
                 x=0.15, y=0.06, height=0.85, width=0.7, opacity=1,),
        DropDown("bitwarden", "bitwarden-desktop", x=0.15, y=0.06,
                 height=0.85, width=0.7, opacity=1, on_focus_lost_hide=True),
        DropDown("yt-music", "youtube-music", x=0.15, y=0.06, height=0.85,
                 width=0.7, opacity=1, on_focus_lost_hide=False),
    ]),
]

scratchpad_keys = [
    # ScratchPads
    Key([mod], "s", lazy.group["scratchpad"].dropdown_toggle("term")),
    Key([mod], "g", lazy.group["scratchpad"].dropdown_toggle("gpt")),
    Key([mod], "b", lazy.group["scratchpad"].dropdown_toggle("bitwarden")),
    Key([mod], "y", lazy.group["scratchpad"].dropdown_toggle("yt-music")),
]
