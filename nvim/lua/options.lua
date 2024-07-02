-- number line with relativenumbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- number of lines below and above cursor
vim.opt.scrolloff = 7

-- pairs to be marched by %
vim.cmd.set("matchpairs", "+=<:>")

vim.opt.modelines = 0
vim.opt.backspace = {'indent', 'eol', 'start'}

-- no automatic filetype detection
vim.o.filetype = 'off'

-- no sound effects
vim.opt.visualbell = false
vim.opt.errorbells = false

-- vertical line
vim.cmd.set("cursorline")
-- horizontal line
vim.cmd.set("cursorcolumn")

-- highlight search
vim.cmd.set("hlsearch")

-- I don't know what this does, but probably something with identing
vim.cmd([[
 	filetype plugin indent on
 	set noshiftround
 	set nolist
]])

-- don't create swap files
vim.opt.backup = false
vim.opt.swapfile = false
vim.writebackup = false

-- wrap lines
vim.opt.wrap = true

-- wrap long lines (done automatically)
vim.opt.linebreak = true

-- map ukrainian keys
vim.opt.langmap = {'ФИСВУАПРШОЛДЬТЩЗЙКІЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ','фисвуапршолдьтщзйкіегмцчня;abcdefghijklmnopqrstuvwxyz'}


-- something
vim.cmd([[
	set iminsert=0
	set imsearch=0

 	set signcolumn=yes
 	set shortmess+=c
	" lines with equal indent form a fold
 	set foldmethod=indent
 	set foldnestmax=10
 	set foldlevel=99
 	set nofoldenable

 	set splitbelow
 	set splitright
]])
--  enable mouse for normal and visual modes
vim.opt.mouse = {n = true, v = true}

-- encoding
vim.opt.encoding='utf-8'

-- set command history to 100 entries
vim.opt.history=100

-- tab indent
vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2
vim.opt.smarttab = true
vim.opt.smartindent = true

-- shows search matches so far
vim.opt.incsearch = true

-- cmd completion
vim.opt.wildignore = {'*.swp','*.bak','*.pyc','*.class'}
vim.opt.wildmode = {'longest', 'list', 'full'}
vim.cmd.set('wildcharm=<C-Z>')

-- just cmd height
vim.o.cmdheight = 0

-- max memory that can be used for search
vim.opt.maxmempattern = 99999

-- I don't care anymore
vim.opt.hidden = true

-- set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
-- 	" hard mode
-- 	autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
