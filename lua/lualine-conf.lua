local colors = require("palettes").get_palette()
local transparent_bg = colors.base

local custom_theme = {
  normal = {
    a = { bg = colors.blue, fg = colors.mantle, gui = "bold" },
    b = { bg = colors.mantle, fg = colors.blue },
    c = { bg = transparent_bg, fg = colors.text },
  },
  insert = {
    a = { bg = colors.green, fg = colors.base, gui = "bold" },
    b = { bg = colors.mantle, fg = colors.teal },
    c = { bg = transparent_bg, fg = colors.text },
  },
  terminal = {
    a = { bg = colors.green, fg = colors.base, gui = "bold" },
    b = { bg = colors.mantle, fg = colors.teal },
    c = { bg = transparent_bg, fg = colors.text },
  },
  command = {
    a = { bg = colors.peach, fg = colors.base, gui = "bold" },
    b = { bg = colors.mantle, fg = colors.peach },
    c = { bg = transparent_bg, fg = colors.text },
  },
  visual = {
    a = { bg = colors.mauve, fg = colors.base, gui = "bold" },
    b = { bg = colors.mantle, fg = colors.mauve },
    c = { bg = transparent_bg, fg = colors.text },
  },
  replace = {
    a = { bg = colors.red, fg = colors.base, gui = "bold" },
    b = { bg = colors.mantle, fg = colors.red },
    c = { bg = transparent_bg, fg = colors.text },
  },
  inactive = {
    a = { bg = transparent_bg, fg = colors.blue },
    b = { bg = transparent_bg, fg = colors.surface1, gui = "bold" },
    c = { bg = transparent_bg, fg = colors.overlay0 },
  },
}

require('lualine').setup {
    options = {
        theme = custom_theme,
        component_separators = '⏽',
        section_separators = { left = '', right = '' },
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
        { 'mode', separator = { left = '', right = '' }, right_padding = 2 },
      },
      lualine_b = { 'branch' },
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {
        { 'location', separator = { left = '', right = '' }, left_padding = 2 },
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

