return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Themes
  use 'Mofiqul/dracula.nvim'

  -- VScode
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use {'akinsho/bufferline.nvim', tag = "v2.*"}

  -- Requires | Complementos
  use 'nvim-lua/plenary.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Typing
  use 'mattn/emmet-vim'
  use 'tpope/vim-surround'
  use 'p00f/nvim-ts-rainbow'
  use 'tpope/vim-commentary'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- IDE
  use 'lilydjwg/colorizer'
  use 'KabbAmine/vCoolor.vim'
  use 'NTBBloodbath/rest.nvim'
  use 'mg979/vim-visual-multi'
  use 'easymotion/vim-easymotion'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'segeljakt/vim-silicon'

  --AutoComplete
  -- use {'neoclide/coc.nvim', branch = 'release'}
  use 'onsails/lspkind.nvim'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- Snipets
  use {'hrsh7th/nvim-cmp',
      requires = {
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-nvim-lsp',
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets'
      }
  }
end)
