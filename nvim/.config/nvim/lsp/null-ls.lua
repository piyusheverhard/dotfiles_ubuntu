require("null-ls").setup({
    debug =false,
    sources = {
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.formatting.prettier,
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.google_java_format,
    },
})

require("null-ls").setup({
    -- you can reuse a shared lspconfig on_attach callback here
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
        end
    end,
})

