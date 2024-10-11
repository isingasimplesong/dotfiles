return {
  {
    'rmehri01/onenord.nvim',
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
