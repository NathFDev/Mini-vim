vim.cmd("colorscheme catppuccin")

require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
	term_colors = true,
	integrations = {
		harpoon = true,
		mason = true,
		treesitter_context = true,
	},
})

local mocha = require("catppuccin.palettes").get_palette("mocha")
require("bufferline").setup({
	highlights = require("catppuccin.groups.integrations.bufferline").get({
		styles = { "italic", "bold" },
		custom = {
			all = {
				fill = { bg = "#000000" },
			},
			mocha = {
				background = { fg = mocha.text },
			},
			latte = {
				background = { fg = "#000000" },
			},
		},
	}),
})
