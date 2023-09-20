-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'ThePrimeagen/vim-be-good'

  use({
    'sainnhe/sonokai',
    as = 'sonokai',
    config = function()
      vim.cmd('colorscheme sonokai')
    end
  })
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  })

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({
        with_sync = true
      })
      ts_update()
    end
  }
  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {     -- LSP Support
      { 'neovim/nvim-lspconfig' }, { 'williamboman/mason.nvim' }, { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, { 'hrsh7th/cmp-buffer' }, { 'hrsh7th/cmp-path' }, { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' }, { 'hrsh7th/cmp-nvim-lua' }, -- Snippets
      { 'L3MON4D3/LuaSnip' }, { 'rafamadriz/friendly-snippets' } }
  }

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")
  use 'kyazdani42/nvim-web-devicons'   -- File icons
  use 'hrsh7th/cmp-buffer'             -- nvim-cmp source for buffer words
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'nvim-lualine/lualine.nvim'   -- Statusline
  use 'onsails/lspkind-nvim'        -- vscode-like pictograms
  use 'danilamihailov/beacon.nvim'

  -- File explorer Side View (like VSCode) Currently using "nvim-telescope/telescope-file-browser.nvim" instead
  -- use { -- filesystem navigation
  --     'kyazdani42/nvim-tree.lua',
  --     requires = 'nvim-tree/nvim-web-devicons' -- filesystem icons
  -- }

  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use 'lewis6991/gitsigns.nvim'
  use 'vimwiki/vimwiki'
  use('neovim/nvim-lspconfig')
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
end)
