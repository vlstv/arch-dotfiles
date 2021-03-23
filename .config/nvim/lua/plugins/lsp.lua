require'lspconfig'.pyright.setup{on_attach = require'completion'.on_attach}
require'lspconfig'.bashls.setup{on_attach = require'completion'.on_attach}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
        signs = false
    }
)
