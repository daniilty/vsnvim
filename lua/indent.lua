local colors = require("palettes").get_palette()

vim.cmd ("highlight IndentBlanklineIndent1 guifg=" .. colors.red .. " gui=nocombine")
vim.cmd ("highlight IndentBlanklineIndent2 guifg=" .. colors.yellow .. " gui=nocombine")
vim.cmd ("highlight IndentBlanklineIndent3 guifg=" .. colors.green .. " gui=nocombine")
vim.cmd ("highlight IndentBlanklineIndent4 guifg=" .. colors.teal.. " gui=nocombine")
vim.cmd ("highlight IndentBlanklineIndent5 guifg=" .. colors.blue .. " gui=nocombine")
vim.cmd ("highlight IndentBlanklineIndent6 guifg=" .. colors.lavender .. " gui=nocombine")

vim.opt.list = true

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  use_treesitter = true,
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  },
}
