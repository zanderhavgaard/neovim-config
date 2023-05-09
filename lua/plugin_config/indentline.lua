-- settings for indent-blankline plugin
require("indent_blankline").setup({
	char = "▏",
	first_char = "▏",
	filetype_exclude = { "help", "terminal", "startify", "dashboard", "packer", "alpha" },
	buftype_exclude = { "terminal" },
	show_trailing_blankline_indent = true,
	show_first_indent_level = true,
	space_char_blankline = " ",
	-- use treesitter to highlight the current function scope
	-- show_current_context = true
})
