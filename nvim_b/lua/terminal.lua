-- " turn terminal to normal mode with escape
-- tnoremap <Esc> <C-\><C-n>
-- " start terminal in insert mode
-- au BufEnter * if &buftype == 'terminal' | :startinsert | endif
-- " open terminal on ctrl+n
function OpenTerminal()
        vim.cmd("split term://zsh")
        vim.cmd("resize 10")
end
vim.g.term_buf = 0
vim.g.term_win = 0

vim.api.nvim_exec([[
function! Term_toggle(height)
         if win_gotoid(g:term_win)
                 hide
         else
                 botright new
                 exec "resize " . a:height
                 try
                         exec "buffer " . g:term_buf
                 catch
                         call termopen($SHELL, {"detach": 0})
                         let g:term_buf = bufnr("")
                 endtry
                 startinsert!
                 let g:term_win = win_getid()
         endif
endfunction
]], false)
