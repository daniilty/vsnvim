local catppuccin = require("catppuccin")
local colors = require("palettes").get_palette()
local transparent_background = false

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
    transparent_background = transparent_background,
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
				CmpItemKindSnippet = { fg = colors.base, bg = colors.mauve },
				CmpItemKindKeyword = { fg = colors.base, bg = colors.red },
				CmpItemKindText = { fg = colors.base, bg = colors.teal },
				CmpItemKindMethod = { fg = colors.base, bg = colors.blue },
				CmpItemKindConstructor = { fg = colors.base, bg = colors.blue },
				CmpItemKindFunction = { fg = colors.base, bg = colors.blue },
				CmpItemKindFolder = { fg = colors.base, bg = colors.blue },
				CmpItemKindModule = { fg = colors.base, bg = colors.blue },
				CmpItemKindConstant = { fg = colors.base, bg = colors.peach },
				CmpItemKindField = { fg = colors.base, bg = colors.green },
				CmpItemKindProperty = { fg = colors.base, bg = colors.green },
				CmpItemKindEnum = { fg = colors.base, bg = colors.green },
				CmpItemKindUnit = { fg = colors.base, bg = colors.green },
				CmpItemKindClass = { fg = colors.base, bg = colors.yellow },
				CmpItemKindVariable = { fg = colors.base, bg = colors.flamingo },
				CmpItemKindFile = { fg = colors.base, bg = colors.blue }, CmpItemKindInterface = { fg = colors.base, bg = colors.yellow },
				CmpItemKindColor = { fg = colors.base, bg = colors.red },
				CmpItemKindReference = { fg = colors.base, bg = colors.red },
				CmpItemKindEnumMember = { fg = colors.base, bg = colors.red },
				CmpItemKindStruct = { fg = colors.base, bg = colors.blue },
				CmpItemKindValue = { fg = colors.base, bg = colors.peach },
				CmpItemKindEvent = { fg = colors.base, bg = colors.blue },
				CmpItemKindOperator = { fg = colors.base, bg = colors.blue },
				CmpItemKindTypeParameter = { fg = colors.base, bg = colors.blue },
				CmpItemKindCopilot = { fg = colors.base, bg = colors.teal },
		  	NvimTreeWinSeparator = {
			    fg = colors.surface0,
			    bg = transparent_background and C.none or C.base,
		    },
        WinSeparator = {
			    fg = colors.surface0,
			    bg = transparent_background and C.none or C.base,
        },
    }
	  end,   
})

vim.cmd('colorscheme catppuccin')
