command! -bang -nargs=* Ag
                        \ call fzf#vim#ag(
                        \   <q-args>,
                        \   s:ag_options,
                        \  <bang>0 ? fzf#vim#with_preview('up:60%')
                        \        : fzf#vim#with_preview('right:50%:hidden', '?'),
                        \   <bang>0
                        \ )

function! Preserve(command)
        " Save the last search.
        let search = @/

        " Save the current cursor position.
        let cursor_position = getpos('.')

        " Save the current window position.
        normal! H
        let window_position = getpos('.')
        call setpos('.', cursor_position)

        " Execute the command.
        execute a:command

        " Restore the last search.
        let @/ = search

        " Restore the previous window position.
        call setpos('.', window_position)
        normal! zt

        " Restore the previous cursor position.
        call setpos('.', cursor_position)
endfunction

cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

let g:javascript_plugin_jsdoc = 1
