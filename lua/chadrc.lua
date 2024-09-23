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
}

return M
