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
tabufline = {
	enabled = true,
	lazyload = true,
	order = { "treeOffset", "buffers", "tabs" },
	modules = nil,
}

return M
