local lazy = require("lazy")

-- setup packages to be managed by packer
lazy.setup({
	-- sensible default settings
	-- TODO rewrite to lua
	{ "tpope/vim-sensible" },

	-- glyphs
	{ "nvim-tree/nvim-web-devicons" },

	-- tree file browser
	{
		"nvim-tree/nvim-tree.lua",
		tag = "nightly",
		config = function()
			require("plugin_config.nvim-tree")
		end,
	},

	-- TODO getting a weird error where gitsigns and lsp icons
	-- are not shown in the gutter when a file is opened through neo-tree ...
	-- tree file browser
	-- use {
	-- "nvim-neo-tree/neo-tree.nvim",
	-- branch = "v2.x",
	-- requires = {
	-- "nvim-lua/plenary.nvim", "neo-tree/nvim-web-devicons",
	-- "MunifTanjim/nui.nvim", {
	-- 's1n7ax/nvim-window-picker',
	-- tag = "v1.*",
	-- config = function()
	-- require "plugin_config.nvim-window-picker"
	-- end
	-- }
	-- }
	-- }

	-- autoclose backets and other delimiters
	-- TODO lua
	{ "Raimondi/delimitMate" },

	-- easily close all buffers not open in a window
	-- TODO lua
	{ "artnez/vim-wipeout" },

	-- show git status in left editor gutter
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},

	-- which-key implemented in lua
	{
		"folke/which-key.nvim",
		config = function()
			require("plugin_config.which-key")
		end,
	},

	-- nicer statusline
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("plugin_config.lualine")
		end,
	},

	-- statusline
	-- use({
	-- "glepnir/galaxyline.nvim",
	-- branch = "main",
	-- -- loac custom config
	-- config = function()
	-- require("plugin_config.galaxyline")
	-- end,
	-- -- some optional icons
	-- requires = { "kyazdani42/nvim-web-devicons", opt = true },
	-- })

	-- nicer tab/bufferline
	{
		"akinsho/nvim-bufferline.lua",
		config = function()
			require("plugin_config.bufferline")
		end,
	},

	-- automatically set indent width
	{
		"nmac427/guess-indent.nvim",
		config = function()
			require("guess-indent").setup({})
		end,
	},

	-- draw indent guides
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("plugin_config.indentline")
		end,
	},

	-- smooth scrolling
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup()
		end,
	},

	-- dashboard inspired by DOOM emacs
	{
		"glepnir/dashboard-nvim",
		config = function()
			require("plugin_config.dashboard")
		end,
	},

	-- keymap cheatsheet
	-- TODO lua?
	{ "lifepillar/vim-cheat40" },

	-- swap buffers in windows using directions
	{
		"caenrique/swap-buffers.nvim",
		config = function()
			require("plugin_config.swap-buffers")
		end,
	},

	-- fuzzy finder and more
	{
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
	},

	-- show colorcodes as background on strings
	{ "chrisbra/Colorizer" },

	-- toggle line comments
	-- TODO lua?
	{
		"scrooloose/nerdcommenter",
		config = function()
			require("plugin_config.nerdcommenter")
		end,
	},

	-- highlight unique characters when jumping on same line
	-- TODO still needed with leap?
	-- TODO lua
	{
		"unblevable/quick-scope",
		config = function()
			require("plugin_config.quickscope")
		end,
	},

	-- jump around the visible area of the screen
	-- TODO keep?
	-- use({
	-- "ggandor/leap.nvim",
	-- requires = { "tpope/vim-repeat" },
	-- config = function()
	-- require("plugin_config.leap")
	-- end,
	-- })

	-- asynchronous lint engine
	-- TODO lua equivalent
	{ "dense-analysis/ale" },

	-- better syntax highlighting and more
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("plugin_config.treesitter")
		end,
	},

	-- color brackets by scope
	{
		"p00f/nvim-ts-rainbow",
		requires = { "nvim-treesitter/nvim-treesitter" },
	},

	-- create ascii tables in vim
	{ "dhruvasagar/vim-table-mode" },

	-- preview markdown files
	{
		"toppair/peek.nvim",
		build = "deno task --quiet build:fast",
		config = function()
			require("plugin_config.peek")
		end,
	},

	-- lsp plugins
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },
	-- cmp completion
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	-- luasnip users.
	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip" },

	-- ===== colorschemes =====

	-- { "olimorris/onedarkpro.nvim" },
	-- { "ful1e5/onedark.nvim" },
	-- { "gruvbox-community/gruvbox" },
	-- { "dracula/vim" },
	{ "folke/tokyonight.nvim" },
	-- { "catppuccin/nvim" },
})
