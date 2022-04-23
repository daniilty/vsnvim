require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "go", "rust", "javascript", "html", "scss", "css" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false
}
