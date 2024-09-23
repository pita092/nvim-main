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
		LspReferenceText = {
			bg = "NONE",
			underline = false,
		},
		LspReferenceRead = {
			bg = "NONE",
			underline = false,
		},
		IlluminatedWordText = {
			bg = "NONE",
			underline = true,
		},
		IlluminatedWordRead = {
			bg = "NONE",
			underline = true,
		},
		IlluminatedWordWrite = {
			bg = "NONE",
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
