local map = vim.keymap.set

local builtin = require('telescope.builtin')

--[[ vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep >")});
end) ]]


map('n', '<leader>p', builtin.find_files, {})
map('n', '<leader>f', builtin.live_grep, { noremap = true })
map('n', '<leader>gc', ':lua require("telescope.builtin").git_branches()<cr>', { noremap = true })
map("n", "<leader>gs", ":G<CR>", {})

require("telescope").setup{
    -- see :help telescope.setup()
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = require('telescope.actions').close
            }
        },
        -- The below pattern is lua regex and not wildcard
        file_ignore_patterns = {"node_modules","%.out"},
        prompt_prefix = "🔍 ",
    }
}
