from libqtile.config import Group, ScratchPad, Match
from libqtile.lazy import lazy
from keys import mod, Key
from scratchpad import scratchpads

# groups = [Group(i) for i in "1234567890"]

match_dict = {
    #"8": [Match(wm_class=["discord"])],
    "9": [Match(wm_class=["obsidian"])],
    "0": [Match(wm_class=["thunderbird"])],
    # ajoutez d'autres groupes avec matches ici si nécessaire
}

groups = [Group(i, matches=match_dict.get(i)) for i in "1234567890"]

groups.extend(scratchpads)  # Add scratchpad to groups list

group_keys = []
for i in groups:
    if not isinstance(i, ScratchPad):  # Do not add key bindings for ScratchPad
        group_keys.extend([
            # mod1 + letter of group = switch to group
            Key([mod], i.name, lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name)),
            # mod1 + shift + letter of group = switch & move window to group
            Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name)),
        ])
