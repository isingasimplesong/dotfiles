local opts = { noremap = true, silent = true }
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- no arrows keys allowed
vim.keymap.set("n", "<Up>", "<Nop>", {})
vim.keymap.set("n", "<Down>", "<Nop>", {})
vim.keymap.set("n", "<Left>", "<Nop>", {})
vim.keymap.set("n", "<Right>", "<Nop>", {})
-- alternate theme
vim.keymap.set("n", "<leader>1", ":colorscheme onenord<cr>", opts)
vim.keymap.set("n", "<leader>2", ":colorscheme onedark<cr>", opts)
vim.keymap.set("n", "<leader>3", ":colorscheme catppuccin-frappe<cr>", opts)
vim.keymap.set("n", "<leader>4", ":colorscheme gruvbox-material<cr>", opts)
vim.keymap.set("n", "<leader>5", ":colorscheme sonokai<cr>", opts)
vim.keymap.set("n", "<leader>6", ":colorscheme dracula<cr>", opts)

-- toggle relative numbers
vim.keymap.set("n", "<leader>=", ":set relativenumber!<cr>", opts)
-- split
vim.keymap.set("n", "<leader>\\", ":vsplit<cr>", opts)
vim.keymap.set("n", "<leader>-", ":split<cr>", opts)

-- Zen mode
vim.keymap.set("n", "<leader>z", ":ZenMode<cr>", opts)

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
vim.keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
vim.keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode 
-- vim.keymap.set("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Move text up and down
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==", opts)
vim.keymap.set("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

