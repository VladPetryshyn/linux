conform = require("conform")
conform.setup({
	formatters_by_ft = {
		-- lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "black" },
		-- Use a sub-list to run only the first available formatter
		javascript = { { "prettierd" } },
		typescript = { { "prettierd" } },
		typescriptreact = { { "prettierd" } },
		javascriptreact = { { "prettierd" } },
		lua = { { "stylua" } },
		scss = { { "prettierd" } },
		css = { { "prettierd" } },
		sass = { { "prettierd" } },
		go = { { "gofumpt" } },
	},
	-- format_on_save = {
	-- 	lsp_fallback = true,
	-- 	async = true
	-- }
})

-- vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
-- 	pattern="*.js,*.ts,*.tsx,*.jsx"
--   callback = function(args)
--     require("conform").format({ bufnr = args.buf })
--   end,
-- })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = "*",
	callback = function(args)
		pcall(conform.format, { bufnr = args.buf })
	end,
})
