let g:mapleader=','

nnoremap <leader>t :call Term_toggle(10)<cr>

" tnoremap <A-y> <C-\><C-n><C-w>h
" tnoremap <A-n> <C-\><C-n><C-w>j
" tnoremap <A-e> <C-\><C-n><C-w>k
" tnoremap <A-o> <C-\><C-n><C-w>l
"
" nnoremap <A-y> <C-w>h
" nnoremap <A-n> <C-w>j
" nnoremap <A-e> <C-w>k
" nnoremap <A-o> <C-w>l
"

nnoremap <leader>y <C-w>h
nnoremap <leader>n <C-w>j
nnoremap <leader>e <C-w>k
nnoremap <leader>o <C-w>l
nnoremap <leader><BS> <C-w>h

" nnoremap YY <C-w>h
" nnoremap NN <C-w>j
" nnoremap EE <C-w>k
" nnoremap OO <C-w>

nnoremap R :tabprev<CR>
nnoremap W :tabnext<CR>

map <C-a> ggVG<CR>


" coc


if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

vmap <leader>a <Plug>(coc-codeaction-selected)
map <leader>tc :CocCommand todolist.create<CR>
map <leader>clt :CocCommand todolist.clear<CR>
map <leader>cn :CocCommand todolist.closeNotice<CR>

nnoremap <silent> K :call CocAction('doHover')<CR>

nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <leader>do <Plug>(coc-codeaction)

nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

vmap <C-j> <Plug>(coc-snippets-select)
imap <C-e> <Plug>(coc-snippets-expand)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

inoremap <silent><expr> <c-space> coc#refresh()
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

imap <C-j> <Plug>(coc-snippets-expand-jump)
nmap <silent> rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <C-\> :CocCommand explorer --focus<CR>
nmap <space>el :CocList explPresets

nnoremap <C-Z> u
nnoremap <C-Y> <C-R>
map <tab> <c-y>,
nnoremap gf <C-W>gf
" nnoremap <Leader>1 :MtaJumpToOtherTag<cr>
vnoremap gf <C-W>gf
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Re-indent the whole buffer.
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p


" search
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>


" fzf and git
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>
nnoremap gs :G <CR>
map gb :GBranches
silent! nmap <C-P> :GFiles<CR>
nnoremap <leader>gc :GBranches<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

" folding
nnoremap <space> za

map <Up> <nop>
map <Down> <nop>
map <Left> <nop>
map <Right> <nop>

set wildcharm=<C-Z>
cnoremap <expr> <up> wildmenumode() ? "\<left>" : "\<up>"
cnoremap <expr> <down> wildmenumode() ? "\<right>" : "\<down>"
cnoremap <expr> <left> wildmenumode() ? "\<up>" : "\<left>"
cnoremap <expr> <right> wildmenumode() ? " \<bs>\<C-Z>" : "\<right>"
imap <C-p> <Nop>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = 'Don''t use this!'

nnoremap('l', 'o');
nnoremap('o', 'l');
nnoremap('L', 'O');
nnoremap('O', 'L');
nnoremap('j', 'n');
nnoremap('n', 'j');
nnoremap('J', 'N');
nnoremap('N', 'J');
nnoremap('g',n 'gj');
nnoremap('g',j 'gn');
nnoremap('k', 'e');
nnoremap('e', 'k');
nnoremap('K', 'E');
nnoremap('E', '<nop>');
nnoremap('gk', 'ge');
nnoremap('ge', 'gk');
nnoremap('h', 'y');
onoremap('h', 'y');
nnoremap('y', 'h');
nnoremap('H', 'Y');
nnoremap('Y', 'H');

