local vim = vim
-- properly import packer to avoid linter errors
local packer = require("packer")
local use = packer.use

-- setup packages to be managed by packer
return packer.startup(
    function()
        -- Packer can manage itself
        use "wbthomason/packer.nvim"

        -- sensible default settings
        use "tpope/vim-sensible"

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
        use "airblade/vim-gitgutter"

        -- git integration
        use "tpope/vim-fugitive"

        -- view git blame for lines in visual mode
        use "APZelos/blamer.nvim"

        -- which-key implemented in lua
        use {
            "folke/which-key.nvim",
            config = function()
                require("plugin_config.which-key")
            end
        }

        -- statusline
        use {
            "glepnir/galaxyline.nvim",
            branch = "main",
            -- loac custom config
            config = function()
                require "plugin_config.galaxyline"
            end,
            -- some optional icons
            requires = {
                "kyazdani42/nvim-web-devicons",
                opt = true
            }
        }

        -- nicer tab/bufferline
        use {
            "akinsho/nvim-bufferline.lua",
            requires = "kyazdani42/nvim-web-devicons"
        }

        -- tree file browser
        use {
            "kyazdani42/nvim-tree.lua",
            requires = "kyazdani42/nvim-tree.lua",
            config = function()
                require "plugin_config.nvim-tree"
            end
        }

        -- automatically set indent width
        use "tpope/vim-sleuth"

        -- draw indent guides
        use "lukas-reineke/indent-blankline.nvim"

        -- smooth scrolling
        use "psliwka/vim-smoothie"

        -- startify splash screen
        -- use "mhinz/vim-startify"

        -- dashboard inspired by DOOM emacs
        -- use "glepnir/dashboard-nvim"
        use {
            "glepnir/dashboard-nvim",
            config = function()
                require "plugin_config.dashboard"
            end
        }

        -- keymap cheatsheet
        use "lifepillar/vim-cheat40"

        -- swap buffers in windows using directions
        use "caenrique/swap-buffers.nvim"

        -- fuzzy finder and more
        use {
            "nvim-telescope/telescope.nvim",
            requires = {
                {"nvim-lua/popup.nvim"},
                {"nvim-lua/plenary.nvim"}
            }
        }

        -- preview markdown files in a browser window
        use "suan/vim-instant-markdown"

        -- show colorcodes as background on strings
        use "chrisbra/Colorizer"

        -- show relative line numbers on focues buffer, show absolute on all others
        use "jeffkreeftmeijer/vim-numbertoggle"

        -- file handling commands
        use "tpope/vim-eunuch"

        -- toggle line comments
        use "scrooloose/nerdcommenter"

        -- highlight unique characters when jumping on same line
        use "unblevable/quick-scope"

        -- autocompletion
        use "Shougo/deoplete.nvim"
        -- use python jedi with deoplete
        use "deoplete-plugins/deoplete-jedi"
        vim.cmd("let g:deoplete#enable_at_startup = 1")

        -- asynchronous lint engine
        use "dense-analysis/ale"

        -- golang integration
        use {
            "fatih/vim-go",
            run = ":GoUpdateBinaries"
        }

        -- better syntax highlighting and more
        use {
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate"
        }

        -- color brackets by scope
        use {
            "p00f/nvim-ts-rainbow",
            requires = {
                "nvim-treesitter/nvim-treesitter"
            }
        }

        -- unofficial support for terraform in vim
        use "hashivim/vim-terraform"

        -- suggestions and tab completion for ':' commands
        use "gelguy/wilder.nvim"

        -- create ascii tables in vim
        use "dhruvasagar/vim-table-mode"

        -- ===== colorschemes =====

        -- DSL for colorschemes
        use "rktjmp/lush.nvim"

        use "rakr/vim-one"
        -- use "joshdick/onedark.vim"
        use "gruvbox-community/gruvbox"
        use "dracula/vim"
        use "folke/tokyonight.nvim"
    end
)
