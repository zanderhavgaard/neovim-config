local sb = require("swap-buffers")
local vim = vim
-- keymaps vim.api.nvim_set_keymap('<mode>', '<keybind>', '<command>', {<config>})
-- <mode> is one of 'n' = normal, 'i' = input, 't' = terminal
-- <keybind> the keybinding to press
-- <command> what to execute
-- map of config options

-- map leader and localleader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- wrapper function to create keymaps
local function map(mode, lhs, rhs, opts)
    -- add default options to keymap
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    -- set the actual keymap
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- map("n", "", "", {})

-- jump to start/end of line
map("n", "H", "^", {})
map("n", "L", "$", {})

---- spellcheck
-- next error
map("n", "<Leader>sn", "]s", {})
-- previous error
map("n", "<Leader>sp", "[s", {})
-- correct error
map("n", "<Leader>sc", "z=", {})
-- add error to dictionary
map("n", "<Leader>sa", "zg", {})

-- split window vertical
map("n", "<Leader>v", ":vsp<CR>", {})
-- split window horizontally
map("n", "<Leader>b", ":sp<CR>", {})

-- clear search highlight
map("n", "<Leader><space>", ':let @/=""<CR>', {})

---- search and replace
--search word at caret
map("n", "<Leader>ss", "/<C-r><C-w><CR>", {})
-- search and replace
map("n", "<Leader>rs", ":%s//gc<left><left><left>", {})
-- search and replace, using word at caret
map("n", "<Leader>rr", ":%s/<C-r><C-w>//gc<Left><Left><Left>", {})
-- render \n into newlines and \t into tabs
map("n", "<leader>rn", ":%s/\\\\n/\\r/g<CR>:%s/\\\\t/  /g<CR>", {})

---- window management
-- fill screen with current window, making other windows as small as possible
map("n", "<Leader>ff", "<C-W>|<C-W>_", {})
-- make all windows equal size
map("n", "<Leader>fe", "<C-W>=", {})
---- resize windows
map("n", "<C-A-h>", ":vertical resize -5<cr>", {})
map("n", "<C-A-j>", ":resize +5<CR>", {})
map("n", "<C-A-k>", ":resize -5<CR>", {})
map("n", "<C-A-l>", ":vertical resize +5<cr>", {})

-- swap
map("n", "<Leader>wh", "<Cmd>lua require('swap-buffers').swap_buffers('h')<CR>")
map("n", "<Leader>wj", "<Cmd>lua require('swap-buffers').swap_buffers('j')<CR>")
map("n", "<Leader>wk", "<Cmd>lua require('swap-buffers').swap_buffers('k')<CR>")
map("n", "<Leader>wl", "<Cmd>lua require('swap-buffers').swap_buffers('l')<CR>")

---- switch focus between windows
map("n", "<C-J>", "<C-W><C-J>", {})
map("n", "<C-K>", "<C-W><C-K>", {})
map("n", "<C-L>", "<C-W><C-L>", {})
map("n", "<C-H>", "<C-W><C-H>", {})

---- terminal mode
-- exit insert mode
map("t", "<Esc>", "<C-\\><C-n>", {})
-- move terminal buffer
map("t", "<M-h>", "<c-\\><c-n><c-w>h", {})
map("t", "<M-j>", "<c-\\><c-n><c-w>j", {})
map("t", "<M-k>", "<c-\\><c-n><c-w>k", {})
map("t", "<M-l>", "<c-\\><c-n><c-w>l", {})

---- buffers
-- cycle through buffers
-- map("n", "<Tab>", ":bnext<CR>", {})
-- map("n", "<Tab>", ":BufferLineCycleNext<CR>", {})
-- map("n", "<S-Tab>", ":bprevious<CR>", {})
-- map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", {})

---- tabs
-- create a new tab
map("n", "<Leader>tt", ":tabnew<CR>", {})
-- open current window in new tab
map("n", "<Leader>tc", "<C-w>T", {})
-- go to next tab
map("n", "<Tab>", ":tabnext<CR>", {})
map("n", "<Leader>tn", ":tabnext<CR>", {})
-- go to previous tab
map("n", "<S-Tab>", ":tabprevious<CR>", {})
map("n", "<Leader>tp", ":tabprevious<CR>", {})
-- move tab left in tabline
map("n", "<C-A-Left>", ":execute 'silent! tabmove ' . (tabpagenr()-2)<CR>", {})
-- move tab right in tabline
map("n", "<C-A-Right>", ":execute 'silent! tabmove ' . (tabpagenr()+1)<CR>", {})

-- execute macro in @q slot
map("n", "<Leader>q", "@q", {})

-- ===== PLUGINGS =====

-- show colorscodes as background color on string
map("n", "<Leader>hh", ":ColorHighlight<CR>", {})
-- clear color highlight
map("n", "<Leader>hc", ":ColorClear<CR>", {})

-- toggle nvim-tree
map("n", "<leader>m", ":NvimTreeToggle<CR>", {})

-- show vim cheat sheet
map("n", "<Leader>?", ":Cheat40<CR>", {})

-- toggle git blame in visual mode
map("n", "<Leader>gb", ":BlamerToggle<CR>", {})

-- use wipeout to close all buffers not open in any window
map("n", "<Leader>w", ":Wipeout<CR>", {})

---- telescope
-- recursively search files
map("n", "<Leader>nn", "<Cmd>Telescope find_files<CR>", {})
-- search files in git repo
map("n", "<Leader>ng", "<Cmd>Telescope git_files<CR>", {})
-- grep string at caret
map("n", "<Leader>nj", "<Cmd>Telescope grep_string<CR>", {})
-- interactively grep
map("n", "<Leader>nf", "<Cmd>Telescope live_grep<CR>", {})
-- search buffer contents
map("n", "<Leader>nb", "<Cmd>Telescope buffers<CR>", {})
-- search help tags
map("n", "<Leader>nh", "<Cmd>Telescope help_tags<CR>", {})
-- search man pages
map("n", "<Leader>nm", "<Cmd>Telescope man_pagesCR>", {})
-- search registers
map("n", "<Leader>nr", "<Cmd>Telescope registers<CR>", {})

---- gitsigns
map("n", "<Leader>gg", ":Gitsigns preview_hunk<CR>", {})
map("n", "<Leader>gu", ":Gitsigns reset_hunk<CR>", {})
map("n", "<Leader>ga", ":Gitsigns stage_hunk<CR>", {})
map("n", "<Leader>gA", ":Gitsigns undo_stage_hunk<CR>", {})
map("n", "<Leader>gn", ":Gitsigns next_hunk<CR>", {})
map("n", "<Leader>gp", ":Gitsigns prev_hunk<CR>", {})
