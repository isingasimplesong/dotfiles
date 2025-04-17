-- Highlight groups
vim.api.nvim_set_hl(0, 'MatchParen', { fg = '#ebcb8b', bg = '#bf616a' })
vim.api.nvim_set_hl(0, 'Folded', { fg = '#81a1c1' })
vim.api.nvim_set_hl(0, 'Visual', { bg = '#81a1c1', fg = '#4c566a' })
vim.api.nvim_set_hl(0, 'YankHighlight', { bg = '#a3be8c', fg = '#4c566a' })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank {
      higroup = 'YankHighlight', -- Groupe personnalisé
      timeout = 250, -- Durée du highlight en millisecondes
      on_visual = true,
    }
  end,
})

-- Disable expandtab for Makefiles to ensure Makefile uses tabs, not spaces
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'make',
  callback = function()
    vim.opt_local.expandtab = false
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
