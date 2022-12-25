local lazy = require("lazy")

-- setup packages to be managed by packer
lazy.setup({
	-- sensible default settings
	-- TODO:: rewrite to lua
	{
		"tpope/vim-sensible",
	},

	-- glyphs
	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup()
		end,
	},

	-- better syntax highlighting and more
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("plugin_config.treesitter")
		end,
		build = ":TSUpdate",
	},

	-- show git status in left editor gutter
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},

	-- nicer statusline
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("plugin_config.lualine")
		end,
	},

	-- nicer tab/bufferline
	{
		"akinsho/nvim-bufferline.lua",
		config = function()
			require("plugin_config.bufferline")
		end,
	},

	-- draw indent guides
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("plugin_config.indentline")
		end,
	},

	-- automatically set indent width
	{
		"nmac427/guess-indent.nvim",
		config = function()
			require("guess-indent").setup({})
		end,
	},

	-- color brackets by scope
	{
		"p00f/nvim-ts-rainbow",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
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

	-- tree file browser
	{
		"nvim-tree/nvim-tree.lua",
		tag = "nightly",
		config = function()
			require("plugin_config.nvim-tree")
		end,
	},

	-- ui pane for navigating diagnostics for all files in repo
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup()
		end,
	},

	-- highlight todos and other notes, interacts with trouble
	-- use TODO/FIXME/HACK etc. followed by a colon
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("todo-comments").setup()
		end,
	},

	-- experimental plugin to replace some ui components
	-- Packer
	{
		"folke/noice.nvim",
		config = function()
			require("noice").setup()
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},

	-- which-key implemented in lua
	{
		"folke/which-key.nvim",
		config = function()
			require("plugin_config.which-key")
		end,
	},

	-- autoclose backets and other delimiters
	-- TODO: lua
	{
		"Raimondi/delimitMate",
	},

	-- easily close all buffers not open in a window
	-- TODO: lua
	{
		"artnez/vim-wipeout",
	},

	-- toggle line comments
	-- TODO: lua?
	{
		"scrooloose/nerdcommenter",
		config = function()
			require("plugin_config.nerdcommenter")
		end,
	},

	-- keymap cheatsheet
	-- TODO: lua?
	{
		"lifepillar/vim-cheat40",
		lazy = true,
	},

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
		dependencies = {
			{ "nvim-lua/popup.nvim" },
			{ "nvim-lua/plenary.nvim" },
		},
	},

	-- show colorcodes as background on strings
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
		lazy = true,
		enabled = true, -- no need to load when not using
	},

	-- jump around the visible area of the screen
	{
		"ggandor/leap.nvim",
		dependencies = {
			"tpope/vim-repeat",
		},
		config = function()
			require("plugin_config.leap")
		end,
	},

	-- asynchronous lint engine
	-- TODO: lua equivalent
	{
		"dense-analysis/ale",
	},

	-- create ascii tables in vim
	{
		"dhruvasagar/vim-table-mode",
	},

	-- preview markdown files in browser
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
	-- use luasnip with cmp
	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip" },

	-- ===== colorschemes =====

	{ "olimorris/onedarkpro.nvim" },
	{ "gruvbox-community/gruvbox" },
	{ "dracula/vim" },
	{ "folke/tokyonight.nvim" },
	{ "catppuccin/nvim" },
})
