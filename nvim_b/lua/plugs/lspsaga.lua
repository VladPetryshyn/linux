local saga = require 'lspsaga'
local map = vim.api.nvim_set_keymap
-- 
-- saga.init_lsp_saga {
--   error_sign = '✘ ',
--   warn_sign = '',
--   hint_sign = '',
--   infor_sign = '',
--   border_style = "round",
-- }
-- 
vim.cmd([[
nnoremap <silent><leader>rn <cmd>lua require('lspsaga.rename').rename()<CR>
nnoremap <silent> ]g <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
nnoremap <silent> [g <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
]])

-- map("n", "K", ":Lspsaga hover_doc<CR>", { silent = true })
