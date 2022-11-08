require('lualine').setup {
    options = {
        theme = 'catppuccin',
        component_separators = '⏽',
        section_separators = { left = '', right = '' },
    },
    extensions = {'nvim-tree', 'toggleterm'},
    sections = {
      lualine_a = {
        { 'mode', separator = { left = '', right = '' }, right_padding = 2 },
      },
      lualine_b = { 'filename', 'branch' },
      lualine_c = { 'fileformat' },
      lualine_x = {},
      lualine_y = { 'filetype' },
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

