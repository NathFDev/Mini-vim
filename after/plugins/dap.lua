local dap = require("dap")
local dapui = require("dapui")

require("dapui").setup({
	mappings = { expand = { "o", "<2-LeftMouse>" }, open = "<CR>" },
	layouts = {
		{
			elements = {
				{ id = "scopes", size = 0.5 },
				{ id = "breakpoints", size = 0.15 },
				{ id = "stacks", size = 0.2 },
				{ id = "watches", size = 0.15 },
			},
			size = 0.3,
			position = "left",
		},
		{ elements = { "repl", "console" }, size = 0.3, position = "bottom" },
	},
})

require("nvim-dap-virtual-text").setup()
