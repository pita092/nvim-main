require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua", "luaformatter" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		go = { "gofumpt", "goimports_reviser", "golines" },
		java = { "clang_format" },
		cs = { "clang-format" },
	},
	--  format_on_save = {
	--   timeout_ms = 500,
	--   lsp_format = "fallback",
	-- },
})
