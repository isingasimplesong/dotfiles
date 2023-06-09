from libqtile import layout
from colors import colors
from libqtile.config import Match

floating_layout = layout.Floating(
    float_rules=[
        # Run `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="galculator"),
        Match(wm_class="pulsemixer"),
        Match(wm_class="gcolor3"),
        Match(wm_class="org.gnome.DejaDup"),
        Match(wm_class="nitrogen"),
    ],
    border_width=0,
)
