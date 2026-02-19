local blink = require("blink.cmp")

blink.setup({
    sources = {
        default = { 'lsp', 'path', 'buffer', 'snippets' },
        providers = {
        	buffer = {
				min_keyword_length = 1,
				score_offset = 4,
			},
			lsp = {
				min_keyword_length = 3,
				score_offset = 3,
			},
			path = {
				min_keyword_length = 3,
				score_offset = 2,
			},
			snippets = {
				min_keyword_length = 5,
				score_offset = 1,
			},
        }
    },
    fuzzy = {
        implementation = 'rust'
    },
    keymap = {
        ["<Tab>"] = { "accept", "fallback" }
    }
})
