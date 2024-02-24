require("nvim-tree").setup({
	renderer = {
		root_folder_label = false,
		indent_markers = {
			enable = true,
		},
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = false,
				git = true,
			},
		},
	},
})
