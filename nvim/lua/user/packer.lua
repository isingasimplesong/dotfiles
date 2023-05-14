-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Autocommand that reloads neovim whenever you save the plugins.lua file
    vim.cmd([[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
    ]])

    -- Use a protected call so we don't error out on first use
    local status_ok, packer = pcall(require, "packer")
    if not status_ok then
        return
    end

    -- Have packer use a popup window
    packer.init({
        display = {
            open_fn = function()
                return require("packer.util").float({ border = "rounded" })
            end,
        },
    })

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        -- or  asdedeg                          , branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use({
        "goolord/alpha-nvim",
        config = function()
            require("alpha").setup(require("alpha.themes.dashboard").config)
        end,
    })
    use({ "rmehri01/onenord.nvim" })
    use("sainnhe/sonokai")
    use("olimorris/onedarkpro.nvim")
    use("Mofiqul/dracula.nvim")
    use("catppuccin/nvim")
    use("sainnhe/gruvbox-material")
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("nvim-treesitter/playground")
    use("ThePrimeagen/harpoon")
    use("mbbill/undotree")
    use("kyazdani42/nvim-tree.lua")
    use("farmergreg/vim-lastplace")
    use("tpope/vim-fugitive")
    use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
    use("moll/vim-bbye") --  meilleur :Bdelete (buffer delete)
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    use("lewis6991/gitsigns.nvim")
    use("akinsho/toggleterm.nvim")
    use("ahmedkhalf/project.nvim")
    use("lewis6991/impatient.nvim")
    use("lukas-reineke/indent-blankline.nvim")
    use("folke/which-key.nvim")
    use({ "rrethy/vim-hexokinase", run = "make" })
    use("xiyaowong/nvim-transparent")
    use("folke/zen-mode.nvim")
    use("nvim-lualine/lualine.nvim")
    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" }, -- Required
            { -- Optional
            "williamboman/mason.nvim",
            run = function()
                pcall(vim.cmd, "MasonUpdate")
            end,
        },
        { "williamboman/mason-lspconfig.nvim" }, -- Optional

        -- Autocompletion
        { "hrsh7th/nvim-cmp" }, -- Required
        { "hrsh7th/cmp-nvim-lsp" }, -- Required
        { "L3MON4D3/LuaSnip" }, -- Required
    },
})
end)
