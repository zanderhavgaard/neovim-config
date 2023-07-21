local vim = vim

-- draw whitespace
-- TODO: not shure I love this, trying it out ...
-- vim.opt.list = true
-- vim.opt.listchars:append("eol:↴")
-- vim.opt.listchars:append("space: ")
-- vim.opt.listchars:append("lead:⋅")
-- vim.opt.listchars:append("trail:⋅")
-- vim.opt.listchars:append("tab:>-")

local function set_colorscheme(colorscheme)
	vim.cmd.colorscheme(colorscheme)
end

-- choose one ...
local colorscheme = "onedark"
-- local colorscheme = "gruvbox"
-- local colorscheme = "dracula"
-- local colorscheme = "tokyonight"
-- local colorscheme = "tokyonight-night"
-- local colorscheme = "tokyonight-moon"
-- local colorscheme = "tokyonight-storm"
-- local colorscheme = "catppuccin"
-- local colorscheme = "catppuccin-latte"
-- local colorscheme = "catppuccin-mocha"
-- local colorscheme = "catppuccin-frappe"
-- local colorscheme = "catppuccin-machiato"
-- local colorscheme = "github_dark"

set_colorscheme(colorscheme)
