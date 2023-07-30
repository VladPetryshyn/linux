local map = vim.api.nvim_set_keymap
local options = { noremap = true }
vim.g.mapleader = ","

map('n', 'R', ':tabprev<CR>', options)
map('n', 'W', ':tabnext<CR>', options)
map('n', '<leader>t', ':call Term_toggle(10)<cr>', options)
map('n', '<leader>h', '<C-w>h', options)
map('n', '<leader>j', '<C-w>j', options)
map('n', '<leader>k', '<C-w>k', options)
map('n', '<leader>l', '<C-w>l', options)
map('n', '<leader><BS>', 'C-w>h', options)

map('n', '<leader>p', ':lua require("telescope.builtin").find_files(require("telescope.themes").get_dropdown({}))<cr>', {})
map('n', '<leader>f', ':lua require("telescope.builtin").live_grep()<cr>', { noremap = true })
map('n', '<leader>gc', ':lua require("telescope.builtin").git_branches()<cr>', { noremap = true })
map('n', '<leader><space>', ':NvimTreeToggle<cr>', { noremap = true })
map("n", "<leader>gs", ":G<CR>", {})
