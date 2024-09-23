local M = {}
M.base46 = {
	hl_override = {
		LspReferenceWrite = { bg = "NONE" },
	},
	integrations = {
		"blankline",
		"cmp",
		"git",
		"telescope",
		-- more
	},
}
M.ui = {
	theme = "flexoki",
	telescope = {
		enabled = false,
	}, -- borderless / bordered
	mason = { cmd = true, pkgs = {} },
	tabufline = {
		enabled = false,
	},
	statusline = {
		theme = "vscode", -- default/vscode/vscode_colored/minimal
		-- default/round/block/arrow separators work only for default statusline theme
		-- round and block will work for minimal theme only
		separator_style = "default",
		order = nil,
		modules = nil,
	},
	cheatsheet = {
		theme = "simple", -- simple/grid
		excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
	},
}

return M
