-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Création d'un groupe d'autocmd nommé TrimWhiteSpace pour y mettre nos autocmds
local group = vim.api.nvim_create_augroup('TrimWhiteSpace', { clear = true })

-- Ajoute un autocmd dans le groupe créé qui supprime les espaces de fin lors de l'enregistrement des fichiers
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*', -- s'applique à tous les fichiers
  callback = function()
    local save_cursor = vim.api.nvim_win_get_cursor(0) -- Sauvegarde la position du curseur
    vim.cmd [[%s/\s\+$//e]] -- Exécute la commande de substitution pour supprimer les espaces de fin
    vim.api.nvim_win_set_cursor(0, save_cursor) -- Restaure la position du curseur
  end,
  group = group,
})
-- vim: ts=4 sts=4 sw=4 et
