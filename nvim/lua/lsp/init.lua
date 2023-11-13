require("lsp.mason-config")

require("mason-lspconfig").setup({
	ensure_installed = { "clangd", "lua_ls" }
})

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").lua_ls.setup {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
}

require("lsp.lsp-keymaps")
