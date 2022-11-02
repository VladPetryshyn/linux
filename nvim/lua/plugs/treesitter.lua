local o = vim.o
o.foldmethod="expr"

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.org = {
  install_info = {
    url = 'https://github.com/milisims/tree-sitter-org',
    revision = 'main',
    files = { 'src/parser.c', 'src/scanner.cc' },
  },
  filetype = 'org',
}

require('orgmode').setup_ts_grammar()

require'nvim-treesitter.configs'.setup {
 indent = {
    enable = true,
    disable = {}
  },
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
    additional_vim_regex_highlighting = {'org'},
  },
  ensure_installed = {'org',"css", "javascript", "typescript", "html", "go"  },
  autotag = {
    enable = true,
  }
}

