vim.opt.number = true
vim.opt.relativenumber = true

-- spellcheck
vim.opt.spelllang = { 'fr', 'en' }
vim.opt.spell = false

-- set nowrap
vim.opt.wrap = false

-- Tabs are space
vim.opt.expandtab = true -- Remplacer les tabs par des espaces
vim.opt.shiftwidth = 4 -- Indentation de 4 espaces lors des inserts automatiques (comme V-indent)
vim.opt.tabstop = 4 -- Compte un tab comme 4 espaces pour l'affichage
vim.opt.softtabstop = 4 -- Le nombre d'espaces qu'un tab vaut dans le mode insertion

-- conceal
vim.opt.conceallevel = 1

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '│ ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type
vim.opt.inccommand = 'split'

-- highlight cursor
vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

-- Show a vertical line at 88 characters - start hidden
vim.opt.colorcolumn = ''

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

-- theme stuff
vim.opt.background = 'dark'
