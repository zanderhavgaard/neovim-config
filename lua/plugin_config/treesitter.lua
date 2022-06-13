require("nvim-treesitter.configs").setup(
    {
        highlight = {
            enable = true,
            use_languagetree = true
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
