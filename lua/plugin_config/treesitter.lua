require("nvim-treesitter.configs").setup({
	ensure_installed = "all",
	highlight = {
		enable = true,
		use_languagetree = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = false,
	},
	incremental_selection = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
	},
})
