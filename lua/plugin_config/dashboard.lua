require("dashboard").setup({
	theme = "hyper",
	config = {
		week_header = {
			enable = true,
		},
		shortcut = {
			{
				desc = " Files",
				group = "Label",
				action = "Telescope find_files",
				key = "f",
			},
			{
				desc = " GitFiles",
				group = "@property",
				action = "Telescope git_files",
				key = "g",
			},
			{
				desc = " Grep",
				group = "Number",
				action = "Telescope live_grep",
				key = "d",
			},
			{
				desc = " Lazy",
				group = "DiagnosticHint",
				action = "Lazy",
				key = "u",
			},
			{
				desc = "ﳼ Mason",
				group = "DiagnosticHint",
				action = "Mason",
				key = "m",
			},
		},
	},
})
