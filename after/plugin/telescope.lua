local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', telescope.find_files, {desc = "find files"})
vim.keymap.set('n', '<leader>fa', function() telescope.find_files({ hidden = true }) end, {desc = "find all files"})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {desc = "live grep"})
vim.keymap.set('n', '<leader>fw', telescope.grep_string, {desc = "grep string"})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {desc = "find in buffers"})
vim.keymap.set('n', '<leader>fr', telescope.oldfiles, {desc = "recent files"})
vim.keymap.set('n', '<leader>fd', telescope.diagnostics, {desc = "file diagnostics"})
vim.keymap.set('n', '<leader>ft', telescope.treesitter, {desc = "treesitter picker"})
vim.keymap.set('n', '<leader>fp', telescope.planets, {desc = "use the telescope"})

vim.keymap.set('n', '<leader>flr', telescope.lsp_references, {desc = "find references"})
vim.keymap.set('n', '<leader>fli', telescope.lsp_implementations, {desc = "find implementations"})
vim.keymap.set('n', '<leader>fld', telescope.lsp_definitions, {desc = "find definitions"})
vim.keymap.set('n', '<leader>fls', telescope.lsp_document_symbols, {desc = "find document symbols"})
vim.keymap.set('n', '<leader>flw', telescope.lsp_workspace_symbols, {desc = "find workspace symbols"})

-- git-specific pickers
vim.keymap.set('n', '<leader>fif', telescope.git_files, {desc = "find git files"})
vim.keymap.set('n', '<leader>fis', telescope.git_status, {desc = "current git changes"})
vim.keymap.set('n', '<leader>fic', telescope.git_commits, {desc = "list git commits"})
vim.keymap.set('n', '<leader>fit', telescope.git_stash, {desc = "list git stash"})

-- vim pickers
vim.keymap.set('n', '<leader>fvp', telescope.man_pages, {desc = "find man pages"})
vim.keymap.set('n', '<leader>fvm', telescope.marks, {desc = "find marks"})
vim.keymap.set('n', '<leader>fvq', telescope.quickfix, {desc = "find quickfixes"})
vim.keymap.set('n', '<leader>fvc', telescope.colorscheme, {desc = "find colorschemes"})
