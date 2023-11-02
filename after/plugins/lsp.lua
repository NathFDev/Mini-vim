local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(_, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({
		buffer = bufnr,
		preserve_mappings = false,
	})
end)

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"svelte",
		"lua_ls",
		"jsonls",
		"emmet_language_server",
		"volar",
		"astro",
		"custom_elements_ls",
		"dockerls",
		"pyright",
		"gopls",
		"rust_analyzer",
	},
	automatic_installation = true,
	handlers = {
		lsp_zero.default_setup,
	},
})
