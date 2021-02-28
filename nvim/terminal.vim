" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
        split term://bash
        resize 10
endfunction

let g:term_buf = 0
let g:term_win = 0

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

