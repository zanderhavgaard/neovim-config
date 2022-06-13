local vim = vim

require "nvim-tree".setup {
    -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
    open_on_tab = true,
    -- hijack the cursor in the tree to put it at the start of the filename
    hijack_cursor = true,
    -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
    update_cwd = true,
    disable_netrw = true,
    hijack_netrw = true,
    view = {
        side = "left",
        width = 25,
        hide_root_folder = true
    }
}

-- close tab/nvim if nvim-tree is the last buffer in tab
vim.cmd("autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif")
