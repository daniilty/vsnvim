return {
  {
    'nvim-lualine/lualine.nvim',
    lazy = true,
  },
  
  {
    'catppuccin/nvim',
    name = 'catppuccin'
  },

  {
    'kyazdani42/nvim-web-devicons',
    lazy = true,
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
    end,
  },
  
  {
    'lukas-reineke/indent-blankline.nvim',
    lazy = true,
  },
  
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
             '                                       ',
             '                                       ',
             '                           ▓▓▓▓▓▓▓     ',
             '                       ▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ',
             '                     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
             '                   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
             '  ▓▓             ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
             '▓▓▓▓▓▓▓        ▓▓▓▓▓▓▓▓▓▓▓▓▓ ▒▓▓▓▓▓▓▓▓▓',
             '▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓    ░▓▓▓▓▓▓▓▓▓',
             '  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓      ░▓▓▓▓▓▓▓▓▓',
             '    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓         ▓▓▓▓▓▓▓▓▓▓',
             '      ▓▓▓▓▓▓▓▓▓▓▓▓           ▓▓▓▓▓▓▓▓▓▓',
             '    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓         ▓▓▓▓▓▓▓▓▓▓',
             '  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓      ▒▓▓▓▓▓▓▓▓▓',
             '▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓    ▒▓▓▓▓▓▓▓▓▓',
             '▓▓▓▓▓▓▓        ▓▓▓▓▓▓▓▓▓▓▓▓▓ ▒▓▓▓▓▓▓▓▓▓',
             '  ▓▓             ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
             '                   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
             '                     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓',
             '                        ▓▓▓▓▓▓▓▓▓▓▓▓▓  ',
             '                          ▓▓▓▓▓▓▓      ',
             '                                       ',
             '                                       ',
          },
          center = {
            {
              icon = ' ',
              icon_hl = '@variable',
              desc = 'File Browser',
              group = 'Label',
              action = 'Telescope find_files',
              key = 'f',
            },
            {
              icon = ' ',
              icon_hl = '@variable',
              desc = 'Search Text',
              group = 'Label',
              action = 'Telescope live_grep',
              key = 'a',
            },
          },
          footer = {
            '                                             ',
            '            Visual Studio Code               ',
            '             Editing evolved                 '
          },
          week_header = {
           enable = false,
          },
        },
      }
    end,
    dependencies = {'nvim-tree/nvim-web-devicons'},
    lazy = true,
  },

  -- productivity
  {
    'akinsho/nvim-toggleterm.lua',
    lazy = true,
  },
  
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    lazy = true,
  },

  {
    'kyazdani42/nvim-tree.lua',
    dependencies = {
      'kyazdani42/nvim-web-devicons',
    },
    lazy = true,
  },

  {
    'nvim-telescope/telescope.nvim', version = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = true,
  }, 
 
  {
    'nvim-pack/nvim-spectre',
    dependencies = { {'nvim-lua/plenary.nvim'} },
    lazy = true,
  },
  
  {
  'folke/zen-mode.nvim',
    lazy = true,
  },
  
  -- autocomplete/language servers stuff
  {
  'hrsh7th/nvim-cmp',
    lazy = false,
  },
  {
  'hrsh7th/cmp-buffer',
    lazy = false,
  },
  {
  'hrsh7th/cmp-path',
    lazy = false,
  },
  {
  'hrsh7th/cmp-cmdline',
    lazy = false,
  },
  {
  'uga-rosa/cmp-dictionary',
    lazy = false,
  },
  {
  'hrsh7th/cmp-nvim-lsp',
    lazy = true,
  },
  {
  'neovim/nvim-lspconfig',
    lazy = true,
  },
  
  {
    'onsails/lspkind.nvim',
    name = 'lspkind'
  },
  
  {
    'ray-x/go.nvim',
    lazy = true,
  },
  {
    'ray-x/guihua.lua',
    lazy = true,
  },
  {
    'mfussenegger/nvim-dap',
    lazy = true,
  },
  {
    'rcarriga/nvim-dap-ui',
    lazy = true,
  },
  {
    'theHamsta/nvim-dap-virtual-text',
    lazy = true,
  },
  {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end,
    lazy = true,
  },
 
  -- git stuff
  {
  'lewis6991/gitsigns.nvim', 
    lazy = true,
  },
}
