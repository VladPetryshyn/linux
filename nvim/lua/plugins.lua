require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{'uZer/pywal16.nvim', name = 'pywal16',},
	{'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"},
	{'ThePrimeagen/harpoon'},
	{'mbbill/undotree'},
	{'tpope/vim-fugitive'},
	-- lsp
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-nvim-lua'},
	{'hrsh7th/cmp-path'},
	{'L3MON4D3/LuaSnip'},
	{"williamboman/mason.nvim"},
	{"williamboman/mason-lspconfig.nvim",},
	{"saadparwaiz1/cmp_luasnip"},
	{"rafamadriz/friendly-snippets"},
    {'farmergreg/vim-lastplace'},
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },
    {'lewis6991/gitsigns.nvim', config = function() require'gitsigns'.setup() end},
    {'kyazdani42/nvim-tree.lua', dependencies = {'kyazdani42/nvim-web-devicons'}},
    -- org mode
    -- {
    --     'nvim-orgmode/orgmode',
    --     event = 'VeryLazy',
    --     -- config = function()
    --     --     --[[ require('orgmode').setup({
    --     --         org_agenda_files = '~/orgfiles/**/*',
    --     --         org_default_notes_file = '~/orgfiles/refile.org',
    --     --     }) ]]
    --     -- end,
    -- },
    -- {"akinsho/org-bullets.nvim"},
    -- { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
    {'m4xshen/autoclose.nvim'},
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    {
        "kawre/leetcode.nvim",
        build = ":TSUpdate html",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim", -- required by telescope
            "MunifTanjim/nui.nvim",

            -- optional
            "nvim-treesitter/nvim-treesitter",
            "rcarriga/nvim-notify",
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            arg = "leetcode"
        },
        lazy = true
    },
    {
        'christoomey/vim-tmux-navigator',
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        -- keys = {
        --     { "<leader>h", "<cmd><C-U>TmuxNavigateLeft<cr>" },
        --     { "<leader>j", "<cmd><C-U>TmuxNavigateDown<cr>" },
        --     { "<leader>k", "<cmd><C-U>TmuxNavigateUp<cr>" },
        --     { "<leader>l", "<cmd><C-U>TmuxNavigateRight<cr>" },
        --     { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        -- },
    },
    {'andymass/vim-matchup', init = function() 
        vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end},
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    {
        "ray-x/go.nvim",
        dependencies = {  -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = {"CmdlineEnter"},
        ft = {"go", 'gomod'},
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },
    { "David-Kunz/gen.nvim",
        opts = {
            model = "dolphin-mistral"
        }
    },
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        config = true,
    }
})
