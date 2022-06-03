return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Themes
  use 'Mofiqul/dracula.nvim'
  use "ellisonleao/gruvbox.nvim"

  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'phaazon/hop.nvim'
  use 'windwp/nvim-autopairs'
  use 'nvim-treesitter/nvim-treesitter'
  use 'p00f/nvim-ts-rainbow'
  use 'lilydjwg/colorizer'
  use 'KabbAmine/vCoolor.vim'
  use 'mattn/emmet-vim'
  use 'windwp/nvim-ts-autotag'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'tpope/vim-commentary'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use {'akinsho/bufferline.nvim', tag = "v2.*"}

  --AutoComplete
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'onsails/lspkind.nvim'

  -- Snipets
  use {'hrsh7th/nvim-cmp',
      requires = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets'
      }
  }

  use {'nvim-neo-tree/neo-tree.nvim', branch = "v2.x",
        requires = { 
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
    }
  }
end)
