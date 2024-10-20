local lazy = require("lazy")

-- setup packages to be managed by lazy
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
		-- build = ":TSUpdate",
	},

	-- helm template support
	-- helps avoid issues with yaml linters/formatters and helm templates
	{
		"towolf/vim-helm",
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
	-- TODO: this is no longer maintained, switch to something else ...
	{
		"p00f/nvim-ts-rainbow",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
	},

	-- library of small lua modules
	-- TODO: use?
	{
		"echasnovski/mini.nvim",
		branch = "main",
		config = function()
			-- alternative to neoscroll
			-- require("mini.animate").setup()
			-- alternative to comment plugin
			-- require("mini.comment").setup()
		end,
		enabled = false,
	},

	-- smooth scrolling
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup()
		end,
	},

	-- dashboard inspired by startify
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("plugin_config.alpha")
		end,
	},

	-- dashboard inspired by DOOM emacs
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("plugin_config.dashboard")
		end,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		enabled = false,
	},

	-- tree file browser
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("plugin_config.nvim-tree")
		end,
	},

	-- visualize undo tree
	{
		"mbbill/undotree",
	},

	-- easily rename using LSP
	{
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup()
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
	{
		"folke/noice.nvim",
		config = function()
			require("noice").setup({
				lsp = {
					-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
					override = {
						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
						["vim.lsp.util.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true,
					},
				},
				-- you can enable a preset for easier configuration
				presets = {
					bottom_search = false, -- use a classic bottom cmdline for search
					command_palette = true, -- position the cmdline and popupmenu together
					long_message_to_split = true, -- long messages will be sent to a split
					inc_rename = false, -- enables an input dialog for inc-rename.nvim
					lsp_doc_border = true, -- add a border to hover docs and signature help
				},
			})
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		enabled = false,
	},

	-- which-key implemented in lua
	{
		"folke/which-key.nvim",
		config = function()
			require("plugin_config.which-key")
		end,
	},

	-- autoclose backets and other delimiters
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},

	-- easily close all buffers not open in a window
	-- TODO: lua
	{
		"artnez/vim-wipeout",
	},

	-- comment using gcc and gbc
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	-- keymap cheatsheet
	-- TODO: lua?
	{
		"lifepillar/vim-cheat40",
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
		enabled = false, -- no need to load when not using
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
		enabled = false,
	},

	-- automatically save buffer on certain events
	{
		"okuuva/auto-save.nvim",
		config = function()
			require("auto-save").setup({
				trigger_events = { -- See :h events
					immediate_save = { "BufLeave", "FocusLost" }, -- vim events that trigger an immediate save
					defer_save = {}, -- vim events that trigger a deferred save (saves after `debounce_delay`)
					cancel_deferred_save = {}, -- vim events that cancel a pending deferred save
				},
			})
		end,
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

	-- toggle cmp autocompletion
	{
		"gitaarik/nvim-cmp-toggle",
	},

	-- ===== colorschemes =====

	{ "olimorris/onedarkpro.nvim" },
	{ "gruvbox-community/gruvbox" },
	{ "dracula/vim" },
	{ "folke/tokyonight.nvim" },
	{ "catppuccin/nvim" },
	{
		"projekt0n/github-nvim-theme",
		config = function()
			require("github-theme").setup()
		end,
	},
})
