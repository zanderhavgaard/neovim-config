require("bufferline").setup {
    options = {
        -- remove close icons
        show_buffer_close_icons = false,
        show_close_icon = false,
        -- show lsp diagnostics in bufferline
        -- TODO check that this works ...
        diagnostics = "nvim_lsp",
        -- offset bufferline left of file browser
        offsets = {{filetype = "NvimTree", text = "", highlight = "Directory", text_align = "left", padding = 1}},
        -- show tab numbers on the right, also highlight buffers that are in the same tab
        show_tab_indicators = true
    }
}
