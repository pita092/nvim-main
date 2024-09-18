local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		lua = { "stylua", "luaformatter" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		go = { "gofumpt", "goimports_reviser", "golines" },
	},
}

return options
