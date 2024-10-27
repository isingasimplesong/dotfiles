-- swap : with ;
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', ':', ';')

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Numbers
vim.keymap.set('n', '<localleader>n', '<cmd>set relativenumber! nonumber<CR>', { desc = 'Toggle relative [N]umbers' })

-- Spellcheck
vim.keymap.set('n', '<localleader>sc', '<cmd>setlocal spell!<CR>', { desc = 'Toggle [S]pell check' })
vim.keymap.set('n', '<localleader>sf', '<cmd>set spelllang=fr<CR>', { desc = '[S]pell check [F]R' })
vim.keymap.set('n', '<localleader>se', '<cmd>set spelllang=en<CR>', { desc = '[S]pell check [E]N' })

-- Oil.nvim
vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>', { desc = '[E]xplorateur' })

-- Close buffer
vim.keymap.set('n', '<leader>c', '<cmd>bdelete<CR>', { desc = '[C]lose Buffer' })

-- quit/close window/split
vim.keymap.set('n', '<leader>x', '<cmd>q<CR>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>xx', '<cmd>q!<CR>', { desc = 'Force quit' })

-- text wrap
vim.keymap.set('n', '<localleader>w', '<cmd>set wrap!<CR>', { desc = 'Toggle text [W]rap' })

-- save
vim.keymap.set('n', '<leader>w', '<cmd>write<CR>')

-- splits
vim.keymap.set('n', '<leader>\\', '<cmd>vsplit<CR>')
vim.keymap.set('n', '<leader>-', '<cmd>split<CR>')

-- folds
vim.keymap.set('n', '<localleader>f', 'za', { desc = 'Toggle [F]old under the cursor' })

-- notifications
vim.keymap.set('n', '<leader>nd', '<cmd>NoiceDismiss<CR>', { desc = '[N]otifications [D]ismiss' })
vim.keymap.set('n', '<leader>nh', '<cmd>Noice<CR>', { desc = '[N]otifications [H]istory' })

-- git stuff
vim.keymap.set('n', '<leader>gp', '<cmd>Gitsigns preview_hunk<CR>', { desc = '[G]it [p]review hunk' })
vim.keymap.set('n', '<leader>gb', '<cmd>Gitsigns toggle_current_line_blame <CR>', { desc = 'Toggle [G]it [B]lame' })

-- toggle term
vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Set [T]erminal to [f]loat' })
vim.keymap.set('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<CR>', { desc = 'Set [T]erminal to [v]ertical' })
vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', { desc = 'Set [T]erminal to [h]orizontal' })

-- undotree
vim.keymap.set('n', '<localleader>u', '<cmd>UndotreeToggle<CR>', { desc = 'Toggle to [U]ndoTree' })

-- Markdown preview
vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreview<CR>', { desc = '[Markdown] [P]review' })
vim.keymap.set('n', '<leader>ms', '<cmd>MarkdownPreviewStop<CR>', { desc = '[Markdown] preview [S]top' })
vim.keymap.set('n', '<leader>mt', '<cmd>MarkdownPreviewToggle<CR>', { desc = '[Markdown] preview [T]oggle' })

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
      print "Erreur : Le fichier n'a pas été déplacé."
    end
  else
    print 'Impossible de déplacer : fichier non valide.'
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
    print 'Impossible de supprimer : fichier non valide.'
  end
end, { nargs = 0 })

-- Obsidian keymaps
vim.keymap.set('n', '<leader>on', '<cmd>ObsidianNew<CR>', { desc = '[N]ouvelle note' })
vim.keymap.set('n', '<leader>oj', '<cmd>ObsidianToday<CR>', { desc = 'Note [J]ournalière' })
vim.keymap.set('n', '<leader>ow', '<cmd>ObsidianDailies<CR>', { desc = '[W] Notes Journalières' })
vim.keymap.set('n', '<leader>oq', '<cmd>ObsidianQuickSwitch<CR>', { desc = '[Q]uick switch' })
vim.keymap.set('n', '<leader>os', '<cmd>ObsidianSearch<CR>', { desc = '[S]earch notes' })
vim.keymap.set('n', '<leader>ot', '<cmd>ObsidianNewFromTemplate<CR>', { desc = 'new from [T]emplate ' })
vim.keymap.set('n', '<leader>oa', '<cmd>ObsidianTags<CR>', { desc = 'T[a]gs picker' })
vim.keymap.set('n', '<leader>oc', '<cmd>ObsidianTOC<CR>', { desc = 'Table of [C]ontent' })
vim.keymap.set('n', '<leader>ob', '<cmd>ObsidianBacklinks<CR>', { desc = '[B]acklinks' })
vim.keymap.set('n', '<leader>oi', '<cmd>ObsidianLinks<CR>', { desc = 'L[i]nks' })
vim.keymap.set('n', '<leader>or', '<cmd>ObsidianRename<CR>', { desc = '[R]enomer la note' })
vim.keymap.set('n', '<leader>od', '<cmd>DeleteNote<CR>', { desc = '[D]elete note' })
vim.keymap.set('n', '<leader>ov', '<cmd>MoveNoteToAll<CR>', { desc = '[V]alider la note' })
-- visual mode obsidian
vim.keymap.set('v', '<leader>ol', '<cmd>ObsidianLink<CR>', { desc = '[L]ien' })
vim.keymap.set('v', '<leader>oo', '<cmd>ObsidianLinkNew<CR>', { desc = '[O]bs. nouveau lien' })
vim.keymap.set('v', '<leader>oe', '<cmd>ObsidianExtractNote<CR>', { desc = '[E]xtraire la note' })

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
