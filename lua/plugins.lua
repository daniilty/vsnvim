local fn = vim.fn

-- automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

local packer = require('packer')

return packer.startup(function(use)
  -- package manager
  use 'wbthomason/packer.nvim'

  -- some pretty stuff
  use 'nvim-lualine/lualine.nvim'
  use {
    'catppuccin/nvim',
    as = 'catppuccin'
  }
  use 'kyazdani42/nvim-web-devicons'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- productivity
  use 'akinsho/nvim-toggleterm.lua'
  use {
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }

  -- autocomplete/language servers stuff
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'uga-rosa/cmp-dictionary'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'neovim/nvim-lspconfig'
  use {
    'onsails/lspkind.nvim',
    as = 'lspkind'
  }

  -- git stuff
  use 'lewis6991/gitsigns.nvim'
  
  if packer_bootstrap then
    packer.sync()
  end
end)
