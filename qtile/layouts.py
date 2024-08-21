from libqtile import layout
from colors import colors

layouts = [
    layout.MonadTall(border_width=3, ratio=0.55, margin=8, border_focus=colors[14], border_normal=colors[0],),
    layout.MonadWide(border_width=3, ratio=0.55, margin=8,),
    layout.RatioTile(border_width=3, margin=8,),
    layout.Columns(
        border_focus_stack=[colors[11], colors[12]],
        border_width=2,
        margin=8,
        ),
    layout.Floating(border_width=3, border_focus=colors[14], border_normal=colors[0],),
    layout.Max(border_width=3, margin=8,),
]
