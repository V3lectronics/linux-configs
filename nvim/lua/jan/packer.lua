-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ( 'mbbill/undotree' )
  use ( 'tpope/vim-fugitive' )
  use ( 'tomtom/tcomment_vim' )
  use ( 'AndrewRadev/tagalong.vim' )
  use ( 'airblade/vim-gitgutter' )
  use ( 'm4xshen/autoclose.nvim' )
  use ( 'stevearc/vim-arduino' )
  use ( 'ThePrimeagen/harpoon' )
  -- use ( 'lukas-reineke/cmp-rg')
  use ( 'uga-rosa/cmp-dictionary')

-- use ( 'hrsh7th/nvim-cmp')
--  use (  'vim-airline/vim-airline' )
--  use (  'vim-airline/vim-airline-themes' )



  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}


end)
