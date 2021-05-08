command Push execute "!git push"
command Pusho execute "!git push --set-upstream origin"

augroup MySave
autocmd BufWriteCmd * :w % | set nomodified
augroup END
