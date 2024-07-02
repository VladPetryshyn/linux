vim.g.indent_blankline_background_highlight = ""
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_end_of_line = true
vim.g.indent_blankline_filetype_exclude = { "NvimTree", "startify", "dashboard" }

require("ibl").setup({
	indent = { highlight = { "IblIndent" }, char = " " },
	scope = { enabled = true, char = "┋" },
})
