require("bufferline").setup {
    options = {
        -- remove close icons
        show_buffer_close_icons = false,
        show_close_icon = false,
        -- show lsp diagnostics in bufferline
        -- TODO enable?
        -- TODO check that this works ...
        -- diagnostics = "nvim_lsp",
        -- TODO this seems to not be working with chadtree ...
        -- offset bufferline left of file browser
        offsets = {
            {
                filetype = "CHADtree",
                text = "",
                highlight = "Directory",
                text_align = "left",
                padding = 1
            }
        },
        -- show tab numbers on the right, also highlight buffers that are in the same tab
        show_tab_indicators = true,
        sort_by = "directory"
    }
}
