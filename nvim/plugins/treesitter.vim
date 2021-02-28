set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

lua <<EOF
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
EOF
