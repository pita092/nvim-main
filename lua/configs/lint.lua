require("lint").linters_by_ft = {
	lua = { "luacheck" },
}
require("lint").linters.luacheck.args = {
	"--globals",
	"vim",
}
