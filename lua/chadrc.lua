local function get_hl_fg(name)
	local hl = vim.api.nvim_get_hl(0, { name = name })
	return hl.fg
end
local M = {}
M.base46 = {
	integrations = {
		"blankline",
		"cmp",
		"git",
		"telescope",
		-- more
	},
	highlights = {
		["@lsp.type.comment"] = { fg = "green" },
	},
}
--sdaad
M.ui = {
	["@lsp.type.comment"] = {
		fg = "#ffffff",
	},
	TelescopePreviewBorder = {
		fg = "#fbf1c7",
	},
	TelescopePromptBorder = {
		fg = "#fbf1c7",
	},
	TelescopeResultsBorder = {
		fg = "#fbf1c7",
	},
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
		enabled = true,
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
