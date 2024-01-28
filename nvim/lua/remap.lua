vim.g.mapleader = ","

vim.keymap.set("n", "<C-h>", vim.cmd.TmuxNavigateLeft)
vim.keymap.set("n", "<C-j>", vim.cmd.TmuxNavigateDown)
vim.keymap.set("n", "<C-k>", vim.cmd.TmuxNavigateUp)
vim.keymap.set("n", "<C-l>", '<C-w>l')
vim.keymap.set('n', 'R', ':tabprev<CR>')
vim.keymap.set('n', 'W', ':tabnext<CR>')
