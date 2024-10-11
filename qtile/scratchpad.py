from libqtile.config import ScratchPad, DropDown
from libqtile.config import Key
from libqtile.lazy import lazy
from keys import mod

scratchpads = [
    ScratchPad(
        "scratchpad",
        [
            DropDown(
                "term",
                # "kitty -e zellij",
                "kitty -e tmux new-session -A -s main",
                x=0.15,
                y=0.06,
                height=0.85,
                width=0.7,
                opacity=1,
                on_focus_lost_hide=False,
            ),
            DropDown(
                "web",
                "firefox https://chatgpt.com https://ai.2027a.net https://messenger.com",
                x=0.15,
                y=0.06,
                height=0.85,
                width=0.7,
                opacity=1,
                on_focus_lost_hide=False,
            ),
            DropDown(
                "bitwarden",
                "bitwarden-desktop",
                x=0.15,
                y=0.06,
                height=0.85,
                width=0.7,
                opacity=1,
                on_focus_lost_hide=False,
            ),
            DropDown(
                "keepassxc",
                "keepassxc %f",
                x=0.15,
                y=0.06,
                height=0.85,
                width=0.7,
                opacity=1,
                on_focus_lost_hide=False,
            ),
            DropDown(
                "ranger",
                "kitty -e ranger",
                x=0.15,
                y=0.06,
                height=0.85,
                width=0.7,
                opacity=1,
                on_focus_lost_hide=False,
            ),
            DropDown(
                "thunar",
                "thunar",
                x=0.15,
                y=0.06,
                height=0.85,
                width=0.7,
                opacity=1,
                on_focus_lost_hide=False,
            ),
        ],
        single=True,
    ),
]

scratchpad_keys = [
    # ScratchPads
    Key([mod], "w", lazy.group["scratchpad"].dropdown_toggle("term")),
    Key([mod], "g", lazy.group["scratchpad"].dropdown_toggle("web")),
    #Key([mod], "o", lazy.group["scratchpad"].dropdown_toggle("bitwarden")),
    #Key([mod], "p", lazy.group["scratchpad"].dropdown_toggle("keepassxc")),
    Key([mod], "e", lazy.group["scratchpad"].dropdown_toggle("thunar")),
]
