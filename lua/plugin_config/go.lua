-- configure golang integration
-- enable syntax highlighting features
vim.g.go_highlight_build_constraints = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_methods = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_structs = 1
vim.g.go_highlight_types = 1
-- enable highlight same ids in code
vim.g.go_auto_sameids = 1
-- auto import packages
vim.g.go_fmt_command = "goimports"
-- show types in statusbar when hovering over variables
vim.g.go_auto_type_info = 1
-- use language server
vim.g.go_def_mode = "gopls"
vim.g.go_info_mode = "gopls"
