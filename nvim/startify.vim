let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_session_delete_buffers = 1
let g:startify_session_autoload = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_bookmarks = [
            \ {'w':'~/Документы/work/vv_new_front'},
            \ {'p':'~/Документы/learn/patterns'},
            \ {'r': '~/Документы/learn/reddit-clone' }]

let g:startify_custom_header = [
        \ '   _  __     _         __  ___         __ ',
        \ '  / |/ /  __(_)_ _    /  |/  /__ _____/ / ',
        \ ' /    / |/ / /  ` \  / /|_/ / _ `/ __/ _ \',
        \ '/_/|_/|___/_/_/_/_/ /_/  /_/\_,_/\__/_//_/',
        \]

let g:fzf_layout= {'window':{'width':0.8, 'height':0.8}}
