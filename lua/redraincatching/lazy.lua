local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	-- plenary tools (for telescope)
	{ 'nvim-lua/plenary.nvim' },
	-- ripgrep (for telescope)
	{ 'BurntSushi/ripgrep' },
	-- telescope fuzzy finder
	{
		'nvim-telescope/telescope.nvim', 
		branch = '0.1.x'
	},
	-- treesitter
	{
		'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
	},
	-- devicons
	{ 'nvim-tree/nvim-web-devicons' },
	-- color scheme
	{ 'rebelot/kanagawa.nvim' },
	-- filetree
	{ 'nvim-tree/nvim-tree.lua' },
	-- autopair brackets
	{'windwp/nvim-autopairs'},
	-- commenting
	{'numToStr/Comment.nvim'},
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
	{ 'hrsh7th/nvim-cmp' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{
		'L3MON4D3/luasnip',
		version = 'v2.*'
	},
	{ 'simrat39/rust-tools.nvim' },
	-- dashboard
	{ 'nvimdev/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
		require('dashboard').setup {
			packages = { enable = true }
		}
	  end,
	},
})
