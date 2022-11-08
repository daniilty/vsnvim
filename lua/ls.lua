local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

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

lspconfig.gopls.setup {cmd = {"gopls", "serve"}, settings = {gopls = {analyses = {unusedparams = true}, staticcheck = true}}}

lspconfig.rust_analyzer.setup{}

local signs = {Error = " ", Warn = " ", Hint = " ", Info = " "}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = ""})
end

require('vim.lsp.protocol').CompletionItemKind = {
    '', '', 'ƒ', ' ', '', '', '', 'ﰮ', '', '', '', '', '了', ' ', '﬌ ', ' ', ' ', '', ' ', ' ',
    ' ', ' ', '', '', '<>'
}

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = {spacing = 5, severity_limit = 'Warning'},
    update_in_insert = true
})

vim.cmd('autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 1000)')
vim.cmd('autocmd BufWritePre *.c lua vim.lsp.buf.formatting_sync(nil, 1000)')
vim.cmd('autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 1000)')

