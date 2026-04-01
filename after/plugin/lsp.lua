-- this currently doesn't work in a separate file
vim.lsp.config.clangd = {
    cmd = { 
        'clangd', 
        '--background-index', 
        '--log=verbose',
        '--pch-storage=memory',
        '--compile-commands-dir=D:\\builds\\cm-ion\\build-l64'
    },
    filetypes = { 'c', 'cpp' },
}

-- enable lsp servers
vim.lsp.enable({'clangd', 'rust_analyzer'})

-- autocomplete
-- set up an lsp autoattach command to enable features based on client capabilities
-- vim.api.nvim_create_autocmd('LspAttach', {
--     callback = function(ev)
--         local client = vim.lsp.get_client_by_id(ev.data.client_id)
--         if client:supports_method('textDocument/completion') then
--             vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
--         end
--     end
-- })

-- rounded borders
vim.opt.winborder = "rounded"

-- diagnostics
vim.diagnostic.config({ 
    virtual_text = false,
    virtual_lines = {
        current_line = true
    },
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    virtual_text = false,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.INFO] = "󰋼",
            [vim.diagnostic.severity.HINT] = "󰌵",
        },
    },
    float = {
        border = "rounded",
        format = function(d)
            return ("%s (%s) [%s]"):format(d.message, d.source, d.code or d.user_data.lsp.code)
        end,
    },
})
