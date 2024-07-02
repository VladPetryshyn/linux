local o = vim.o
o.foldmethod="expr"

require'nvim-treesitter.configs'.setup {
  ensure_installed = {'css', 'javascript', 'typescript', 'html', 'go', 'python', 'c', 'cpp', 'tsx', 'lua', 'json', 'gitignore', 'jsdoc', 'markdown', 'sql', 'kotlin', 'bash'},
  indent={
     enable = true,
  },
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
}

