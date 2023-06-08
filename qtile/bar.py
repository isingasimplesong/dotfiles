from libqtile import bar, widget
from libqtile.config import Screen
from colors import colors  # Importation de colors depuis colors.py

widget_defaults = dict(
    font="Cantarell",
    fontsize=15,
    padding=3,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayoutIcon(
                    scale=.7,
                ),
                widget.GroupBox(
                    highlight_method='block',
                    this_current_screen_border=colors[14],
                    block_highlight_text_color=colors[1],
                    disable_drag=True,
                    inactive=colors[3],
                    active=colors[9],
                    hide_unused=True,
                    fontsize=15,
                ),
                widget.Prompt(fontsize=15,),
                widget.WindowName(fontsize=15),
                widget.Spacer(length=1),
                widget.TextBox("", padding=8, fontsize=14,),
                widget.PulseVolume(fontsize=15,),
                widget.TextBox("", padding=8, fontsize=12,),
                widget.Battery(
                    format="{char} {percent:1.0%}",
                    charge_char="+",
                    discharge_char="",
                    low_percentage=0.15,
                    low_foreground=colors[11],
                    notify_below=15,
                    fontsize=15,
                    ),
                widget.TextBox("", padding=7, fontsize=12,),
                widget.Clock(format="%H:%M", fontsize=15,),
                widget.Spacer(length=5),
                widget.WidgetBox(
                    close_button_location="right",
                    widgets=[
                        widget.TextBox("󰃮", padding=7,),
                        widget.Clock(format="%A %d %B", fontsize=15,),
                        widget.Wttr(
                            format="1",
                            location={'Montreal': 'Montréal'},
                            fontsize=15,
                            ),
                        widget.Systray(),
                        ]
                    ),
                widget.Spacer(length=5),
            ],
            27,
            background=colors[1],
        ),
        right=bar.Gap(0),
        left=bar.Gap(0),
        bottom=bar.Gap(0),
    ),
]
