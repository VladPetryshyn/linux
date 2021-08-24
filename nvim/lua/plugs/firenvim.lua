vim.cmd("au BufEnter github.com_*.txt set filetype=markdown")
vim.cmd("au BufEnter leetcode.com_*.js set filetype=typescript")
-- vim.cmd([[ let g:firenvim_config = { 
--     \ 'globalSettings': {
--         \ 'alt': 'all',
--     \  },
--     \ 'localSettings': {
--         \ '.*': {
--             \ 'cmdline': 'neovim',
--             \ 'content': 'text',
--             \ 'priority': 0,
--             \ 'selector': 'textarea',
--             \ 'takeover': 'always',
--         \ },
--     \ }
-- }]])
