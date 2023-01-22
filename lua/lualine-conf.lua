require('lualine').setup {
    options = {
        theme = 'catppuccin',
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

