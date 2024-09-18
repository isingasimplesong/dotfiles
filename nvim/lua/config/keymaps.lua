-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Oil.nvim
vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>', { desc = '[E]xplorateur' })

-- Close buffer
vim.keymap.set('n', '<leader>c', '<cmd>bdelete<CR>', { desc = '[C]lose Buffer' })

-- quit/close window/split
vim.keymap.set('n', 'zz', '<cmd>q<CR>', { desc = 'Quit' })

-- text wrap
vim.keymap.set('n', '<localleader>w', '<cmd>set wrap!<CR>', { desc = 'Toggle text [W]rap' })

-- save
vim.keymap.set('n', '<leader>w', '<cmd>write<CR>')

-- splits
vim.keymap.set('n', '<leader>\\', '<cmd>vsplit<CR>')
vim.keymap.set('n', '<leader>-', '<cmd>split<CR>')

-- notifications
vim.keymap.set('n', '<localleader>d', '<cmd>NoiceDismiss<CR>')

-- git stuff
vim.keymap.set('n', '<leader>gp', '<cmd>Gitsigns preview_hunk<CR>', { desc = '[G]it [p]review hunk' })
vim.keymap.set('n', '<leader>gb', '<cmd>Gitsigns toggle_current_line_blame <CR>', { desc = 'Toggle [G]it [B]lame' })

-- toggle term
vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Set [T]erminal to [f]loat' })
vim.keymap.set('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<CR>', { desc = 'Set [T]erminal to [v]ertical' })
vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', { desc = 'Set [T]erminal to [h]orizontal' })

-- undotree
vim.keymap.set('n', '<localleader>u', '<cmd>UndotreeToggle<CR>', { desc = '[T]oggle to [U]ndoTree' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- NOTE: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
