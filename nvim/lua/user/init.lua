-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

require("user.options")
require("user.keymap")
require("user.lazy")
require("user.telescope")
require("user.treesitter")
require("user.lsp")
require("user.cmp")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
