local vim = vim

-- disable integrated netrw file browser, advised for nvim-tree
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

-- load plugins and configs
require("plugins")
require("settings")
require("keymaps")
require("theme")
require("gui")
require("lsp")

-- load ale config from vimscript file
vim.cmd("source ~/.config/nvim/vimscript/ale.vim")
