local catppuccin = require("catppuccin")
local colors = require("palettes").get_palette()

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
    transparent_background = false,
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {
      all = colors,
    },
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
    },
    custom_highlights = function(C)
			return {
				CmpItemKindSnippet = { fg = colors.mauve, bg = colors.mauve },
				CmpItemKindKeyword = { fg = colors.mauve, bg = colors.red },
				CmpItemKindText = { fg = colors.mauve, bg = colors.teal },
				CmpItemKindMethod = { fg = colors.mauve, bg = colors.blue },
				CmpItemKindConstructor = { fg = colors.mauve, bg = colors.blue },
				CmpItemKindFunction = { fg = colors.mauve, bg = colors.blue },
				CmpItemKindFolder = { fg = colors.mauve, bg = colors.blue },
				CmpItemKindModule = { fg = colors.mauve, bg = colors.blue },
				CmpItemKindConstant = { fg = colors.mauve, bg = colors.peach },
				CmpItemKindField = { fg = colors.mauve, bg = colors.green },
				CmpItemKindProperty = { fg = colors.mauve, bg = colors.green },
				CmpItemKindEnum = { fg = colors.mauve, bg = colors.green },
				CmpItemKindUnit = { fg = colors.mauve, bg = colors.green },
				CmpItemKindClass = { fg = colors.mauve, bg = colors.yellow },
				CmpItemKindVariable = { fg = colors.mauve, bg = colors.flamingo },
				CmpItemKindFile = { fg = colors.mauve, bg = colors.blue },
				CmpItemKindInterface = { fg = colors.mauve, bg = colors.yellow },
				CmpItemKindColor = { fg = colors.mauve, bg = colors.red },
				CmpItemKindReference = { fg = colors.mauve, bg = colors.red },
				CmpItemKindEnumMember = { fg = colors.mauve, bg = colors.red },
				CmpItemKindStruct = { fg = colors.mauve, bg = colors.blue },
				CmpItemKindValue = { fg = colors.mauve, bg = colors.peach },
				CmpItemKindEvent = { fg = colors.mauve, bg = colors.blue },
				CmpItemKindOperator = { fg = colors.mauve, bg = colors.blue },
				CmpItemKindTypeParameter = { fg = colors.mauve, bg = colors.blue },
				CmpItemKindCopilot = { fg = colors.mauve, bg = colors.teal },
			}
	  end,   
})

vim.cmd('colorscheme catppuccin')
