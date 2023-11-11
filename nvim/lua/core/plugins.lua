-- required by lazy.nvim
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
vim.g.mapleader = ' '


-- THIS TABLE VARIABLE IS WHERE ALL THE PLUGINS GO --
local plugins = {
	-- Colorschemes --
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"oxfist/night-owl.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
	},
	
	-- Completion
	"hrsh7th/nvim-cmp",								--  main completion plugins 
	"hrsh7th/cmp-buffer",							--  buffer completions
	"hrsh7th/cmp-path",								--  path completions
	"hrsh7th/cmp-cmdline",						--  cmdline completions
  "saadparwaiz1/cmp_luasnip",				-- snippet completions
	"hrsh7th/cmp-nvim-lsp",						-- LSP completions

	-- snippet engine
	{
		"L3MON4D3/LuaSnip",
		dependencies = {"afamadriz/friendly-snippets"},
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp"
	},
	"rafamadriz/friendly-snippets", -- a bunch of snippet

	-- LSP
	"williamboman/mason.nvim",				-- simple to use language server installer
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",					-- enables LSP	

}

-- THIS TABLE VARIABLE IS WHERE ALL THE OPTIONS GO --
-- full list of options available at lazy.nvim github page configuration section: 
-- https://github.com/folke/lazy.nvim#%EF%B8%8F-configuration 
local opts = {
	ui = {
		border = "rounded",
	},

}

-- required by lazy.nvim
require("lazy").setup(plugins, opts)
