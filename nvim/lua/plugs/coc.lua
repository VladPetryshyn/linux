local u = require('utils')

vim.cmd([[
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
]])

vim.cmd([[
function Check_back_space()
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
endfunction
]])

vim.cmd([[
inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm() : coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" : Check_back_space() ? "\<TAB>" : coc#refresh()
]])

u.create_augroup({
  {'FileType', 'typescript,json', 'setl', "formatexpr=CocAction('formatSelected')"},
  {'User', 'CocJumpPlaceholder', "call CocActionAsync('showSignatureHelp')"}
}, 'mygroup')

vim.g.coc_global_extensions = { 'coc-eslint', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-snippets', 'coc-json', 'coc-prettier', 'coc-go', 'coc-lua', 'coc-explorer' }

vim.cmd("nmap <silent> ]g <Plug>(coc-diagnostic-next)")
vim.cmd("nmap <silent> [g <Plug>(coc-diagnostic-prev)")

vim.cmd('nmap <silent> gd <Plug>(coc-definition)')
vim.cmd('nmap <silent> gy <Plug>(coc-type-definition)')
vim.cmd('nmap <silent> gi <Plug>(coc-implementation)')
vim.cmd('nmap <silent> gr <Plug>(coc-references)')

vim.cmd("autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')")

vim.api.nvim_set_keymap('n', [[<C-\>]], '<Cmd>CocCommand explorer<CR>', { noremap = true})
