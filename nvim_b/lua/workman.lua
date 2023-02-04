-- local function m(from, to)
--   vim.api.nvim_set_keymap('n', from, to, { noremap=true })
-- end
-- 
-- m('n', 'j')
-- m('e', 'k')
-- m('y', 'h')
-- m('o', 'l')
-- m('j', 'y')
-- m('k', 'n') m('h', 'e')
-- m('l', 'o')
-- m('Y', 'H')
-- 
-- m('N', 'J')
-- m('E', 'K')
-- m('Y', 'H')
-- m('O', 'L')
-- m('J', 'Y')
-- m('K', 'N')
-- m('H', 'E')
-- m('L', 'O')
-- 
-- m('gn', 'gj')
-- m('ge', 'gk')
-- m('gy', 'gh')
-- m('gk', 'gn')
-- m('gh', 'ge')
-- m('gl', 'go')
-- 
-- m('gN', 'gJ')
-- m('gY', 'gH')
-- m('gK', 'gN')
-- m('gH', 'gE')
-- m('gL', 'gO')
-- 
-- -- nnorem <silent> <c-w>n :wincmd j<cr>
-- -- nnorem <silent> <c-w>e :wincmd k<cr>
-- -- nnorem <silent> <c-w>y :wincmd h<cr>
-- -- nnorem <silent> <c-w>o :wincmd l<cr>
-- -- nnoremap <silent> <c-w>k :wincmd n<cr>
-- -- nnoremap <silent> <c-w>l :wincmd o<cr>
-- 
-- -- get control-j back, so switch it with ctrl-n at qwerty position of j
-- -- imap <c-n> <cr>
-- -- cmap <c-n> <cr>
-- -- inoremap <c-j> <c-n>
-- -- cnoremap <c-j> <c-n>
-- -- 
-- -- nnoremap jj yy
-- -- nunmap yy


vim.api.nvim_exec([[
noremap n j
noremap e k
noremap y h
noremap o l
noremap j y
noremap k n
noremap h e
noremap l o
noremap Y H

noremap N J
noremap E K
noremap Y H
noremap O L
noremap J Y
noremap K N
noremap H E
noremap L O

noremap gn gj
noremap ge gk
noremap gy gh
noremap gk gn
noremap gh ge
noremap gl go

noremap gN gJ
noremap gY gH
noremap gK gN
noremap gH gE
noremap gL gO

nnoremap <silent> <c-w>n :wincmd j<cr>
nnoremap <silent> <c-w>e :wincmd k<cr>
nnoremap <silent> <c-w>y :wincmd h<cr>
nnoremap <silent> <c-w>o :wincmd l<cr>
nnoremap <silent> <c-w>k :wincmd n<cr>
nnoremap <silent> <c-w>l :wincmd o<cr>

" get control-j back, so switch it with ctrl-n at qwerty position of j
imap <c-n> <cr>
cmap <c-n> <cr>
inoremap <c-j> <c-n>
cnoremap <c-j> <c-n>

nnoremap jj yy
nunmap yy
]], false)
