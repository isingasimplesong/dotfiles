-- [[ Keymaps ]]
--  See `:help vim.keymap.set()`

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Oil explorer
vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>', { desc = 'Explorer' })

-- toggle text wrap
vim.keymap.set('n', '<leader>tw', '<cmd>set wrap!<CR>', { desc = '[T]oggle text [W]rap' })

-- toggle Cloack
vim.keymap.set('n', '<leader>tc', '<cmd>CloakToggle<CR>', { desc = '[T]oggle [C]loack' })

-- save
vim.keymap.set('n', '<leader>w', '<cmd>write<CR>')

-- folds open
vim.keymap.set('n', '<leader>f', '<cmd>foldopen<CR>')

-- chatGPT
vim.keymap.set('n', '<leader>a', '<cmd>ChatGPT<CR>', { desc = 'ChatGPT' })

-- Diagnostic keymaps
vim.keymap.set('n', 'd[', vim.diagnostic.goto_prev, { desc = 'previous diagnostic' })
vim.keymap.set('n', 'd]', vim.diagnostic.goto_next, { desc = 'next diagnostic' })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { desc = 'diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist, { desc = '[Q]uickfix list' })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Nope!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Nope!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Nope!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Nope!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- splits
vim.keymap.set('n', '<leader>\\', '<cmd>vsplit<CR>')
vim.keymap.set('n', '<leader>-', '<cmd>split<CR>')

-- buffer delete
vim.keymap.set('n', '<leader>c', '<cmd>bdelete<CR>', { desc = 'Close buffer' })

-- Local keymap
-- vim.keymap.set('n', '<localleader>tc', '<cmd>CloakToggle<CR>', { desc = '[T]oggle [C]loack' })

-- vim: ts=4 sts=4 sw=4 et
