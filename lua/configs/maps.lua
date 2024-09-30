local map = vim.keymap.set
vim.keymap.set("n", "<leader>ex", ":Ex<CR>", { desc = "File Tree" })

vim.keymap.set("i", "<C-g>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })

vim.keymap.set("i", "<C-f>", function()
	return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true, silent = true })

vim.keymap.set("i", "<C-d>", function()
	return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true, silent = true })

vim.keymap.set("i", "<c-x>", function()
	return vim.fn["codeium#Clear"]()
end, { expr = true, silent = true })

map("n", "<leader>m", require("treesj").toggle)

map("n", "<C-h>", "<cmd>TmuxNavigateRight <CR>", { desc = "switch window left" })
map("n", "<C-l>", "<cmd>TmuxNavigateLeft<CR>", { desc = "switch window right" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "switch window down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp <CR>", { desc = "switch window up" })

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '>-2<CR>gv=gv", { silent = true })

map("n", "<C-d>", "zz")

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })

--map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "Toggle nvcheatsheet" })

-- global lsp mappings
map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP Diagnostic loclist" })

-- neotree/oil
-- map("n", "<leader>e", ":Neotree reveal right<CR>", { silent = true, desc = "neotree reavel" })
-- map("n", "<C-x>", "<CMD>Oil<CR>", { silent = true, desc = "Open parent directory" })
-- map("n", "<C-f>", ":lua require('oil').close()<CR>", { silent = true, desc = "Close oil" })

-- telescope
local builtin = require("telescope.builtin")
local themes = require("telescope.themes")

vim.keymap.set("n", "<leader>cd", function()
	require("telescope").extensions.zoxide.list({
		winblend = 0,
		previewer = false,
		width = 0.50,
		height = 0.40,
	})
end)

-- local open_with_trouble = require("trouble.sources.telescope").open
--
-- vim.keymap.set("i", "<C-t>", open_with_trouble, { desc = "Trouble" })
-- vim.keymap.set("n", "<C-t>", open_with_trouble, { desc = "Trouble" })
--
-- vim.keymap.set("n", "<leader>H", builtin.help_tags, { desc = "[S]earch [H]elp" })
-- vim.keymap.set("n", "<leader>K", "<CMD>Telescope themes<CR>", { desc = "[S]earch [K]eymaps" })
-- vim.keymap.set("n", "<leader>g", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<F5>", "<cmd>Telescope undo<cr>")
vim.keymap.set("n", "<leader>o", function()
	builtin.live_grep({
		winblend = 0,
		previewer = true,
	})
end, { desc = "[O] Live grep" })
vim.keymap.set("n", "<leader>xx", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>p", builtin.git_files, { desc = "[G]it Files" })
vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "[G]it Commits" })

vim.keymap.set("n", "<leader>bb", function()
	builtin.buffers({
		winblend = 0,
		previewer = true,
	})
end, { desc = "[b] Find existing buffers" })

vim.keymap.set("n", "<leader>/", function()
	builtin.current_buffer_fuzzy_find({
		previewer = false,
	})
end, { desc = "[/] Fuzzily search in current buffer" })

-- vim.keymap.set("n", "<leader>sn", function()
-- 	builtin.find_files({ cwd = vim.fn.stdpath("config") })
-- end, { desc = "[S]earch [N]eovim files" })
vim.keymap.set("n", "<leader>sn", function()
	builtin.find_files()
end, { desc = "[S]earch [N]eovim" })

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- new terminals
map("n", "<leader>v", function()
	require("nvterm.terminal").toggle("float")
end, { desc = "terminal new vertical window" })

vim.api.nvim_set_keymap("n", "<C-q>", ":bdelete!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-q>", "<C-\\><C-n>:bdelete!<CR>", { noremap = true, silent = true })

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

map("n", "<leader>wk", function()
	vim.cmd("WhichKey " .. vim.fn.input("WhichKey: "))
end, { desc = "whichkey query lookup" })

-- blankline
map("n", "<leader>cc", function()
	local config = { scope = {} }
	config.scope.exclude = { language = {}, node_type = {} }
	config.scope.include = { node_type = {} }
	local node = require("ibl.scope").get(vim.api.nvim_get_current_buf(), config)

	if node then
		local start_row, _, end_row, _ = node:range()
		if start_row ~= end_row then
			vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start_row + 1, 0 })
			vim.api.nvim_feedkeys("_", "n", true)
		end
	end
end, { desc = "blankline jump to current context" })

--tabline

-- vim.keymap.set("n", "<C-e>", ":tabnext<CR>", { noremap = true, silent = true, desc = "next tab" })
-- vim.keymap.set("n", "<C-t>", ":tabclose<CR>", { noremap = true, silent = true, desc = "next tab" })
-- vim.keymap.set("n", "<C-q>", ":tabprevious<CR>", { noremap = true, silent = true, desc = "previous tab" })
--
--custom menu

-- vim.keymap.set("n", "<leader>d", function()
-- 	local dashboard_opened = require("pitavim.scripts.menu").toggle_dashboard()
-- 	if dashboard_opened then
-- 		print("Dasboard opned")
-- 	else
-- 		print("Dashboard closed")
-- 	end
-- end, { desc = "Toggle dashboard" })
--

--harpoon

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>f", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>r", ui.nav_next)
vim.keymap.set("n", "<leader>q", ui.nav_next)

vim.keymap.set("n", "<leader>1", function()
	ui.nav_file(1)
end)
vim.keymap.set("n", "<leader>2", function()
	ui.nav_file(2)
end)
vim.keymap.set("n", "<leader>3", function()
	ui.nav_file(3)
end)
vim.keymap.set("n", "<leader>4", function()
	ui.nav_file(4)
end)
vim.keymap.set("n", "<leader>5", function()
	ui.nav_file(5)
end)
