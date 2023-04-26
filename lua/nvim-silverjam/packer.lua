vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  --use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('tpope/vim-sensible')
  use('LnL7/vim-nix')
end)
