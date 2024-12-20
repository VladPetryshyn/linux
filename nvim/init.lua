-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

programmingFts =
	{ "javascript", "typescript", "python", "c", "cpp", "lua", "typescriptreact", "javascriptreact", "json", "go", "php" }

require("options")
require("mappings")
require("plugins")
require("krasa/line")
