return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button('c', '  Chercher', ':Telescope find_files  <CR>'),
      dashboard.button('r', '󰋚  Récents', ':Telescope oldfiles <CR>'),
      dashboard.button('n', '  Nouveau', ':ene <BAR> startinsert <CR>'),
      dashboard.button('q', '󰅚  Quitter', ':qa<CR>'),
    }

    dashboard.config.opts.noautocmd = true

    vim.cmd [[autocmd User AlphaReady echo 'ready']]

    alpha.setup(dashboard.config)
  end,
}
