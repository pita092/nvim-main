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
	theme = "gruvbox",
	hl_override = {
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
<<<<<<< HEAD
=======
		enabled = true,
>>>>>>> f4e613a83a3b97154e7b048f5c0efa8f035223e1
		style = "borderless",
	}, -- borderless / bordered
	mason = { cmd = true, pkgs = {} },
	tabufline = {
		enabled = false,
	},
}

return M
