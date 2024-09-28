local M = {}
M.base46 = {
	integrations = {
		"blankline",
		"cmp",
		"git",
		-- more
	},
}
--sdaad
M.ui = {
	statusline = {
		theme = "vscode",
		separator_style = "default",
		order = nil,
		modules = nil,
	},
	theme = "tokyodark",
	hl_override = {
		TelescopeBorder = {
			fg = "#000000",
		},
		TelescopePromptBorder = {
			fg = "#000000",
		},
		TelescopePreviewBorder = {
			fg = "#000000",
		},
		["@comment"] = { fg = "#d5c4a1" },

		LineNr = { fg = "#d5c4a1" },

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
			b = "NONE",
			fg = "#fabd3b",
			underline = true,
		},
		IlluminatedWordWrite = {
			bg = "NONE",
			fg = "#fabd3b",
			underline = true,
		},
	},
	telescope = {
		enabled = true,
		style = "bordered",
	}, -- borderless / bordered
	mason = { cmd = true, pkgs = {} },
	tabufline = {
		enabled = false,
	},
}

return M
