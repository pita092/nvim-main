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
	term = {
		winopts = { number = false, relativenumber = false },
		sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
		float = {
			relative = "editor",
			row = 0.3,
			col = 0.25,
			width = 0.5,
			height = 0.4,
			border = "single",
			horizontal = { location = "rightbelow", split_ratio = 0.3 },
			vertical = { location = "rightbelow", split_ratio = 0.5 },
		},
		behavior = {
			autoclose_on_quit = {
				enabled = false,
				confirm = true,
			},
			close_on_exit = true,
			auto_insert = true,
		},
	},
}

return M
