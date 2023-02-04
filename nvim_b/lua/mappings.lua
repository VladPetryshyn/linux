local map = vim.api.nvim_set_keymap
vim.g.mapleader = ","

local options = { noremap = true }

local function nnoremap(from, to)
  map("n", from, to, options)
end

map('n', '<leader>t', ':call Term_toggle(10)<cr>', options)
map('n', '<leader>y', '<C-w>h', options)
map('n', '<leader>n', '<C-w>j', options)
map('n', '<leader>e', '<C-w>k', options)
map('n', '<leader>o', '<C-w>l', options)
map('n', '<leader><BS>', 'C-w>h', options)

map('n', 'j', "(v:count == 0 ? 'gj' : 'j')", { noremap = true, expr = true })
map('n', 'k', "(v:count == 0 ? 'gk' : 'k')", { noremap = true, expr = true })


map('n', 'R', ':tabprev<CR>', options)
map('n', 'W', ':tabnext<CR>', options)
-- map('n', 'R', ':tabprev<CR>', options)
-- map('n', 'W', ':tabnext<CR>', options)
map('', '<C-a', 'ggVG<CR>', options)

-- map('v', '<leader>a')

-- vmap <leader>a <Plug>(coc-codeaction-selected)
--map <leader>tc :CocCommand todolist.create<CR>
-- map <leader>clt :CocCommand todolist.clear<CR>
-- map <leader>cn :CocCommand todolist.closeNotice<CR>

nnoremap('l', 'o')
nnoremap('o', 'l')
nnoremap('L', 'O')
nnoremap('O', 'L')
nnoremap('j', 'n')
nnoremap('n', 'j')
nnoremap('J', 'N')
nnoremap('N', 'mzJ`z')
map('n', [[<C-\>]], ':NvimTreeToggle<CR>', { noremap = true})
-- nnoremap('g', 'gj')
-- nnoremap('g', 'gn')
-- nnoremap('k', 'e')
-- nnoremap('k', 'nzzzv')
nnoremap('e', 'k')
nnoremap('K', 'E')
-- nnoremap('K', 'Nzzzv')
nnoremap('E', '<nop>')
-- nnoremap('gk', 'ge')
-- nnoremap('ge', 'gk')
nnoremap('h', 'y')
nnoremap('h', 'y')
nnoremap('y', 'h')
nnoremap('H', 'Y')
nnoremap('Y', 'H')
nnoremap('J', 'y$')
vim.cmd([[
  inoremap , ,<c-g>u
  inoremap . .<c-g>u
  inoremap ! !<c-g>u
  inoremap ? ?<c-g>u
  inoremap } }<c-g>u
  inoremap { {<c-g>u
  inoremap [ [<c-g>u
  inoremap ] ]<c-g>u
]])
vim.cmd([[
  nnoremap <leader>N :m .+1<CR>==
  nnoremap <leader>E :m .-2<CR>==
]])

vim.g.coc_snippet_next = '<c-n>'
vim.g.coc_snippet_prev = '<c-e>'

-- telescope
map('n', '<leader>p', ':lua require("telescope.builtin").find_files(require("telescope.themes").get_dropdown({}))<cr>', {})
map('n', '<leader>gc', ':lua require("telescope.builtin").git_branches()<cr>', { noremap = true })

-- vim.cmd([[
-- nnoremap <silent>    <A-1> :BufferGoto 1<CR>
-- nnoremap <silent>    <A-2> :BufferGoto 2<CR>
-- nnoremap <silent>    <A-3> :BufferGoto 3<CR>
-- nnoremap <silent>    <A-4> :BufferGoto 4<CR>
-- nnoremap <silent>    <A-5> :BufferGoto 5<CR>
-- nnoremap <silent>    <A-6> :BufferGoto 6<CR>
-- nnoremap <silent>    <A-7> :BufferGoto 7<CR>
-- nnoremap <silent>    <A-8> :BufferGoto 8<CR>
-- nnoremap <silent>    <A-9> :BufferLast<CR>
-- " Close buffer
-- ]])
map("n", "<leader>gs", ":G<CR>", {})



-- nnoremap("gd", "cmd lua vim.lsp.buf.definition()<CR>")
-- nnoremap("gD", "cmd lua vim.lsp.buf.declaration()<CR>")
-- nnoremap("gr", "cmd lua vim.lsp.buf.references()<CR>")
-- nnoremap("K", "cmd lua vim.lsp.buf.hover()<CR>")
-- nnoremap("<C-n>", "cmd lua vim.lsp.diagnostic.goto_next()<CR>")
-- nnoremap("<C-n>", "cmd lua vim.lsp.diagnostic.goto_prev()<CR>")
-- 
-- vim.cmd([[
-- autocmd BufWritePre *.js <cmd>EslintFixAll<CR>
-- autocmd BufWritePre *.jsx <cmd>EslintFixAll<CR>
-- autocmd BufWritePre *.ts <cmd>EslintFixAll<CR>
-- autocmd BufWritePre *.tsx <cmd>EslintFixAll<CR>
-- autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
-- ]])
-- 
-- vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
