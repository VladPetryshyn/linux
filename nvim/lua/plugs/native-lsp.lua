local function nnoremap(from, to)
  vim.api.nvim_set_keymap("n", from, to, { noremap = true, silent = true })
end

require "plugs/lsps/eslint"
