from libqtile import bar, widget
from libqtile.config import Screen
from colors import colors

widget_defaults = dict(
    font="Cantarell",
    fontsize=14,
    padding=3,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayoutIcon(
                    scale=0.7,
                ),
                widget.GroupBox(
                    highlight_method="block",
                    this_current_screen_border=colors[14],
                    block_highlight_text_color=colors[3],
                    disable_drag=True,
                    active=colors[4],
                    hide_unused=True,
                    padding=2,
                ),
                widget.Prompt(
                    prompt=">>> ",
                    background=colors[11],
                    foreground=colors[6],
                ),
                widget.Spacer(5),
                widget.TaskList(
                    fontsize=15,
                    icon_size=15,
                    border=colors[3],
                    foreground=colors[6],
                    highlight_method="block",
                    margin=2,
                    padding=2,
                    padding_x=5,
                    spacing=2,
                    theme_mod="prefered",
                    rounded=True,
                    txt_floating="󰍝 ",
                ),
                widget.TextBox(
                    "",
                    padding=7,
                    fontsize=12,
                ),
                widget.Clock(format="%H:%M",
                             timezone="Europe/Paris"),
                widget.WidgetBox(
                    text_closed="",
                    text_open="",
                    close_button_location="right",
                    widgets=[
                        widget.TextBox(
                            "󰃮",
                            padding=7,
                        ),
                        widget.Clock(format="%A %d %B"),
                        #                        widget.TextBox(
                        #                        "| VA :",
                        #                            padding=2,
                        #                        ),
                        #                       widget.Clock(
                        #                           format="%H:%M",
                        #                            timezone="America/Vancouver",
                        #                        ),
                        #                        widget.TextBox(
                        #                        "| UTC :",
                        #                            padding=2,
                        #                        ),
                        #                        widget.Wttr(
                        #                            format="1",
                        #                            location={"Montreal": "Montréal"},
                        #                        ),
                        widget.TextBox(
                            "󰕾",
                            padding=8,
                        ),
                        widget.Volume(),
                        widget.Systray(),
                    ],
                ),
                widget.BatteryIcon(
                    theme_path="/usr/share/icons/Papirus-Dark/24x24/panel/",
                    scale=1.25,
                ),
                widget.Battery(
                    format="{char} {percent:1.0%}",
                    charge_char="",
                    unknown_char="",
                    discharge_char="",
                    full_char="",
                    empty_char="",
                    low_percentage=0.15,
                    low_foreground=colors[11],
                    padding=0,
                ),
                widget.Spacer(6),
            ],
            27,
            background=colors[0],
        ),
    ),
]
