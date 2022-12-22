-- properly import packer to avoid linter errors
local packer = require("packer")
local use = packer.use

-- setup packages to be managed by packer
return packer.startup({
	function()
		-- Packer can manage itself
		use("wbthomason/packer.nvim")

		-- sensible default settings
		-- TODO rewrite to lua
		use("tpope/vim-sensible")

		-- tree file browser
		use({
			"nvim-tree/nvim-tree.lua",
			requires = { "nvim-tree/nvim-web-devicons" },
			tag = "nightly",
			config = function()
				require("plugin_config.nvim-tree")
			end,
		})

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

		-- use icons and glyphs
		use("kyazdani42/nvim-web-devicons")

		-- autoclose backets and other delimiters
		-- TODO lua
		use("Raimondi/delimitMate")

		-- easily close all buffers not open in a window
		-- TODO lua
		use("artnez/vim-wipeout")

		-- show git status in left editor gutter
		use({
			"lewis6991/gitsigns.nvim",
			config = function()
				require("gitsigns").setup()
			end,
		})

		-- which-key implemented in lua
		use({
			"folke/which-key.nvim",
			config = function()
				require("plugin_config.which-key")
			end,
		})

		-- nicer statusline
		use({
			"nvim-lualine/lualine.nvim",
			requires = { "kyazdani42/nvim-web-devicons", opt = true },
			config = function()
				require("plugin_config.lualine")
			end,
		})

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
		use({
			"akinsho/nvim-bufferline.lua",
			requires = "kyazdani42/nvim-web-devicons",
			config = function()
				require("plugin_config.bufferline")
			end,
		})

		-- automatically set indent width
		-- TODO lua?
		-- use("tpope/vim-sleuth")
		use({
			"nmac427/guess-indent.nvim",
			config = function()
				require("guess-indent").setup({})
			end,
		})

		-- draw indent guides
		use({
			"lukas-reineke/indent-blankline.nvim",
			config = function()
				require("plugin_config.indentline")
			end,
		})

		-- smooth scrolling
		use({
			"karb94/neoscroll.nvim",
			config = function()
				require("neoscroll").setup()
			end,
		})

		-- dashboard inspired by DOOM emacs
		use({
			"glepnir/dashboard-nvim",
			config = function()
				require("plugin_config.dashboard")
			end,
		})

		-- keymap cheatsheet
		-- TODO lua?
		use("lifepillar/vim-cheat40")

		-- swap buffers in windows using directions
		use({
			"caenrique/swap-buffers.nvim",
			config = function()
				require("plugin_config.swap-buffers")
			end,
		})

		-- fuzzy finder and more
		use({
			"nvim-telescope/telescope.nvim",
			requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
		})

		-- show colorcodes as background on strings
		-- TODO lua?
		use("chrisbra/Colorizer")

		-- toggle line comments
		-- TODO lua?
		use({
			"scrooloose/nerdcommenter",
			config = function()
				require("plugin_config.nerdcommenter")
			end,
		})

		-- highlight unique characters when jumping on same line
		-- TODO still needed with leap?
		-- TODO lua
		use({
			"unblevable/quick-scope",
			config = function()
				require("plugin_config.quickscope")
			end,
		})

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
		use("dense-analysis/ale")

		-- better syntax highlighting and more
		use({
			"nvim-treesitter/nvim-treesitter",
			config = function()
				require("plugin_config.treesitter")
			end,
		})

		-- color brackets by scope
		use({
			"p00f/nvim-ts-rainbow",
			requires = { "nvim-treesitter/nvim-treesitter" },
		})

		-- create ascii tables in vim
		-- TODO lua
		use("dhruvasagar/vim-table-mode")

		-- preview markdown files
		use({
			"toppair/peek.nvim",
			run = "deno task --quiet build:fast",
			config = function()
				require("plugin_config.peek")
			end,
		})

		-- lsp plugins
		use("williamboman/mason.nvim")
		use("williamboman/mason-lspconfig.nvim")
		use("neovim/nvim-lspconfig")

		-- cmp completion
		use("hrsh7th/cmp-nvim-lsp")
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-path")
		use("hrsh7th/cmp-cmdline")
		use("hrsh7th/nvim-cmp")
		-- For luasnip users.
		use("L3MON4D3/LuaSnip")
		use("saadparwaiz1/cmp_luasnip")

		-- ===== colorschemes =====

		-- use "olimorris/onedarkpro.nvim"
		use("ful1e5/onedark.nvim")
		-- use "navarasu/onedark.nvim"
		use("gruvbox-community/gruvbox")
		use("dracula/vim")
		use("folke/tokyonight.nvim")
		use({ "catppuccin/nvim", as = "catppuccin" })
	end,
	config = {
		git = {
			-- avoid timeout on cloning large repos on a slow connection ...
			clone_timeout = 600,
		},
	},
})
