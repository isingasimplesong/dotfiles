-- File and backup settings
vim.opt.backup = false                      -- does not create a backup file
vim.opt.swapfile = false                    -- does not create a swapfile
vim.opt.fileencoding = "utf-8"              -- the encoding written to a file
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- set the undo directory
vim.opt.undofile = true                     -- enable persistent undo
vim.opt.writebackup = false                 -- disallow editing a file that is being edited by another program or has been written to file while editing with another program

-- Indentatiot settings
vim.opt.tabstop = 4                         -- insert 4 spaces for a tab
vim.opt.softtabstop = 4                     -- insert 4 spaces for a soft tab
vim.opt.shiftwidth = 4                      -- the number of spaces inserted for each indentation
vim.opt.expandtab = true                    -- convert tabs to spaces
vim.opt.smartindent = true                  -- make indenting smart

-- Display settings
vim.opt.termguicolors = true                -- set term gui colors (most terminals support this)
-- vim.opt.colorcolumn = "80"                  -- specify the column beyond which the text should be highlighted
vim.opt.cursorline = true                   -- highlight the current line
vim.opt.hlsearch = false                    -- highlight all matches on previous search pattern
vim.opt.incsearch = true                    -- incrementally highlight search matches
vim.opt.conceallevel = 0                    -- make `` visible in markdown files

-- Line number settings
vim.opt.nu = true                           -- set numbered lines
vim.opt.relativenumber = true               -- set relative numbered lines

-- Window and buffer settings
vim.opt.wrap = false                        -- display lines as one long line
vim.opt.scrolloff = 8                       -- keep at least 8 lines visible above and below the cursor
vim.opt.sidescrolloff = 8                   -- keep at least 8 lines visible to the left and right of the cursor
vim.opt.splitbelow = true                   -- force all horizontal splits to go below current window
vim.opt.splitright = true                   -- force all vertical splits to go to the right of current window

-- Interaction settings
vim.opt.mouse = "a"                         -- allow the mouse to be used in neovim
vim.opt.clipboard = "unnamedplus"           -- allows neovim to access the system clipboard
vim.opt.showmode = false                    -- hide mode indicator like -- INSERT --
vim.opt.signcolumn = "yes"                  -- always show the sign column, otherwise it would shift the text each time
vim.opt.ignorecase = true                   -- ignore case in search patterns
vim.opt.smartcase = true                    -- respect case when the search pattern includes uppercase characters
vim.opt.cmdheight = 1                       -- space in the neovim command line for displaying messages
vim.opt.pumheight = 10                      -- pop up menu height
vim.opt.timeoutlen = 100                    -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp

-- Update and redraw settings
vim.opt.updatetime = 50                     -- update interval for 'cursorline', 'cursorcolumn', 'colorcolumn' and 'lazyredraw' (default is 4000ms)
vim.opt.shortmess:append "c"                -- append "c" to 'shortmess' option to avoid showing ins-completion-menu messages

-- Directory settings
vim.opt.autochdir = false                    -- automatically changes the current directory to the directory of the open file

-- File reload settings
vim.opt.autoread = true                     -- automatically reloads a file if it was changed outside of the editor

-- Buffer settings
vim.opt.hidden = true                       -- allows changing buffers without saving

-- Encoding settings
vim.opt.encoding = "utf-8"                  -- sets the character encoding
