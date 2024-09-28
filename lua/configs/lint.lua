require("lint").linters_by_ft = {
	lua = { "luacheck" },
	cpp = { "cpplint" },
}
require("lint").linters.luacheck.args = {
	"--globals",
	"vim",
}
