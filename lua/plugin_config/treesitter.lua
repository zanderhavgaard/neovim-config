require("nvim-treesitter.configs").setup(
    {
        ensure_installed = "maintained",
        highlight = {
            enable = true
        },
        indent = {
            enable = false
        },
        incremental_selection = {
            enable = true
        },
        rainbow = {
            enable = true,
            extended_mode = true
        }
    }
)
