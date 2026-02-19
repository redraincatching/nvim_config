local journal_path = vim.fn.expand('$HOME/.today/jrnl.md')
local journal_dir = vim.fn.expand('$HOME/.today')

-- create directory if it doesn't exist
if vim.fn.isdirectory(journal_dir) == 0 then
    vim.fn.mkdir(journal_dir, 'p')
end

-- create journal file if it doesn't exist
if vim.fn.filereadable(journal_path) == 0 then
    local content = '# entry for {{%DATE}}'
    vim.fn.writefile({content}, journal_path)
end

require('today').setup({
    local_root = vim.fn.expand('$HOME/.today')
})

vim.keymap.set('n', '<Leader>n', ":Today<CR>", { noremap = true, silent = true, desc = "open today's note" })
