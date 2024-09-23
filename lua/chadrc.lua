local M = {}
M.base46 = {
	integrations = {
		"blankline",
		"cmp",
		"git",
		-- more
	},
}
M.ui = {
	theme = "gruvbox",
	telescope = { style = "borderless" }, -- borderless / bordered
	lsp = { signature = true },
	mason = { cmd = true, pkgs = {} },
	tabufline = {
		enabled = false,
	},
	statusline = {
		theme = "minimal", -- default/vscode/vscode_colored/minimal
		-- default/round/block/arrow separators work only for default statusline theme
		-- round and block will work for minimal theme only
		separator_style = "default",
		order = nil,
		modules = nil,
	},
}

return M
