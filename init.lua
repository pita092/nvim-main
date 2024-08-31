vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath })
end

vim.opt.rtp:prepend(lazypath)

local lazy_stuff = require("configs.lazy")

-- load plugins
---@diagnostic disable-next-line: different-requires
require("lazy").setup({
  {
    "pita092/PitaVim",
    lazy = false,
    branch = "main",
    import = "pitavim.plugins",
  },
}, lazy_stuff)
require("pitavim.scripts")
require("pitavim.options")
vim.schedule(function()
  require("pitavim.maps")
end)
