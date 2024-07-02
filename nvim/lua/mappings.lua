vim.g.mapleader = ','
local set = vim.keymap.set
isClipboardEnabled = false

set('n', '<Leader>cp', function() 
	if isClipboardEnabled then
		vim.opt.clipboard = ""
		isClipboardEnabled = false
	else
		vim.opt.clipboard = "unnamedplus"
		isClipboardEnabled = true
	end
end)

vim.keymap.set("n", "<C-h>", vim.cmd.TmuxNavigateLeft, {desc="Go Left"})
vim.keymap.set("n", "<C-j>", vim.cmd.TmuxNavigateDown, {desc="Go Down"})
vim.keymap.set("n", "<C-k>", vim.cmd.TmuxNavigateUp, {desc="Go Up"})
vim.keymap.set("n", "<C-l>", vim.cmd.TmuxNavigateRight, {desc="Go Right"})
vim.keymap.set('n', 'R', ':tabnext<CR>')
vim.keymap.set('n', 'E', ':tabprev<CR>')
