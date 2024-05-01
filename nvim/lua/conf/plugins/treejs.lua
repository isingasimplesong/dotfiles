return {
  'Wansmer/treesj',
  keys = { '<space>m', '<space>j', '<space>k' },
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('treesj').setup {--[[ your config ]]
    }
  end,
}
