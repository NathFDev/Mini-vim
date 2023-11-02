require("nvim-treesitter.configs").setup({
	context_commentstring = { enable = true },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
		disable = function(lang, buf)
			local max_filesize = 100 * 1024 -- 100 KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
	},
})

require("nvim-autopairs").setup()
require("nvim-surround").setup()
require("ccc").setup()
require("harpoon").setup()
require("illuminate").setup()
require("spectre").setup()
