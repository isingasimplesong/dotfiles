from libqtile import layout
from colors import colors

layouts = [
    layout.MonadTall(border_width=0, ratio=0.6, margin=8,),
    layout.MonadWide(border_width=0, ratio=0.6, margin=8,),
    layout.RatioTile(border_width=0, margin=8,),
    layout.Columns(
        border_focus_stack=[colors[11], colors[12]],
        border_width=0,
        margin=8,
        ),
    layout.Floating(border_width=0,),
    layout.Max(border_width=0, margin=8,),
]
