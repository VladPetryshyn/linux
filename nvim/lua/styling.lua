local o = vim.o

if vim.fn.has('termguicolors') == 1 then
    o.termguicolors = true
end
vim.cmd('syntax enable')
vim.cmd("let ayucolor='dark'")
colors = 'dark'
o.background=colors
vim.g.material_terminal_italics = 1
vim.g.material_theme_style = 'ocean-community'

vim.cmd('colorscheme gruvbox')
vim.cmd('autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE')

-- vim.api.nvim_exec([[
-- if vim.fn.has('nvim') == 1 then
-- $NVIM_TUI_ENABLE_TRUE_COLOR = 1
-- end
-- ]], false)
if vim.fn.has('termguicolors') == 1 then
        vim.cmd('set termguicolors')
end
vim.g.bufferline = {
  auto_hide = false
}
-- airline

-- vim.cmd('let g:airline#extensions#tabline#enabled = 0')
-- vim.cmd('let g:airline#extensions#tabline#show_close_button = 0') -- remove 'X' at the end of the tabline                                            
-- vim.cmd([[let g:airline#extensions#tabline#tabs_label = '']])       -- can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
-- vim.cmd([[let g:airline#extensions#tabline#buffers_label = '']])    -- can put text here like TABS to denote tabs (I clear it so nothing is shown)      
-- vim.cmd([[let g:airline#extensions#tabline#fnamemod = ':t']])       -- disable file paths in the tab                                                    
-- vim.cmd('let g:airline#extensions#tabline#show_tab_count = 0')   -- dont show tab numbers on the right                                                           
-- vim.cmd('let g:airline#extensions#tabline#show_buffers = 0')      -- dont show buffers in the tabline                                                 
-- vim.cmd('let g:airline#extensions#tabline#tab_min_count = 2')     -- minimum of 2 tabs needed to display the tabline                                  
-- vim.cmd('let g:airline#extensions#tabline#show_splits = 0')       -- disables the buffer name that displays on the right of the tabline               
-- vim.cmd('let g:airline#extensions#tabline#show_tab_nr = 0')       -- disable tab numbers                                                              
-- vim.cmd('let g:airline#extensions#tabline#show_tab_type = 0')
-- vim.cmd('let g:airline_powerline_fonts = 0')
-- vim.cmd([[let g:airline_linecolumn_prefix = '¶ ']])
-- vim.cmd([[let g:airline_fugitive_prefix = '⎇ ']])
-- vim.cmd([[let g:airline_paste_symbol = 'ρ']])
-- 
--  -- vim.api.nvim_exec(
--  -- [[
--  -- let g:airline_filetype_overrides = {
--  --       'coc-explorer':  [ 'CoC Explorer', '' ],
--  --       'fugitive': ['fugitive', '%{airline#util#wrap(airline#extensions#branch#get_head(),80)}'],
--  --       'help':  [ 'Help', '%f' ],
--  --       'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
--  --       'startify': [ 'startify', '' ],
--  --       'vim-plug': [ 'Plugins', '' ],
--  --       }
--  -- ]]
--  -- , false)
 
-- vim.cmd("au VimEnter * let [g:airline_section_x, g:airline_section_b] = [airline#section#create(['hunks']), airline#section#create(['branch'])]")
 
-- -- let g:airline_left_sep = ''
-- -- let g:airline_right_sep = ''
-- vim.cmd('let g:webdevicons_enable_airline_tabline = 1')
-- vim.cmd('let g:webdevicons_enable_airline_statusline = 1')
-- vim.cmd('let g:webdevicons_enable_ctrlp = 1')
-- vim.cmd('let g:webdevicons_enable_startify = 1')
-- vim.cmd('let g:airline_skip_empty_sections = 1')
-- vim.cmd('let g:airline_section_z = 0')
-- vim.cmd("let g:airline#extensions#tabline#formatter = 'unique_tail'")
