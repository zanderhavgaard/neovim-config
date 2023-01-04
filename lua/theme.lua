local vim = vim
local function set_colorscheme(colorscheme)
	vim.cmd.colorscheme(colorscheme)
end

-- choose catppuccin variant -- latte, frappe, macchiato, mocha
vim.g.catppuccin_flavour = "frappe"

-- choose one ...
local colorscheme = "onedark"
-- local colorscheme = "onedarkpro"
-- local colorscheme = "gruvbox"
-- local colorscheme = "dracula"
-- local colorscheme = "tokyonight"
-- local colorscheme = "tokyonight-night"
-- local colorscheme = "tokyonight-moon"
-- local colorscheme = "catppuccin"

-- not needed for onedark
-- require("onedark").setup()
-- require("onedarkpro").setup()
set_colorscheme(colorscheme)

-- make splits look nicer
-- TODO convert to lua?
-- vim.cmd("set fillchars=vert:┃")
-- vim.cmd("set fillchars+=fold:·")
-- vim.cmd("hi VertSplit guifg=#2C323C")
