require('nvim-treesitter.configs').setup({
    -- List of languages to support
    ensure_installed = { 'bash', 'c', 'clojure' , 'cpp', 'vimdoc', 'vim', 'lua', 'rust', 'typescript', 'llvm', 'markdown' },
    -- Install parsers synchronously
    sync_install = false,
    -- Auto-install missing parsers when entering buffer
    auto_install = true,

    -- Enable treesitter?
    enable = true,

    highlight = {
        -- Enable highlights?
        enable = true,
        -- TL;DR double-highlighting, potentially slow
        additional_vim_regex_highlighting = false,
    }
})
