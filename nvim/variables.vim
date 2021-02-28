" mta
let g:mta_use_matchparen_group = 1
let g:mta_set_default_matchtag_color = 1
let g:mta_filetypes = {
                        \ 'html' : 1,
                        \ 'xhtml' : 1,
                        \ 'xml' : 1,
                        \ 'jinja' : 1,
                        \ 'typescript.tsx' : 1,
                        \ 'javascript.jsx' : 1,
                        \ 'js' : 1,
                        \ 'javascript':1
                        \}
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.tsx,*.jsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'

let s:ag_options = ' --one-device --skip-vcs-ignores --smart-case '


let g:bettercomments_language_aliases = { 'javascript': 'js' }
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"     \ "Staged"    : "#0ee375",
"     \ "Modified"  : "#d9bf91",
"     \ "Renamed"   : "#51C9FC",
"     \ "Untracked" : "#FCE77C",
"     \ "Unmerged"  : "#FC51E6",
"     \ "Dirty"     : "#FFBD61",
"     \ "Clean"     : "#87939A",
"     \ "Ignored"   : "#808080"
"     \ }
" fzf

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let $FZF_DEFAULT_OPTS = '--reverse'
let g:loaded_netrw = 1
