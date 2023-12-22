-- local writingft = { 'text', 'markdown', 'off', 'org' }

return require('packer').startup(function(use)
  use {'L3MON4D3/LuaSnip', config = function()
      local ls = require("luasnip")
      ls.setup{}
      require('luasnip.loaders.from_vscode').lazy_load({include = {"go"}})
      require('luasnip.loaders.from_snipmate').lazy_load({paths="~/Downloads/dotfiles/nvim/snippets"})
    end
  }
  use "rafamadriz/friendly-snippets"
	use 'wbthomason/packer.nvim'
  use {
  	"windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use 'hrsh7th/cmp-path'
	use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = function() require'plugs/treesitter'end }
	use {'justinmk/vim-sneak', config = function() require'plugs/sneak'end}
	use { 'norcalli/nvim-colorizer.lua', config = function() require('colorizer').setup{
    "*",
  css = { rgb_fn = true; css = true;}; -- Enable parsing rgb(...) functions in css.
  html = { rgb_fn = true; css = true; } -- Disable parsing "names" like Blue or Gray
  } end } 
	use { 'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function() require('gitsigns').setup() end 
	}
   	use {
    		'fatih/vim-go',
		ft={"go"}
  	}
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use 'windwp/nvim-ts-autotag'
  use { 'uZer/pywal16.nvim', as = 'pywal16' }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    config = function () require'plugs/tree'end
  }
  use { 'jose-elias-alvarez/null-ls.nvim', config = function ()
    require("plugs/null")
  end}
	use 'farmergreg/vim-lastplace'
	use 'andymass/vim-matchup'
	use 'RRethy/vim-illuminate'
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use { 'hrsh7th/nvim-cmp', config = function() require("plugs/cmp") end} -- Completion
  use { 'neovim/nvim-lspconfig', config = function() require("plugs/lspconfig") end } -- LSP
  use {
    'williamboman/mason.nvim',
    config = function() require("mason").setup() end
  }
  use {'williamboman/mason-lspconfig.nvim', config = function() require("mason-lspconfig").setup() end}

  use { 'glepnir/lspsaga.nvim', config = function() require("plugs/lspsaga") end}  -- LSP UIs
	-- theme
	use 'VladPetryshyn/material.nvim'
  	use {
    		"lukas-reineke/indent-blankline.nvim",
    		config = function() require 'plugs/indent' end
  	}
	-- end theme
	use {'tpope/vim-fugitive'}
	use {
  		'nvim-telescope/telescope.nvim',
      config = function ()
        require('telescope').setup{
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
      end,
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

  -- org
  use { 'gagbo/tree-sitter-org' }
  use { "akinsho/org-bullets.nvim", config = function()
    require("org-bullets").setup {}
  end}
  use { 
    'nvim-orgmode/orgmode',
    branch = "master",
    config = function()
      require('orgmode').setup{
      }
    end,
  }
  -- dart
  use {'dart-lang/dart-vim-plugin'}
  -- comments
  use {
    'terrortylor/nvim-comment',
    config = function()
        require('nvim_comment').setup()
      end
  }
  use { 'saadparwaiz1/cmp_luasnip' }
end)
