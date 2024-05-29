-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 'rebelot/kanagawa.nvim', as = 'kanagawa' })

  vim.cmd('colorscheme kanagawa')

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use{
      'ThePrimeagen/harpoon',
      branch = 'harpoon2',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use({
      "aserowy/tmux.nvim",
      config = function () return require("tmux").setup() end
  })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  }
}

use {
    'SmiteshP/nvim-navic',
    requires = 'neovim/nvim-lspconfig'
}

use { 'nvim-tree/nvim-web-devicons' }
use { 'lewis6991/gitsigns.nvim' }
use { 'romgrk/barbar.nvim' }
use { 'terrortylor/nvim-comment' }
use { 'folke/which-key.nvim' }
use { 'jose-elias-alvarez/null-ls.nvim' }
use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

use { 'LintaoAmons/scratch.nvim' }
use({
    "kylechui/nvim-surround",
    tag = "*",
})
use { 'simrat39/rust-tools.nvim' }
use { 'lukas-reineke/indent-blankline.nvim' }
use { 'NvChad/nvim-colorizer.lua' }
use { 'stevearc/oil.nvim' }
end)
