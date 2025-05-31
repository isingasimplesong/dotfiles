-- For conciseness
local opts = { noremap = true, silent = true }

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', opts)

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, vim.tbl_extend('force', { desc = 'Open diagnostic [Q]uickfix list' }, opts))
vim.keymap.set('n', '<leader>d', function()
  vim.diagnostic.open_float(nil, {
    border = 'rounded', -- or 'rounded', 'double', 'shadow', etc.
    focusable = false,
  })
end, vim.tbl_extend('force', { desc = 'Open floating diagnostic message' }, opts))

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Numbers
vim.keymap.set('n', '<localleader>n', '<cmd>set relativenumber! nonumber<CR>', vim.tbl_extend('force', { desc = 'Toggle relative [N]umbers' }, opts))

-- colorcolumn
vim.keymap.set('n', '<leader>tc', function()
  local current = vim.wo.colorcolumn
  vim.wo.colorcolumn = current == '' and '88' or ''
end, vim.tbl_extend('force', { desc = 'Toggle [C]olumn' }, opts))

-- Spellcheck
vim.keymap.set('n', '<localleader>sc', '<cmd>setlocal spell!<CR>', vim.tbl_extend('force', { desc = 'Toggle [S]pell check' }, opts))
vim.keymap.set('n', '<localleader>sf', '<cmd>set spelllang=fr<CR>', vim.tbl_extend('force', { desc = '[S]pell check [F]R' }, opts))
vim.keymap.set('n', '<localleader>se', '<cmd>set spelllang=en<CR>', vim.tbl_extend('force', { desc = '[S]pell check [E]N' }, opts))

-- Oil.nvim
vim.keymap.set('n', '-', '<cmd>Oil<CR>', opts)

-- Avante
vim.keymap.set('n', '<leader>aC', '<cmd>AvanteToggle<CR><cmd>AvanteClear<CR><cmd>AvanteToggle<CR>', vim.tbl_extend('force', { desc = 'avante: clear' }, opts))

-- Close buffer
vim.keymap.set('n', '<leader>c', '<cmd>bdelete<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>e', '<cmd> enew <CR>', opts) -- new buffer
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)

-- quit/close
vim.keymap.set('n', '<leader>x', '<cmd>q<CR>', vim.tbl_extend('force', { desc = 'Quit' }, opts))
vim.keymap.set('n', '<leader>xx', '<cmd>q!<CR>', vim.tbl_extend('force', { desc = 'Force quit' }, opts))

-- text wrap
vim.keymap.set('n', '<localleader>w', '<cmd>set wrap!<CR>', vim.tbl_extend('force', { desc = 'Toggle text [W]rap' }, opts))

-- save
vim.keymap.set('n', '<leader>w', '<cmd>write<CR>', opts)

-- copy the complete buffer
vim.keymap.set('n', 'yc', '<cmd>%y<CR>', vim.tbl_extend('force', { desc = 'Yank [c]omplete file' }, opts))

-- splits
vim.keymap.set('n', '<leader>\\', '<cmd>vsplit<CR>', opts)
vim.keymap.set('n', '<leader>-', '<cmd>split<CR>', opts)
vim.keymap.set('n', '<leader>xs', '<cmd>close<CR>', vim.tbl_extend('force', { desc = 'Close split' }, opts))

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- delete single charachetr without copying to register
vim.keymap.set('n', 'x', '"_x', opts)

-- folds
vim.keymap.set('n', '<localleader>f', 'za', vim.tbl_extend('force', { desc = 'Toggle [F]old under the cursor' }, opts))

-- notifications
vim.keymap.set('n', '<leader>nd', '<cmd>NoiceDismiss<CR>', vim.tbl_extend('force', { desc = '[N]otifications [D]ismiss' }, opts))
vim.keymap.set('n', '<leader>nh', '<cmd>Noice<CR>', vim.tbl_extend('force', { desc = '[N]otifications [H]istory' }, opts))

-- git stuff
vim.keymap.set('n', '<leader>gp', '<cmd>Gitsigns preview_hunk<CR>', vim.tbl_extend('force', { desc = '[G]it [p]review hunk' }, opts))
vim.keymap.set('n', '<leader>gb', '<cmd>Gitsigns toggle_current_line_blame <CR>', vim.tbl_extend('force', { desc = 'Toggle [G]it [B]lame' }, opts))

-- toggle term
vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', vim.tbl_extend('force', { desc = 'Set Terminal to [f]loat' }, opts))
vim.keymap.set('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<CR>', vim.tbl_extend('force', { desc = 'Set Terminal to [v]ertical' }, opts))
vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', vim.tbl_extend('force', { desc = 'Set Terminal to [h]orizontal' }, opts))

-- undotree
vim.keymap.set('n', '<localleader>u', '<cmd>UndotreeToggle<CR>', vim.tbl_extend('force', { desc = 'Toggle to [U]ndoTree' }, opts))

-- Markdown preview
vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreview<CR>', vim.tbl_extend('force', { desc = '[Markdown] [P]review' }, opts))
vim.keymap.set('n', '<leader>ms', '<cmd>MarkdownPreviewStop<CR>', vim.tbl_extend('force', { desc = '[Markdown] preview [S]top' }, opts))
vim.keymap.set('n', '<leader>mt', '<cmd>MarkdownPreviewToggle<CR>', vim.tbl_extend('force', { desc = '[Markdown] preview Toggle' }, opts))

-- Obsidian
-- Move to ~/Notes/all
vim.api.nvim_create_user_command('MoveNoteToAll', function()
  local file = vim.fn.expand '%:p' -- Obtenir le chemin complet du fichier ouvert
  local target_dir = vim.fn.expand '~/Notes/all/' -- Résoudre le chemin du dossier cible

  -- Vérifier si le fichier existe
  if vim.fn.filereadable(file) == 1 then
    -- Utiliser une commande shell pour déplacer le fichier
    local cmd = 'mv ' .. vim.fn.shellescape(file) .. ' ' .. vim.fn.shellescape(target_dir)
    vim.fn.system(cmd)

    -- Vérifier si la commande s'est bien exécutée
    if vim.fn.filereadable(target_dir .. vim.fn.fnamemodify(file, ':t')) == 1 then
      -- Fermer le buffer après déplacement si le fichier a bien été déplacé
      vim.cmd 'bdelete!'
    else
      vim.notify("Erreur : Le fichier n'a pas été déplacé.", vim.log.levels.ERROR)
    end
  else
    vim.notify('Impossible de déplacer : fichier non valide.', vim.log.levels.ERROR)
  end
end, { nargs = 0 })

-- Delete note
vim.api.nvim_create_user_command('DeleteNote', function()
  local file = vim.fn.expand '%:p' -- Obtenir le chemin complet du fichier ouvert

  -- Vérifier si le fichier existe
  if vim.fn.filereadable(file) == 1 then
    -- Utiliser une commande shell pour supprimer le fichier
    local cmd = 'rm ' .. vim.fn.shellescape(file)
    vim.fn.system(cmd)

    -- Fermer le buffer après suppression
    vim.cmd 'bdelete!'
  else
    vim.notify('Impossible de supprimer : fichier non valide.', vim.log.levels.ERROR)
  end
end, { nargs = 0 })

-- Obsidian keymaps
vim.keymap.set('n', '<leader>on', '<cmd>ObsidianNew<CR>', vim.tbl_extend('force', { desc = '[N]ouvelle note' }, opts))
vim.keymap.set('n', '<leader>oj', '<cmd>ObsidianToday<CR>', vim.tbl_extend('force', { desc = 'Note [J]ournalière' }, opts))
vim.keymap.set('n', '<leader>ow', '<cmd>ObsidianDailies<CR>', vim.tbl_extend('force', { desc = '[W] Notes Journalières' }, opts))
vim.keymap.set('n', '<leader>oq', '<cmd>ObsidianQuickSwitch<CR>', vim.tbl_extend('force', { desc = '[Q]uick switch' }, opts))
vim.keymap.set('n', '<leader>os', '<cmd>ObsidianSearch<CR>', vim.tbl_extend('force', { desc = '[S]earch notes' }, opts))
vim.keymap.set('n', '<leader>ot', '<cmd>ObsidianNewFromTemplate<CR>', vim.tbl_extend('force', { desc = 'new from Template ' }, opts))
vim.keymap.set('n', '<leader>oa', '<cmd>ObsidianTags<CR>', vim.tbl_extend('force', { desc = 'T[a]gs picker' }, opts))
vim.keymap.set('n', '<leader>oc', '<cmd>ObsidianTOC<CR>', vim.tbl_extend('force', { desc = 'Table of [C]ontent' }, opts))
vim.keymap.set('n', '<leader>ob', '<cmd>ObsidianBacklinks<CR>', vim.tbl_extend('force', { desc = '[B]acklinks' }, opts))
vim.keymap.set('n', '<leader>oi', '<cmd>ObsidianLinks<CR>', vim.tbl_extend('force', { desc = 'L[i]nks' }, opts))
vim.keymap.set('n', '<leader>or', '<cmd>ObsidianRename<CR>', vim.tbl_extend('force', { desc = '[R]enomer la note' }, opts))
vim.keymap.set('n', '<leader>od', '<cmd>DeleteNote<CR>', vim.tbl_extend('force', { desc = '[D]elete note' }, opts))
vim.keymap.set('n', '<leader>ov', '<cmd>MoveNoteToAll<CR>', vim.tbl_extend('force', { desc = '[V]alider la note' }, opts))
-- visual mode obsidian
vim.keymap.set('v', '<leader>ol', '<cmd>ObsidianLink<CR>', vim.tbl_extend('force', { desc = '[L]ien' }, opts))
vim.keymap.set('v', '<leader>oo', '<cmd>ObsidianLinkNew<CR>', vim.tbl_extend('force', { desc = '[O]bs. nouveau lien' }, opts))
vim.keymap.set('v', '<leader>oe', '<cmd>ObsidianExtractNote<CR>', vim.tbl_extend('force', { desc = '[E]xtraire la note' }, opts))

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', vim.tbl_extend('force', { desc = 'Move focus to the left window' }, opts))
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', vim.tbl_extend('force', { desc = 'Move focus to the right window' }, opts))
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', vim.tbl_extend('force', { desc = 'Move focus to the lower window' }, opts))
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', vim.tbl_extend('force', { desc = 'Move focus to the upper window' }, opts))

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>', opts)
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>', opts)
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>', opts)
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>', opts)

-- Resize splits with arrows
-- vim.keymap.set('n', '<Up>', '<cmd>resize -2<CR>', opts)
-- vim.keymap.set('n', '<Down>', '<cmd>resize +2<CR>', opts)
-- vim.keymap.set('n', '<Left>', '<cmd>vertical resize -2<CR>', opts)
-- vim.keymap.set('n', '<Right>', '<cmd>vertical resize +2<CR>', opts)
