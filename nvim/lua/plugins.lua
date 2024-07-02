require("lazy").setup({
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "uZer/pywal16.nvim", name = "pywal16" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "mbbill/undotree" },
	{ "tpope/vim-fugitive", lazy = true },
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
