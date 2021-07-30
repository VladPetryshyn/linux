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
set shiftwidth=0
set autoindent
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

augroup common
  autocmd!
  autocmd BufNewFile,BufReadPost *.md setfiletype markdown
  autocmd BufNewFile,BufReadPost *.tsx setfiletype typescript.tsx
  autocmd BufNewFile,BufReadPost *.jsx setfiletype javascript.jsx
  autocmd BufNewFile,BufReadPost *.jl setfiletype julia

  autocmd FileType go setlocal expandtab
  autocmd FileType go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd FileType lua setlocal includeexpr=substitute(v:fname,'\\.','/','g')
  autocmd FileType lua setlocal include=require
  autocmd FileType lua setlocal define=function
  autocmd FileType markdown setlocal suffixesadd=.md
  autocmd FileType text,org setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0
  autocmd FileType crontab setlocal nobackup nowritebackup
  autocmd FileType lua,ruby,html,javascript,typescript,css,json,vue,vim,yaml setlocal shiftwidth=2 tabstop=2

  autocmd! User GoyoEnter Limelight
  autocmd! User GoyoLeave Limelight!

  autocmd CompleteDone * if pumvisible() == 0 | pclose | endif
  autocmd BufReadPost *.log normal! G

  autocmd CursorHold * silent call CocActionAsync('highlight')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  autocmd User CocQuickfixChange :CocList --normal quickfix

  autocmd BufWritePre *.go silent! :call CocAction('runCommand', 'editor.action.organizeImport')

  " set up default omnifunc
  autocmd FileType *
        \ if &omnifunc == "" |
        \    setlocal omnifunc=syntaxcomplete#Complete |
        \ endif
augroup end
