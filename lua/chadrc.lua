local function get_hl_fg(name)
	local hl = vim.api.nvim_get_hl(0, { name = name })
	return hl.fg
end

-- Function to set the foreground color of a highlight group
local function set_hl_fg(name, fg)
	local current_hl = vim.api.nvim_get_hl(0, { name = name })
	current_hl.fg = fg
	vim.api.nvim_set_hl(0, name, current_hl)
end
local normal_fg = get_hl_fg("Normal")
local M = {}
M.base46 = {
	lsp = { signature = false },
	integrations = {
		"blankline",
		"cmp",
		"git",
		"telescope",
		-- more
	},
}
M.ui = {
	hl_override = {
		LspReferenceWrite = {
			bg = "NONE",
			fg = "#fabd3b",
			underline = false,
		},
		LspReferenceText = {
			bg = "NONE",
			fg = "#fabd3b",
			underline = false,
		},
		LspReferenceRead = {
			bg = "NONE",
			fg = "#fabd3b",
			underline = false,
		},
		IlluminatedWordText = {
			bg = "NONE",
			fg = "#fabd3b",
			underline = true,
		},
		IlluminatedWordRead = {
			bg = "NONE",
			fg = "#fabd3b",
			underline = true,
		},
		IlluminatedWordWrite = {
			bg = "NONE",
			fg = "#fabd3b",
			underline = true,
		},
	},
	theme = "gruvbox",
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
}

return M
