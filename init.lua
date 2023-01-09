local vim = vim

-- disable integrated netrw file browser, advised for nvim-tree
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
-- make sure to set `mapleader` before lazy so your mappings are correct
-- map leader and localleader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- load plugins and configs
require("lazy-bootstrap")
require("plugins")
require("settings")
require("keymaps")
require("theme")
require("gui")
require("lsp")

-- load ale config from vimscript file
vim.cmd("source ~/.config/nvim/vimscript/ale.vim")

-- not quite sure why, but colorscheme is not completely loaded
-- if it is not called again at the end ...
-- TODO: fix
vim.cmd([[colorscheme onedark]])
