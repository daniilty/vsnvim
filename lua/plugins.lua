return {
  {
    'nvim-lualine/lualine.nvim',
    lazy = true,
    config = require('lualine-conf'),
    event = 'BufEnter',
  },
  
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
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
    config = function()
      require('nvim-treesitter.configs').setup(require('treesitter-conf'))
    end,
    event = {
      'BufReadPost *.go',
      'BufReadPost *.rs',
      'BufReadPost *.c',
      'BufReadPost *.gcc',
      'BufReadPost *.h',
      'BufReadPost *.ts',
      'BufReadPost *.js',
      'BufReadPost *.html',
      'BufReadPost *.css',
      'BufReadPost *.scss',
      'BufReadPost *.lua',
    },
    lazy = true,
  },
  
  {
    'lukas-reineke/indent-blankline.nvim',
    lazy = true,
    event = 'BufEnter',
    config = function()
      require("ibl").setup(require('indent'))
    end,
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
    config = function()
      require('toggleterm').setup(require('term'))
    end,
    lazy = true,
    keys = '<C-t>',
  },
  
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    lazy = true,
    event = 'BufEnter',
    config = function ()
      require('bufferline').setup(require('bufferline-conf'))
    end,
  },

  {
    'kyazdani42/nvim-tree.lua',
    dependencies = {
      'kyazdani42/nvim-web-devicons',
    },
    lazy = true,
    config = function()
      require('nvim-tree').setup(require('explorer'))
    end,
    cmd = 'NvimTreeToggle',
  },

  {
    'nvim-telescope/telescope.nvim', version = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = true,
  }, 
 
  {
    'nvim-pack/nvim-spectre',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = true,
  },
  
  {
    'folke/zen-mode.nvim',
    lazy = true,
    config = function()
      require("zen-mode").setup(require('zen'))
    end,
  },
  
  -- autocomplete/language servers stuff
  {
    'hrsh7th/nvim-cmp',
    lazy = true,
    event = "InsertEnter",
    dependencies = {
      'hrsh7th/cmp-buffer',  
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'uga-rosa/cmp-dictionary',
      'hrsh7th/cmp-nvim-lsp',
      {
        'onsails/lspkind.nvim',
        name = 'lspkind',
      },
    },
    config = require('cmp-conf'),
  },
  
  {
    'neovim/nvim-lspconfig',
    lazy = true,               
    config = require('ls'),
    depedencies = {
      {
        'onsails/lspkind.nvim',
        name = 'lspkind',
      },
    },
    event = {
      'BufReadPost *.go',
      'BufReadPost *.rs',
      'BufReadPost *.c',
      'BufReadPost *.gcc',
      'BufReadPost *.h',
      'BufReadPost *.ts',
      'BufReadPost *.js',
      'BufReadPost *.html',
    },
    cmd = { "LspInfo", "LspInstall", "LspUninstall" },
  },
  
  
  {
    'ray-x/go.nvim',
    lazy = true,
    config = function()
      require('go').setup()
    end,
    event = 'BufReadPost *.go',
    dependencies = {
      'ray-x/guihua.lua',
      'mfussenegger/nvim-dap',
      'rcarriga/nvim-dap-ui',
      'theHamsta/nvim-dap-virtual-text',
    },
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
    config = function()
      require('gitsigns').setup(require('git'))
    end,
    lazy = true,
    event = 'BufEnter',
  },
}
