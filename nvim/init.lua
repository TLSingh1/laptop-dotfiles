vim.loader.enable()

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

local plugins = {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"s1n7ax/nvim-window-picker",
		name = "window-picker",
		event = "VeryLazy",
		version = "2.*",
		config = function()
			require("plugins.window-picker-config")
		end,
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
	},
	{
		"hrsh7th/nvim-cmp",
		version = "*",
	},
	{
		"hrsh7th/cmp-nvim-lsp",
		version = "*",
	},
	{
		"hrsh7th/cmp-buffer",
		version = "*",
	},
	{
		"hrsh7th/cmp-path",
		version = "*",
	},
	{
		"hrsh7th/cmp-cmdline",
		version = "*",
	},
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		build = "make install_jsregexp",
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"saadparwaiz1/cmp_luasnip",
		version = "*",
	},
	{
		"glepnir/nerdicons.nvim",
		cmd = "NerdIcons",
		config = function()
			require("nerdicons").setup({})
		end,
	},
	{
		"williamboman/mason.nvim",
		version = "*",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		version = "*",
	},
	{
		"neovim/nvim-lspconfig",
		version = "*",
	},
	{
		"nvimtools/none-ls.nvim",
		version = "*",
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	{
		"windwp/nvim-ts-autotag",
		version = "*",
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"folke/zen-mode.nvim",
		opts = {},
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"ahmedkhalf/project.nvim",
				config = function()
					require("project_nvim").setup({})
				end,
			},
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
		},
	},
	{
		"rcarriga/nvim-notify",
		version = "*",
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
	},
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		version = "*",
	},
	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
	},
  {
    "rebelot/kanagawa.nvim",
  },


}

local opts = {}

require("lazy").setup(plugins, opts)

require("config")
require("plugins")

vim.cmd.colorscheme("tokyonight")
-- vim.cmd.colorscheme("nordic")
-- vim.cmd.colorscheme("kanagawa-wave")
