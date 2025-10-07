local keymap = require("redraincatching.core.functions.keymap").keymap
-- TODO: make this global, maybe

-- map leader to ,
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- map netrw explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "netrw explorer"})

-- unmapping arrow keys
-- best way to learn the keybinds, and i like leaving them off
keymap('n', '<Up>', '<Nop>')
keymap('n', '<Down>', '<Nop>')
keymap('n', '<Left>', '<Nop>')
keymap('n', '<Right>', '<Nop>')

keymap('i', '<Up>', '<Nop>')
keymap('i', '<Down>', '<Nop>')
keymap('i', '<Left>', '<Nop>')
keymap('i', '<Right>', '<Nop>')

keymap('v', '<Up>', '<Nop>')
keymap('v', '<Down>', '<Nop>')
keymap('v', '<Left>', '<Nop>')
keymap('v', '<Right>', '<Nop>')

-- better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>")
keymap("t", "jk", "<C-\\><C-n>")

-- mapping shift-tab to <<
keymap('i', '<S-Tab>', '<C-d>', {desc = "outdent"})

-- better indent
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>")

-- mapping "open term bottom right"
keymap("n", "<leader>te", ":bo term<CR>:resize 20<CR>", {desc = "open terminal"})

-- tab keymappings
keymap("n", "<leader>jn", ":tabnew", {desc = "open new tab"})
keymap("n", "<leader>jc", ":tab split", {desc = "open current buffer in new tab"})
keymap("n", "<leader>jq", ":tabclose", {desc = "close the current tab"})
keymap("n", "<leader>jo", ":tabonly", {desc = "close all other tabs"})

keymap("n", "<leader>jh", ":-tabnext", {desc = "move to previous tab"})
keymap("n", "<leader>jl", ":+tabnext", {desc = "move to next tab"})

-- move to hex view & enable syntax highlighting
keymap("n", "<leader>hx", ":%!xxd<CR>:set ft=xxd<CR>", {desc = "view as hex"})

-- Y to yank to eol
keymap("n", "Y", "y$", {desc = "yank to eol"})

-- center screen when jumping
keymap("n", "n", "nzzzv", {desc = "next search result (centered)"})
keymap("n", "N", "Nzzzv", {desc = "previous search result (centered)"})
keymap("n", "<C-d>", "<C-d>zz", {desc = "half page down (centered)"})
keymap("n", "<C-u>", "<C-u>zz", {desc = "half page up (centered)"})

-- better j behavior
keymap("n", "J", "mzJ`z", {desc = "join lines and keep cursor position"})

-- resize split windows
-- can get fucky when treeview is open
keymap("n", "<C-Up>", ":resize +2<CR>", {desc = "increase window height"})
keymap("n", "<C-Down>", ":resize -2<CR>", {desc = "decrease window height"})
keymap("n", "<C-Left>", ":vertical resize -2<CR>", {desc = "decrease window width"})
keymap("n", "<C-Right>", ":vertical resize +2<CR>", {desc = "increase window width"})

-- quick file navigation
keymap("n", "<leader>e", ":Explore<CR>", {desc = "open file explorer"})
keymap("n", "<leader>fi", ":find ", {desc = "find file"})


---------------------
-- PLUGIN KEYBINDS --
---------------------
keymap("n", "<leader>rg", ":TodoTelescope<CR>", {desc = "search for TODO and other comments"})
keymap("n", "<leader>rt", ":TodoTelescope keywords=TODO<CR>", {desc = "search for TODO only"})
