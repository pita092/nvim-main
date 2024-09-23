local M = {}

M.ui = {
	theme = "gruvbox",
}

M.statusline = {
	theme = "minimal", -- default/vscode/vscode_colored/minimal
	-- default/round/block/arrow separators work only for default statusline theme
	-- round and block will work for minimal theme only
	separator_style = "default",
	order = nil,
	modules = nil,
}
M.tabufline = {
	enabled = true,
	lazyload = true,
	order = { "treeOffset", "buffers", "tabs", "btns" },
	modules = nil,
}
M.nvdash = {
	load_on_startup = true,

	header = {
		"smegma",
	},

	buttons = {
		{ "  Find File", "Spc f f", "Telescope find_files" },
		{ "  Themes", "Spc t h", "Telescope themes" },
		{ "  Mappings", "Spc c h", "NvCheatsheet" },
	},
}

return M
