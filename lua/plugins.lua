-- properly import packer to avoid linter errors
local packer = require("packer")
local use = packer.use

-- setup packages to be managed by packer
return packer.startup({
    function()
        -- Packer can manage itself
        use "wbthomason/packer.nvim"

        -- sensible default settings
        use "tpope/vim-sensible"

        -- tree file browser
        use {
            'nvim-tree/nvim-tree.lua',
            requires = {'nvim-tree/nvim-web-devicons'},
            tag = 'nightly',
            config = function() require('plugin_config.nvim-tree') end
        }

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
        use "kyazdani42/nvim-web-devicons"

        -- autoclose backets and other delimiters
        use "Raimondi/delimitMate"

        -- easily change delimiters
        use "tpope/vim-surround"

        -- autocluse html/xml style tags
        use "alvan/vim-closetag"

        -- easily close all buffers not open in a window
        use "artnez/vim-wipeout"

        -- show git status in left editor gutter
        use {"lewis6991/gitsigns.nvim", tag = "release"}

        -- git integration
        use "tpope/vim-fugitive"

        -- view git blame for lines in visual mode
        use "APZelos/blamer.nvim"

        -- which-key implemented in lua
        use {
            "folke/which-key.nvim",
            config = function() require("plugin_config.which-key") end
        }

        -- statusline
        use {
            "glepnir/galaxyline.nvim",
            branch = "main",
            -- loac custom config
            config = function() require "plugin_config.galaxyline" end,
            -- some optional icons
            requires = {"kyazdani42/nvim-web-devicons", opt = true}
        }

        -- nicer tab/bufferline
        use {
            "akinsho/nvim-bufferline.lua",
            requires = "kyazdani42/nvim-web-devicons"
        }

        -- automatically set indent width
        use "tpope/vim-sleuth"

        -- draw indent guides
        use "lukas-reineke/indent-blankline.nvim"

        -- smooth scrolling
        use "psliwka/vim-smoothie"

        -- dashboard inspired by DOOM emacs
        use {
            "glepnir/dashboard-nvim",
            config = function() require "plugin_config.dashboard" end
        }

        -- keymap cheatsheet
        use "lifepillar/vim-cheat40"

        -- swap buffers in windows using directions
        use "caenrique/swap-buffers.nvim"

        -- fuzzy finder and more
        use {
            "nvim-telescope/telescope.nvim",
            requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
        }

        -- show colorcodes as background on strings
        use "chrisbra/Colorizer"

        -- show relative line numbers on focues buffer, show absolute on all others
        -- use "jeffkreeftmeijer/vim-numbertoggle"

        -- file handling commands
        use "tpope/vim-eunuch"

        -- toggle line comments
        use "scrooloose/nerdcommenter"

        -- highlight unique characters when jumping on same line
        -- TODO still needed with leap?
        use "unblevable/quick-scope"

        -- jump around the visible area of the screen
        use {"ggandor/leap.nvim", requires = {"tpope/vim-repeat"}}

        -- asynchronous lint engine
        use "dense-analysis/ale"

        -- better syntax highlighting and more
        use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

        -- color brackets by scope
        use {
            "p00f/nvim-ts-rainbow",
            requires = {"nvim-treesitter/nvim-treesitter"}
        }

        -- unofficial support for terraform in vim
        use "hashivim/vim-terraform"

        -- suggestions and tab completion for ':' commands
        use "gelguy/wilder.nvim"

        -- create ascii tables in vim
        use "dhruvasagar/vim-table-mode"

        -- preview markdown files
        use({'toppair/peek.nvim', run = 'deno task --quiet build:fast'})

        -- lsp plugins
        use "williamboman/mason.nvim"
        use "williamboman/mason-lspconfig.nvim"
        use "neovim/nvim-lspconfig"

        -- cmp completion
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-buffer"
        use "hrsh7th/cmp-path"
        use "hrsh7th/cmp-cmdline"
        use "hrsh7th/nvim-cmp"
        -- For luasnip users.
        use "L3MON4D3/LuaSnip"
        use "saadparwaiz1/cmp_luasnip"

        -- ===== colorschemes =====

        -- DSL for colorschemes
        use "rktjmp/lush.nvim"

        -- use "olimorris/onedarkpro.nvim"
        use "ful1e5/onedark.nvim"
        -- use "navarasu/onedark.nvim"
        use "gruvbox-community/gruvbox"
        use "dracula/vim"
        use "folke/tokyonight.nvim"
        use({"catppuccin/nvim", as = "catppuccin"})
    end,
    config = {
        git = {
            -- avoid timeout on cloning large repos on a slow connection ...
            clone_timeout = 600
        }
    }
})
