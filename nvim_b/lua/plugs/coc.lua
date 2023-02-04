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

-- vim.g.coc_snippet_next = '<tab>'

vim.api.nvim_exec([[
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
]], false)

vim.g.coc_global_extensions = { 'coc-eslint', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-snippets', 'coc-json', 'coc-prettier', 'coc-go', }

u.create_augroup({
  {'FileType', 'typescript,json', 'setl', "formatexpr=CocAction('formatSelected')"},
  {'User', 'CocJumpPlaceholder', "call CocActionAsync('showSignatureHelp')"}
}, 'mygroup')

vim.cmd('autocmd User CocExplorerOpenPost call <SID>opened_explorer()')
vim.cmd("command! -nargs=? Fold :call     CocAction('fold', <f-args>)")
vim.cmd("command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')")
vim.cmd('command! -bar Prettier :CocCommand prettier.formatFile')
vim.cmd("command! -bar Eslint :call CocAction('runCommand', 'eslint.executeAutofix')")
vim.cmd('command! Form Eslint|w')

vim.cmd([[
augroup mygroup
   autocmd!
   " Setup formatexpr specified filetype(s).
   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
   " Update signature help on jump placeholder
   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
]])


-- vim.g.coc_explorer_global_presets = {
--    tab = {
--      position = 'tab',
--      -- 'quit-on-open' = true,
--     },
--    floating = {
--      position = 'floating',
--      -- open-action-strategy = 'sourceWindow',
--    },
--    floatingTop = {
--      position = 'floating',
--      -- floating-position = 'center-top',
--      -- open-action-strategy = 'sourceWindow',
--    },
--    floatingLeftside = {
--      position = 'floating',
--      -- floating-position = 'left-center',
--      -- floating-width = 50,
--      -- open-action-strategy = 'sourceWindow',
--    },
--    floatingRightside = {
--      position = 'floating',
--      -- floating-position = 'right-center',
--      -- floating-width = 50,
--      -- open-action-strategy = 'sourceWindow',
--    },
--  }

vim.cmd("nmap <silent> ]g <Plug>(coc-diagnostic-next)")
vim.cmd("nmap <silent> [g <Plug>(coc-diagnostic-prev)")

vim.cmd('nmap <silent> gd <Plug>(coc-definition)')
vim.cmd('nmap <silent> gy <Plug>(coc-type-definition)')
vim.cmd('nmap <silent> gi <Plug>(coc-implementation)')
vim.cmd('nmap <silent> gr <Plug>(coc-references)')

vim.cmd("autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')")
