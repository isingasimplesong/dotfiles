return {
  { -- You can easily change to a different colorscheme.
    'rmehri01/onenord.nvim',
    -- 'ellisonleao/gruvbox.nvim',
    -- 'navarasu/onedark.nvim',
    -- 'rose-pine/neovim',
    -- 'catppuccin/nvim',
    -- 'folke/tokyonight.nvim',
    -- 'Mofiqul/dracula.nvim',
    -- 'sainnhe/sonokai',
    opts = {
      disable = {
        float_background = true,
      },
      enable = {
        cursorline = true,
      },
    },
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      vim.cmd.colorscheme 'onenord'
      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
