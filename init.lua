local vim = vim

-- disable integrated netrw file browser, advised for nvim-tree
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("plugins")
require("settings")
require("keymaps")
require("plugin_config")
require("theme")
require("gui")
require("lsp")
-- load ale config from vimscript file
vim.cmd("source ~/.config/nvim/vimscript/ale.vim")
vim.cmd("source ~/.config/nvim/vimscript/wilder.vim")
