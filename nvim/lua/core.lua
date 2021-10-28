local o = vim.o

o.showmode = false
o.cindent = true
o.showcmd = true
-- o.matchpairs+=<:>
o.ttyfast = true
o.backspace="indent,eol,start"
o.scrolloff=5
o.modelines=0
o.filetype="off"
o.compatible=false
vim.cmd("filetype plugin indent on")
o.shiftround=false
o.list=false
-- o.listchars="tab:›\ ,trail:•,extends:#,nbsp:."

o.wildignore="*.swp,*.bak,*.pyc,*.class"
o.title = true
o.visualbell = true
o.errorbells = false

o.swapfile = false
o.wrap = true
o.linebreak = true
o.number = true
o.relativenumber = true
o.wildmode="longest,list,full"
o.cursorline=true
o.cursorcolumn=true
o.maxmempattern=99999

o.writebackup=false
o.updatetime=250
-- o.shortmess+=c

-- o.wildcharm="<C-Z>"

o.iminsert=0
o.imsearch=0

o.signcolumn="yes"

o.foldmethod="indent"
o.foldnestmax=10
o.foldenable=false

o.splitbelow = true
o.splitright = true
o.foldlevel=99
o.encoding="utf-8"
o.mouse="a"

o.hidden = true

o.tabstop=2
o.softtabstop=2
o.shiftwidth=0
o.autoindent=true
o.smarttab=true
o.incsearch=true
o.hlsearch=true
o.expandtab=true
o.smartindent=true

vim.cmd("set clipboard+=unnamedplus")

vim.g.workman_normal_workman = 0
vim.g.workman_insert_workman = 0

vim.cmd('set wildmode=longest,list,full')
vim.cmd('set wildmenu')
