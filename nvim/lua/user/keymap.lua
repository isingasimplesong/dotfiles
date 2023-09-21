local opts = { noremap = true, silent = true }

-- no arrows keys allowed
vim.keymap.set("n", "<Up>", "<Nop>", {})
vim.keymap.set("n", "<Down>", "<Nop>", {})
vim.keymap.set("n", "<Left>", "<Nop>", {})
vim.keymap.set("n", "<Right>", "<Nop>", {})

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Toggle Neotree
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle reveal<cr>', { silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Neotree toggle<cr>', { noremap = true, silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


