require("nvim-tree").setup({
    renderer = {
        indent_markers = {enable = true},
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = false,
                git = true
            }
        }
    }
})
