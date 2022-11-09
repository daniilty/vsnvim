local catppuccin = require("catppuccin")

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
      all = {
            rosewater = "#F5E0DC",
            flamingo = "#F2CDCD",
            pink = "#F5C2E7",
            mauve = "#C1AAEC",
            red = "#ECAAAA",
            maroon = "#EBA0AC",
            peach = "#FAB387",
            yellow = "#ECE5AA",
            green = "#AAECAD",
            teal = "#AAECAD",
            sky = "#89DCEB",
            sapphire = "#74C7EC",
            blue = "#AAB2EC",
            lavender = "#C1AAEC",

            text = "#E3E3E3",
            subtext1 = "#BAC2DE",
            subtext0 = "#A6ADC8",
            overlay2 = "#9399B2",
            overlay1 = "#7F849C",
            overlay0 = "#6C7086",
            surface2 = "#585B70",
            surface1 = "#45475A",
            surface0 = "#313244",

            base = "#181B21",
            mantle = "#13151A",
            crust = "#111417",
        }
    },
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
    },
})

vim.cmd('colorscheme catppuccin')
