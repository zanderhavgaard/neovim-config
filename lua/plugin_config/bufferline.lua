require("bufferline").setup {
    options = {
        -- remove close icons
        show_buffer_close_icons = false,
        show_close_icon = false,
        -- show lsp diagnostics in bufferline
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return "(" .. count .. ")"
        end,
        -- offset bufferline left of file browser
        offsets = {
            {filetype = "NvimTree", text = "", text_align = "left", padding = 1}
        },
        -- show tab numbers on the right, also highlight buffers that are in the same tab
        show_tab_indicators = true,
        sort_by = "directory"
    }
}
