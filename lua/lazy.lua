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
	{ "JoosepAlviste/nvim-ts-context-commentstring" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "nvim-treesitter/nvim-treesitter-context" },

	-- Navigation
	{
		"kyazdani42/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{ "ThePrimeagen/harpoon" },
	{ "nvim-telescope/telescope.nvim" },
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

	-- Git
	{ "lewis6991/gitsigns.nvim" },
	{ "kdheepak/lazygit.nvim" },

	-- Debugging
	{ "mfussenegger/nvim-dap" },
	{ "rcarriga/nvim-dap-ui" },
	{ "theHamsta/nvim-dap-virtual-text" },
	{ "nvim-telescope/telescope-dap.nvim" },

	-- UI
	{ "nvim-lualine/lualine.nvim" },
	{ "lukas-reineke/indent-blankline" },
	{ "catppuccin/nvim", priotity = 1000 },
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },

	-- Terminal
	{ "akinsho/toggleterm" },

	-- Misc
	{ "numToStr/Comment.nvim" },
	{ "windwp/nvim-autopairs" },
	{ "uga-rosa/ccc.nvim" },
	{ "mbbill/undotree" },
	{ "nvim-pack/nvim-spectre" },
	{ "kylechui/nvim-surround" },
	{ "RRethy/vim-illuminate" },
	{ "nvim-lua/plenary.nvim" },
})
