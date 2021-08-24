local saga = require 'lspsaga'
local map = vim.api.nvim_set_keymap

saga.init_lsp_saga {
  error_sign = '✘ ',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}
map("n", "K", ":Lspsaga hover_doc<CR>", { silent = true })
