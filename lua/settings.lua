local vim = vim
---- Providers
-- disable providers that are not used
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_perl_provider = 0
-- use system python3
vim.python3_host_prog = "/usr/bin/python"

-- generate list of todo comments
vim.cmd([[command Todo noautocmd vimgrep /TODO\|FIXME\|HACK/j ** | cw]])

-- enable filetype plugin
-- TODO how to do in lua?
vim.cmd("filetype plugin on")

-- do not hide code
vim.o.conceallevel = 0

-- use unicode
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"

-- enable spellcheck when opening specific file types
-- TODO convert to lua
vim.cmd("autocmd FileType markdown,tex,latex,plaintex set spell")

-- more intuitive split directorion
vim.o.splitbelow = true
vim.o.splitright = true

-- draw indent guides for tab-indented code
vim.cmd([[set listchars=tab:\|\]])
vim.cmd([[set list]])

-- decrease update time, makes git gutter work faster
vim.o.updatetime = 100

-- decrease timeout, such that which-key works faster
vim.o.timeout = true
vim.o.timeoutlen = 500

-- autosave when switching buffers
vim.o.autowrite = true

-- autosave when losing focus to terminal window
-- TODO rewrite for lua
vim.cmd("autocmd FocusLost * :wa")
vim.cmd("autocmd BufLeave * :wa")

-- trigger check if file was changed outside vim
-- when then cursor stops moving
-- TODO rewrite for lua
vim.cmd("autocmd CursorHold,CursorHoldI * :checktime")
vim.cmd("autocmd FocusGained,BufEnter * :checktime")

-- automactically reload file if changed
-- outside vim and there are no unsaved edits
vim.o.autoread = true

-- move cursor to search hit while typing
vim.o.incsearch = true

-- ignore case while searching
vim.o.ignorecase = true

-- enable bold and italic fonts
-- TODO fix
-- vim.o.enable_bold_font = true
-- vim.o.enable_italic_font = true

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
vim.cmd("autocmd TermOpen * setlocal nonumber norelativenumber scrolloff=0")

-- enable line numbers and relative line numbers
vim.o.number = true
vim.o.relativenumber = true

-- highlight current line
vim.o.cursorline = true

-- use system clipboard
-- TODO convert to lua
vim.cmd("set clipboard+=unnamedplus")

-- use all colors in terminal
vim.o.termguicolors = true

-- enable syntax highlighting
-- TODO convert to lua
vim.cmd("syntax on")
