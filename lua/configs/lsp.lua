local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = function(client, bufnr)
	-- Disable semantic tokens
	client.server_capabilities.semanticTokensProvider = nil

	-- Disable all semantic token highlights
	for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
		vim.api.nvim_set_hl(0, group, {})
	end

	-- Additional step: clear existing semantic tokens
	vim.lsp.buf.clear_references()
end

lspconfig.jdtls.setup({
	on_attach = on_attach, -- Add this line
	capabilities = capabilities,
	filetypes = { "kotlin", "java" },
	settings = {
		java = {},
	},
	init_options = {
		workspace = {
			checkThirdParty = false,
		},
	},
})

lspconfig.lua_ls.setup({
	on_attach = on_attach, -- Add this line
	capabilities = capabilities,
})
lspconfig.gopls.setup({
	filetypes = { "go", "gomod" },
	settings = {
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
})
lspconfig.clangd.setup({
	on_attach = on_attach, -- Add this line
	keys = {
		{ "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
	},
	root_dir = function(fname)
		return require("lspconfig.util").root_pattern(
			"Makefile",
			"configure.ac",
			"configure.in",
			"config.h.in",
			"meson.build",
			"meson_options.txt",
			"build.ninja"
		)(fname) or require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt")(fname) or require(
			"lspconfig.util"
		).find_git_ancestor(fname)
	end,
	capabilities = {
		capabilities,
		offsetEncoding = { "utf-8" },
	},
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--header-insertion=iwyu",
		"--completion-style=detailed",
		"--function-arg-placeholders",
		"--fallback-style=llvm",
	},
	init_options = {
		usePlaceholders = true,
		completeUnimported = true,
		clangdFileStatus = true,
	},
})
lspconfig.texlab.setup({
	on_attach = on_attach, -- Add this line
	capabilities = capabilities,
})
