local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup('plugins')

require('bindings')
require('opts')
require('ls')
require('cmp-conf')
require('colorscheme')
require('lualine-conf')
require('bufferline-conf')
require('explorer')
require('term')
require('treesitter-conf')
require('git')
require('indent')
require('zen')

