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
      [[                                                                       ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button('e', '  Nouveau', ':ene <BAR> startinsert <CR>'),
      dashboard.button('.', '󰋚  Récents', ':Telescope oldfiles <CR>'),
      dashboard.button('/', '  Chercher', ':Telescope find_files  <CR>'),
      dashboard.button('\\', '󰱽 Grep', ':Telescope live_grep  <CR>'),
      dashboard.button('l', '  Mettre à jour', ':Lazy update<CR>'),
      dashboard.button('q', '󰅚  Quitter', ':qa<CR>'),
    }

    dashboard.config.opts.noautocmd = true

    vim.cmd [[autocmd User AlphaReady echo 'ready']]

    alpha.setup(dashboard.config)
  end,
}
