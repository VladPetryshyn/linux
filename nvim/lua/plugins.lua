require("lazy").setup({
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	-- colorschemes
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_foreground = "original"
			vim.g.gruvbox_material_cursor = "red"
			vim.g.gruvbox_material_better_performance = true
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
	-- { "uZer/pywal16.nvim", name = "pywal16" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "mbbill/undotree" },
	{ "tpope/vim-fugitive", lazy = true },
	{
		"nvim-treesitter/nvim-treesitter-context",
		-- lazy = true,
		config = function()
			require("treesitter-context").setup({
				enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
				max_lines = 2, -- How many lines the window should span. Values <= 0 mean no limit.
				min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
				line_numbers = true,
				multiline_threshold = 20, -- Maximum number of lines to show for a single context
				trim_scope = "outer", -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
				mode = "cursor", -- Line used to calculate context. Choices: 'cursor', 'topline'
				-- Separator between context and content. Should be a single character string, like '-'.
				-- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
				separator = nil,
				zindex = 20, -- The Z-index of the context window
				on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
			})
		end,
	},
	-- lsp
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-nvim-lua" },
	{ "hrsh7th/cmp-path" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "farmergreg/vim-lastplace" },
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{ "kyazdani42/nvim-tree.lua", dependencies = { "kyazdani42/nvim-web-devicons" } },
	-- shows keymaps
	{
		"folke/which-key.nvim",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		lazy = true,
	},
	-- tmux navigation
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		lazy = true,
	},

	-- matching closing stuff
	{ "andymass/vim-matchup", event = "VeryLazy" },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	{
		"nvim-orgmode/orgmode",
		ft = { "org" },
		dependencies = { "akinsho/org-bullets.nvim" },
		config = function()
			require("orgmode").setup({})
			require("org-bullets").setup()
		end,
	},

	-- linting and formatting
	{
		"mfussenegger/nvim-lint",
	},
	{
		"stevearc/conform.nvim",
	},

	-- vim sneak
	{
		"justinmk/vim-sneak",
		event = "VeryLazy",
	},

	require("plugs/gen"),
	-- enable blankline only with this theme
	{ "sainnhe/gruvbox-material" },

	-- indent
	{ "tpope/vim-sleuth" },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

	-- webdev
	{
		"olrtg/nvim-emmet",
		config = function()
			vim.keymap.set({ "n", "v" }, "<leader>xe", require("nvim-emmet").wrap_with_abbreviation)
		end,
		ft = { "html", "css", "javascriptreact", "typescriptreact", "javascript" },
	},

	-- markdown
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	{
		"folke/zen-mode.nvim",
		ft = { "markdown" },
	},
})

-- { "David-Kunz/gen.nvim",
--     opts = {
--         model = "dolphin-mistral"
--     }
-- },
-- {
--     "kawre/leetcode.nvim",
--     build = ":TSUpdate html",
--     dependencies = {
--         "nvim-telescope/telescope.nvim",
--         "nvim-lua/plenary.nvim", -- required by telescope
--         "MunifTanjim/nui.nvim",
--
--         -- optional
--         "nvim-treesitter/nvim-treesitter",
--         "rcarriga/nvim-notify",
--         "nvim-tree/nvim-web-devicons",
--     },
--     opts = {
--         arg = "leetcode"
--     },
--     lazy = true
-- },
--
--
-- for indenting indents guess-indent.nvim
