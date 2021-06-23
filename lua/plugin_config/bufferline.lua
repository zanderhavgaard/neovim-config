require("bufferline").setup {
    options = {
        -- remove close icon
        buffer_close_icon = "",
        -- show lsp diagnostics in bufferline
        -- TODO check that this works ...
        diagnostics = "nvim_lsp",
        -- offset bufferline left of file browser
        offsets = {{filetype = "NvimTree", text = "", highlight = "Directory", text_align = "left"}}
    }
}
