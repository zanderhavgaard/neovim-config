local vim = vim

-- settings for indent-blankline plugin
require("indent_blankline").setup({
	char = "▏",
	first_char = "▏",
	filetype_exclude = {
		"help",
		"terminal",
		"dashboard",
		"alpha",
		"mason",
		"lspinfo",
		"TelescopePrompt",
		"TelescopeResults",
	},
	buftype_exclude = { "terminal" },
	show_trailing_blankline_indent = true,
	show_first_indent_level = true,
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
})
