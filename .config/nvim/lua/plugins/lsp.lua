require'lspconfig'.pyright.setup{on_attach = require'compe'.on_attach}
-- require'lspconfig'.pyright.setup{on_attach = require'completion'.on_attach}
-- vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
        signs = false
    }
)
