vim.o.termguicolors = true

local groups = { -- table: default groups
	"Normal",
	"NormalNC",
	"Comment",
	"Constant",
	"Special",
	"Identifier",
	"Statement",
	"PreProc",
	"Type",
	"Underlined",
	"Todo",
	"String",
	"Function",
	"Conditional",
	"Repeat",
	"Operator",
	"Structure",
	"LineNr",
	"NonText",
	"SignColumn",
	"CursorLine",
	"CursorLineNr",
	-- "StatusLine",
	-- "StatusLineNC",
	"EndOfBuffer",
	"NvimTree",
}

-- for _, group in pairs(groups) do
-- 	vim.api.nvim_set_hl(0, group, { bg = "none" })
-- end
