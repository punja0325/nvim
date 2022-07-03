return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'  -- colorscheme
    -- vim-tree

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'rcarriga/nvim-notify' 
    use 'nvim-lualine/lualine.nvim' 
    use 'romgrk/barbar.nvim' 
    -- use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-refactor' 
    -- use 'nvim-treesitter/playground' 
    use 'p00f/nvim-ts-rainbow' 
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


    -- LSP plugins
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    -- lsp cmp
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind.nvim' -- 

end)
