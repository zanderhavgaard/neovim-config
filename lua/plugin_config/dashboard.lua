require("dashboard").setup({
	theme = "hyper",
	config = {
		week_header = {
			enable = true,
		},
		shortcut = {
			{
				desc = "󰭎 ",
				group = "Label",
				action = "Telescope find_files",
				key = "f",
			},
			{
				desc = " ",
				group = "@property",
				action = "Telescope git_files",
				key = "g",
			},
			{
				desc = " ",
				group = "Number",
				action = "Telescope live_grep",
				key = "d",
			},
			{
				desc = "󰚰 ",
				group = "DiagnosticHint",
				action = "Lazy",
				key = "u",
			},
			{
				desc = "󰟾 ",
				group = "DiagnosticHint",
				action = "Mason",
				key = "m",
			},
			{
				desc = "󱐚 ",
				group = "DiagnosticHint",
				action = "TSUpdate",
				key = "t",
			},
			{
				desc = "󰩈 ",
				group = "Title",
				action = "quit",
				key = "q",
			},
		},
	},
})
