-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Crée un groupe et ajoute un autocmd qui supprime les espaces de fin
local group = vim.api.nvim_create_augroup('TrimWhiteSpace', { clear = true })

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*', -- s'applique à tous les fichiers
  callback = function()
    local save_cursor = vim.api.nvim_win_get_cursor(0) -- Sauvegarde la position du curseur
    vim.cmd [[%s/\s\+$//e]] -- Exécute la commande de substitution pour supprimer les espaces de fin
    vim.api.nvim_win_set_cursor(0, save_cursor) -- Restaure la position du curseur
  end,
  group = group,
})
