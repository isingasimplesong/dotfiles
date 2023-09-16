---@type ChadrcConfig
local M = {}

M.ui = {
  theme_toggle = { "onenord", "one_light" },
  theme = 'onenord',
  statusline = {
    theme = "default",
    separator_style = "round",
  },
  nvdash = {
    load_on_startup = true,
    header = {
      [[                               __                ]],
    	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
	    [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
	    [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
	    [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
	    [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
    },
  }
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
