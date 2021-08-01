local o = vim.o
o.foldmethod="expr"

require'nvim-treesitter.configs'.setup {
ensure_installed = { "css", "javascript", "typescript", "html" },
 indent = {
    enable = true,
    disable = {"javascript", "typescript"}
  },
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
