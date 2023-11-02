local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- lsp
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-nvim-lua" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },

			-- Snippet
			{ "L3MON4D3/LuaSnip", version = "v2.*" }, -- Required

			-- null-ls
			{ "nvimtools/none-ls.nvim" },
			{ "jay-babu/mason-null-ls.nvim" },
		},
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			{ "nvim-treesitter/nvim-treesitter-context" },
			{ "JoosepAlviste/nvim-ts-context-commentstring" },
		},
	},

	-- Navigation
	{
		"kyazdani42/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{ "ThePrimeagen/harpoon", lazy = true },
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		dependencies = {
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
	},

	-- Git
	{ "lewis6991/gitsigns.nvim", event = { "BufReadPre", "BufNewFile" } },
	{ "kdheepak/lazygit.nvim", cmd = "LazyGit" },

	-- Debugging
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			{ "rcarriga/nvim-dap-ui" },
			{ "theHamsta/nvim-dap-virtual-text" },
			{ "nvim-telescope/telescope-dap.nvim" },
		},
	},

	-- UI
	{ "nvim-lualine/lualine.nvim" },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl" },
	{ "catppuccin/nvim", priotity = 1000 },
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },

	-- Terminal
	{ "akinsho/toggleterm.nvim", lazy = true },

	-- Misc
	{ "numToStr/Comment.nvim", event = { "BufReadPre", "BufNewFile" } },
	{ "windwp/nvim-autopairs", event = { "BufReadPre", "BufNewFile" } },
	{ "uga-rosa/ccc.nvim", event = { "BufReadPre", "BufNewFile" } },
	{ "mbbill/undotree", cmd = "UndotreeToggle" },
	{ "nvim-pack/nvim-spectre", lazy = true },
	{ "kylechui/nvim-surround", event = { "BufReadPre", "BufNewFile" } },
	{ "RRethy/vim-illuminate", event = { "BufReadPre", "BufNewFile" } },
	{ "nvim-lua/plenary.nvim" },
})
