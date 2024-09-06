return function()
  local colors = require("palettes").get_palette()
  local lspconfig = require('lspconfig')

  lspconfig.clangd.setup{}
  lspconfig.jsonls.setup {
      commands = {
          Format = {
              function()
                  vim.lsp.buf.range_formatting({}, {0, 0}, {vim.fn.line("$"), 0})
              end
          }
      }
  }

  vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#000000]]
  vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#000000]]

  local border = {
    
    {"╭", "FloatBorder"},
   
    {"─", "FloatBorder"},
    
    {"╮", "FloatBorder"},
    
    {"│", "FloatBorder"},
    
    {"╯", "FloatBorder"},
    
    {"─", "FloatBorder"},
    
    {"╰", "FloatBorder"},
        
    {"│", "FloatBorder"},
  }

  -- LSP settings (for overriding per client)
  local handlers =  {
    ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = border}),
    ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = border }),
  }

  lspconfig.gopls.setup {cmd = {"gopls", "serve"}, settings = {gopls = {analyses = {unusedparams = true}, staticcheck = true}}, handlers = handlers}
  lspconfig.rust_analyzer.setup{handlers = handlers}
  lspconfig.html.setup{handlers = handlers,}
  lspconfig.ts_ls.setup{handlers = handlers}
  lspconfig.pyright.setup{handlers = handlers}

  local signs = {Error = " ", Warn = " ", Hint = " ", Info = " "}

  for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = ""})
  end

  require('vim.lsp.protocol').CompletionItemKind = {
      '', '', 'ƒ', ' ', '', '', '', 'ﰮ', '', '', '', '', '了', ' ', '﬌ ', ' ', ' ', '', ' ', ' ',
      ' ', ' ', '', '', '<>'
  }
 
  vim.diagnostic.config {     
    float = { border = "rounded" }, 
  }

  vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      underline = true,
      virtual_text = {spacing = 5},
      update_in_insert = true,
  })

  vim.cmd('autocmd BufWritePre *.go lua vim.lsp.buf.format()')
  vim.cmd('autocmd BufWritePre *.c lua vim.lsp.buf.format()')
  vim.cmd('autocmd BufWritePre *.rs lua vim.lsp.buf.format()')
  vim.cmd('autocmd BufWritePre *.ts,*.js,*.tsx,*.jsx lua vim.lsp.buf.format()')
end
