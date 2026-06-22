require('lazy').setup({
	-- plenary tools (for telescope)
	{ 'nvim-lua/plenary.nvim' },
	-- ripgrep (for telescope)
	{ 'BurntSushi/ripgrep' },
	-- telescope fuzzy finder
	{
		'nvim-telescope/telescope.nvim', 
		branch = '0.1.x',
        dependencies = { 'BurntSushi/ripgrep' },
	},
	-- treesitter
	{
		'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
	},
	-- devicons
	{ 'nvim-tree/nvim-web-devicons' },
	-- color scheme
	{ 'edeneast/nightfox.nvim' },
	-- autopair brackets
	{ 'windwp/nvim-autopairs' },
	-- commenting
	{ 'numToStr/Comment.nvim' },
	-- debug adapter
    { 'mfussenegger/nvim-dap' },
    -- debug adapter UI
    { 'rcarriga/nvim-dap-ui' },
	-- asynchronous io (for dap-ui)
	{ 'nvim-neotest/nvim-nio' },
	-- error/warning list
    { 'folke/trouble.nvim' },
	-- lsp tools
	{ 'neovim/nvim-lspconfig' },
	{
		'L3MON4D3/luasnip',
		version = 'v2.*'
	},
    -- autocompletion
    { 
        'saghen/blink.cmp',
        version = '1.*'
    },
    -- rust analyzer configuration
    {
        'mrcjkb/rustaceanvim',
        version = '^5',
        lazy = false,
        diagnostic = {
            refreshSupport = false
        }
    },
    -- csharp
    {
        "seblyng/roslyn.nvim",
        ---@module 'roslyn.config'
        ---@type RoslynNvimConfig
        opts = {
        },
    },
	-- dashboard
	{ 
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
	},
    -- mini statusline
    { 'echasnovski/mini.nvim', version = false },
    -- which-key
    { 'folke/which-key.nvim' },
    -- mason
    { 'williamboman/mason.nvim' },
    -- mason lspconfig
    { 'mason-org/mason-lspconfig.nvim' },
    -- vimtex
    {
        "lervag/vimtex",
        lazy = false,
        config = function()
            vim.g.vimtex_view_method='sioyek'
        end
    },
    -- todo comments
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            keywords = {
                FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
                TODO = { icon = " ", color = "info" },
                HACK = { icon = " ", color = "warning" },
                WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
                PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
                NOTE = { icon = " ", color = "hint", alt = { "INFO", "MAYBE" } },
                TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
              },
        }
    },
    -- filetree, replacing nvim-tree as it has a memory leak in powershell, and ranger isn't available
    {
          "nvim-neo-tree/neo-tree.nvim",
          branch = "v3.x",
          dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
          },
          lazy = false
    },
    -- daily notes
    {
        "VVoruganti/today.nvim"
    },
    -- substitue/exchange operator
    {
        "gbprod/substitute.nvim"
    },
    -- git stuff
    { "tpope/vim-fugitive" },
    { "lewis6991/gitsigns.nvim" },
    { "sindrets/diffview.nvim" }
})
