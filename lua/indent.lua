local colors = require("palettes").get_palette()

vim.opt.list = true

local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = colors.red })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = colors.yellow })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = colors.blue })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = colors.peach })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = colors.green })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = colors.lavender })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = colors.teal })
end)

require("ibl").setup { 
  indent = { highlight = highlight, char = "" },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { enabled = false },
}
