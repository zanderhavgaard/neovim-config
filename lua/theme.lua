local vim = vim
-- TODO change to native lua way of setting colorscheme,
-- once this is implemented in nvim ...
local function set_colorscheme(colorscheme)
    vim.cmd("colorscheme " .. colorscheme)
end

local colorscheme = "onedark"
-- local colorscheme = "gruvbox"
-- local colorscheme = "dracula"
-- local colorscheme = "tokyonight"

set_colorscheme(colorscheme)

-- make splits look nicer
-- TODO convert to lua?
vim.cmd("set fillchars=vert:┃")
vim.cmd("set fillchars+=fold:·")
vim.cmd("hi VertSplit guifg=#2C323C")
