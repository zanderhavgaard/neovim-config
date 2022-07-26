-- start coq and mute welcome message
local coq_settings = {
    auto_start = "shut-up"
}
vim.api.nvim_set_var("coq_settings", coq_settings)

require("plugins")
require("settings")
require("keymaps")
require("plugin_config")
require("theme")
require("gui")
-- load ale config from vimscript file
vim.cmd("source ~/.config/nvim/vimscript/ale.vim")
vim.cmd("source ~/.config/nvim/vimscript/wilder.vim")
