local M = {}
M.terminal = {
	close_on_exit = false,
}
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
	theme = "github",
	hl_override = {
		TelescopeNormal = {
			bg = "#292929",
			fg = "white",
		},
		TelescopeBorder = {
			fg = "white",
			bg = "white",
		},
		TelescopePromptBorder = {
			fg = "#292929",
			bg = "white",
		},
		TelescopePromptNormal = {
			fg = "#292929",
			bold = true,
			bg = "white",
		},
		TelescopePromptTitle = {
			fg = "white",
			bg = "#292929",
		},
		TelescopePreviewTitle = {
			fg = "white",
			bg = "#292929",
		},
		TelescopeResultsTitle = {
			fg = "white",
			bg = "#292929",
		},
		TelescopePromptPrefix = {
			bg = "white",
		},
		TelescopePreviewBorder = {
			fg = "#ffffff",
		},
		["@comment"] = { fg = "white", bold = true },

		LineNr = { fg = "white" },

		LspReferenceWrite = {
			bg = "NONE",
			fg = "#fabd3b",
			underline = true,
		},
		LspReferenceText = {
			bg = "NONE",
			fg = "#fabd3b",
			underline = true,
		},
		LspReferenceRead = {
			bg = "NONE",
			fg = "#fabd3b",
			underline = true,
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
