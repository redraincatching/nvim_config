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

-- this is also weird
vim.lsp.config("roslyn", {
    settings = {
        ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_implicit_object_creation = true,
            csharp_enable_inlay_hints_for_implicit_variable_types = true
        },
        ["csharp|code_lens"] = {
            dotnet_enable_references_code_lens = true
        },
        ["csharp|background_analysis"] = {
            dotnet_analyzer_diagnostics_scope = "openFiles",
            dotnet_compiler_diagnostics_scope = "fullSolution"
        },
        ["csharp|formatting"] = {
            dotnet_organize_imports_on_format = true
        }
    }
})


-- enable lsp servers
vim.lsp.enable({'clangd', 'rust_analyzer', 'roslyn'})

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

-- note: code actions and other commands are under gr*
