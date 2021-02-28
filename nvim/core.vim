set noshowmode
set cindent
set showcmd
set matchpairs+=<:>
set ttyfast
set backspace=indent,eol,start
set scrolloff=5
set modelines=0
filetype off
set nocompatible
filetype plugin indent on
set noshiftround
set nolist
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile
set wrap
set linebreak
set number relativenumber
set wildmode=longest,list,full
set cursorline
set cursorcolumn
set maxmempattern=99999

set nowritebackup
set cmdheight=1
set updatetime=250
set shortmess+=c

set wildcharm=<C-Z>
" Russian lang support

" set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
" highlight lCursor guifg=NONE guibg=Cyan

set iminsert=0
set imsearch=0

set signcolumn=yes
set shortmess+=c

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

set splitbelow
set splitright
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set mouse=a

set hidden 

set tabstop=2 softtabstop=2
set shiftwidth=2
set smarttab
set incsearch
set hlsearch
set expandtab
set smartindent

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
set clipboard=unnamedplus


" hard mode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:workman_normal_workman = 0
let g:workman_insert_workman = 0

" hi Normal guibg=NONE ctermbg=NONE
