-- numbered lines
vim.opt.number = true
vim.opt.relativenumber = true

-- auto and smart indent
vim.opt.autoindent = true
vim.opt.smartindent = true

-- use system clipboard
vim.opt.clipboard = 'unnamedplus';

-- enable smart case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- enable case inferring
vim.opt.infercase = true

-- 24-bit rgb colours
vim.opt.termguicolors = true

-- expand tabs to space
-- (i may dislike it but work wants it, so)
vim.opt.expandtab = true

-- spacing
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.backspace = "indent,eol,start"
vim.opt.splitright = true
vim.opt.splitbelow = true

-- set better popup experience
vim.opt.completeopt = { 'menuone', 'preview', 'noselect' }

-- turn off comment auto-continue
vim.o.formatoptions = vim.o.formatoptions:gsub("[r]", "")
vim.api.nvim_exec([[
    augroup NoAutoComment
        autocmd!
        autocmd FileType * setlocal formatoptions-=cro
    augroup END
]], false)

-- set tab page max to 10 (same as sway workspaces)
vim.opt.tabpagemax = 10

-- file handling
vim.opt.backup = false                              -- no backup files
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true                             -- persistent undo
vim.opt.undodir = vim.fn.expand("~/.vim/undo") 
vim.opt.updatetime = 300                            -- faster completion
vim.opt.autoread = true                             -- autoreload other files
vim.opt.autowrite = false                           -- no autosaves

-- allow buffer modification
vim.opt.modifiable = true

-- don't auto-change directory
vim.opt.autochdir = false

-- treat dash as part of word
vim.opt.iskeyword:append("-")

-- recursive search
vim.opt.path:append("**")

-- selection behaviour
vim.opt.selection = "inclusive"

-- split behavior
vim.opt.splitbelow = true                          -- horizontal splits go below
vim.opt.splitright = true                          -- vertical splits go right

-- better diff options
vim.opt.diffopt:append("linematch:60")

-- better performance
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000

-- create undo directory if it doesn't exist
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end
