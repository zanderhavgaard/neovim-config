local vim = vim

---- Providers
-- disable providers that are not used
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_perl_provider = 0
-- use system python3
vim.g.python3_host_prog = "/usr/bin/python"

-- do not hide code
vim.o.conceallevel = 0

-- disable spellchecker by default
vim.o.spell = false

-- enable spellcheck when opening specific file types
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown,tex,latex",
	callback = function()
		vim.o.spell = true
	end,
})

-- more intuitive split directorion
vim.o.splitbelow = true
vim.o.splitright = true

-- decrease update time, makes git gutter work faster
vim.o.updatetime = 100

-- decrease timeout, such that which-key works faster
vim.o.timeout = true
vim.o.timeoutlen = 500

-- autosave when switching buffers
vim.o.autowrite = true

-- automactically reload file if changed
-- outside vim and there are no unsaved edits
vim.o.autoread = true

-- move cursor to search hit while typing
vim.o.incsearch = true

-- ignore case while searching
vim.o.ignorecase = true

-- automatically use same indentation on new line
vim.o.autoindent = true

-- define width of tabs in spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4
-- turn off softtab / space mixing
vim.o.softtabstop = 0
-- expand tabs to spaces
vim.o.expandtab = true

-- highlight matching brackets
vim.o.showmatch = true

-- show current mode
vim.o.showmode = true

-- show current command
vim.o.showcmd = true

-- faster scrolling
vim.o.lazyredraw = true

-- always center the current line in the buffer
vim.o.scrolloff = 999

-- no linenumbers in terminal buffers
-- TODO convert to lua
vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "*",
	callback = function()
		-- TODO is there a lua native way to do this?
		vim.cmd("setlocal nonumber norelativenumber scrolloff=0")
	end,
})

-- enable line numbers and relative line numbers
vim.o.number = true
vim.o.relativenumber = false

-- highlight current line
vim.o.cursorline = true

-- use system clipboard
vim.opt.clipboard = "unnamedplus"

-- use all colors in terminal
vim.o.termguicolors = true

-- enable darwing the signcolumn
vim.opt.signcolumn = "auto:9"
