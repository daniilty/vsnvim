return function()
  local colors = require("palettes").get_palette()
  local transparent_bg = colors.base

  local custom_theme = {
    normal = {
      a = { bg = transparent_bg, fg = colors.lavender, gui = "bold" },
      b = { bg = colors.mantle, fg = colors.lavender, gui = "bold" },
      c = { bg = colors.lavender, fg = colors.base, gui = "bold" },
    },
    insert = {
      a = { bg = transparent_bg, fg = colors.teal, gui = "bold" },
      b = { bg = colors.mantle, fg = colors.teal, gui = "bold" },
      c = { bg = colors.teal, fg = colors.base, gui = "bold" },
    },
    terminal = {
      a = { bg = colors.base, fg = colors.green, gui = "bold" },
      b = { bg = colors.mantle, fg = colors.green, gui = "bold" },
      c = { bg = colors.green, fg = colors.base, gui = "bold" },
    },
    command = {
      a = { bg = colors.base, fg = colors.peach, gui = "bold" },
      b = { bg = colors.mantle, fg = colors.peach, gui = "bold" },
      c = { bg = colors.peach, fg = colors.base, gui = "bold" },
    },
    visual = {
      a = { bg = colors.base, fg = colors.mauve, gui = "bold" },
      b = { bg = colors.mantle, fg = colors.mauve, gui = "bold" },
      c = { bg = colors.mauve, fg = colors.base, gui = "bold" },
    },
    replace = {
      a = { bg = colors.base, fg = colors.red, gui = "bold" },
      b = { bg = colors.mantle, fg = colors.red, gui = "bold" },
      c = { bg = colors.red, fg = colors.base, gui = "bold" },
    },
    inactive = {
      a = { bg = transparent_bg, fg = colors.surface1 },
      b = { bg = transparent_bg, fg = colors.surface1, gui = "bold" },
      c = { bg = transparent_bg, fg = colors.overlay0 },
    },
  }
  
  require('lualine').setup {
    options = {
        theme = custom_theme,
        component_separators = '⏽',
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            "NvimTree",
            "TelescopePrompt",
            "packer",
            "toggleterm",
        },
        always_divide_middle = true,
        globalstatus = true,
    },
    extensions = {'nvim-tree', 'toggleterm'},
    sections = {
      lualine_a = {
        { 'mode', separator = { left = '', right = '' }, right_padding = 0 },
      },
      lualine_b = {},
      lualine_c = {
        {'filename', separator = { left = '', right = '⏽' }, icon = '󰈔'},
        {'branch', icon = '┃  '},
      },
      lualine_x = {
        {'hostname', separator = { left = '', right = '' }, icon = ''},
      },
      lualine_y = {},
      lualine_z = {
        { 'location', separator = { left = '', right = '' }, left_padding = 1 },
      },
    },
    inactive_sections = {
      lualine_a = { 'filename' },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'location' },
    },
    tabline = {},
  }
end

