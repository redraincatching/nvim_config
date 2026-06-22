local sub = require('substitute').setup()

-- raw substitute
vim.keymap.set("n", "s", require('substitute').operator, { noremap = true })
vim.keymap.set("n", "ss", require('substitute').line, { noremap = true }, { desc = "substitute line"} )
vim.keymap.set("n", "S", require('substitute').eol, { noremap = true })
vim.keymap.set("x", "s", require('substitute').visual, { noremap = true })

-- substitute over range
vim.keymap.set("n", "<leader>s", require('substitute.range').operator, { noremap = true }, { desc = "substitute range"} )
vim.keymap.set("x", "<leader>s", require('substitute.range').visual, { noremap = true }, { desc = "substitute range"} )
vim.keymap.set("n", "<leader>ss", require('substitute.range').word, { noremap = true }, { desc = "substitute range by word"} )

-- substitute
vim.keymap.set("n", "sx", require('substitute.exchange').operator, { noremap = true }, { desc = "exchange"} )
vim.keymap.set("n", "sxx", require('substitute.exchange').line, { noremap = true }, { desc = "exchange line"} )
vim.keymap.set("x", "X", require('substitute.exchange').visual, { noremap = true })
vim.keymap.set("n", "sxc", require('substitute.exchange').cancel, { noremap = true }, { desc = "cancel exchange"} )
