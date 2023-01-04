local vim = vim
local function set_colorscheme(colorscheme)
	vim.cmd.colorscheme(colorscheme)
end

-- choose one ...
-- local colorscheme = "onedark"
-- local colorscheme = "onedarkpro"
-- local colorscheme = "gruvbox"
-- local colorscheme = "dracula"
-- local colorscheme = "tokyonight"
-- local colorscheme = "tokyonight-night"
-- local colorscheme = "tokyonight-moon"
local colorscheme = "tokyonight-storm"
-- local colorscheme = "catppuccin"
-- local colorscheme = "catppuccin-latte"
-- local colorscheme = "catppuccin-mocha"
-- local colorscheme = "catppuccin-frappe"
-- local colorscheme = "catppuccin-machiato"
set_colorscheme(colorscheme)
