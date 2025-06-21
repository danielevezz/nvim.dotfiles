-- keymaps
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        vim.keymap.set('n', '<C-Space>', '<C-x><C-o>')
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
        vim.keymap.set({ 'n', 'x' }, 'gq', '<cmd>lua vim.lsp.buf.format({async = true})<cr>')

        vim.keymap.set('n', 'grt', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
        vim.keymap.set('n', 'grd', '<cmd>lua vim.lsp.buf.declaration()<cr>')
    end,
})

-- Autocompletion
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if client ~= nil and client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = false })
        end
    end,
})

-- format on save
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if client ~= nil and client:supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
                buffer = args.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                end,
            })
        end
    end,
})
