local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- no arrows keys allowed
keymap("n", "<Up>", "<Nop>", {})
keymap("n", "<Down>", "<Nop>", {})
keymap("n", "<Left>", "<Nop>", {})
keymap("n", "<Right>", "<Nop>", {})

--keymap("i", "<Up>", "<Nop>", {})
--keymap("i", "<Down>", "<Nop>", {})
--keymap("i", "<Left>", "<Nop>", {})
--keymap("i", "<Right>", "<Nop>", {})

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

-- Toggle transparency
keymap("n", "<leader>1", ":TransparentToggle<cr>", opts)

-- alternate theme
keymap("n", "<leader>2", ":colorscheme onenord<cr>", opts)
keymap("n", "<leader>3", ":colorscheme catppuccin-frappe<cr>", opts)
keymap("n", "<leader>4", ":colorscheme catppuccin-macchiato<cr>", opts)
keymap("n", "<leader>5", ":colorscheme catppuccin-mocha<cr>", opts)

-- toggle relative numbers
keymap("n", "<leader>=", ":set relativenumber!<cr>", opts)
-- split
keymap("n", "<leader>\\", ":vsplit<cr>", opts)
keymap("n", "<leader>-", ":split<cr>", opts)

-- Zen mode
keymap("n", "<leader>z", ":ZenMode<cr>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
-- Move text up and down
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode 
-- keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

