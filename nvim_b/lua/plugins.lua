local programmingft = {'javascript', 'sh', 'typescript', 'python', 'zsh', 'javascriptreact', 'typescriptreact', 'html', 'lua', 'go', 'rust' }
local writingft = { 'text', 'markdown', 'off', 'org' }

return require('packer').startup(function(use)
  -- use {
  --     'glacambre/firenvim',
  --     run = function() vim.fn['firenvim#install'](0) end 
  -- }
  use 'wbthomason/packer.nvim'
  use {
    'neoclide/coc.nvim',
    branch = 'release',
    config = function() require 'plugs/coc' end,
    ft=programmingft,
  }
  use { 'RRethy/vim-illuminate' }

  use {
    'nvim-treesitter/nvim-treesitter',
    run=':TSUpdate',
    config = function() require'plugs/treesitter' end,
  }
  use {
    'lewis6991/gitsigns.nvim',
     config = function() require 'plugs/gitsigns' end,
     requires = {
      'nvim-lua/plenary.nvim'
     }
  }
  use {
    'terrortylor/nvim-comment',
    config = function() require 'plugs/comment' end
  }
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function() require 'plugs/indent' end
  }
  use {
    'kyazdani42/nvim-tree.lua',
    config = function() require 'plugs/tree' end
  }
  use {
    'honza/vim-snippets',
    requires = {
      'SirVer/ultisnips'
    },
    config = function()
     vim.g.UltiSnipsRemoveSelectModeMappings = 0
    end,
  }

  -- orgmode 
  use { 'gagbo/tree-sitter-org' }
  use { "akinsho/org-bullets.nvim", config = function()
    require("org-bullets").setup {
      symbols = { "◉", "○", "✸", "✿" }
    }
  end}
  use { 
    'nvim-orgmode/orgmode',
    branch = "master",
    config = function()
      require('orgmode').setup_ts_grammar()
      require('orgmode').setup{
        org_default_notes_file = '~/.syncing/Tasks/inbox.org',
        org_agenda_files = {'~/.syncing/Tasks/*.org'},
      }
    end,
  }
 use {
   'iamcco/markdown-preview.nvim',
    run = function() vim.cmd(':call nvim_ghost#installer#install()') end,
 }

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
      }
    end
  }

   use {
    'andreasvc/vim-256noir'
   }
   use {
    'fatih/vim-go'
  }
  use {
    'nvim-telescope/telescope.nvim',
    config = function() require 'plugs/telescope' end,
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-fzy-native.nvim'}}
  }
  use {'andymass/vim-matchup'}
  use {'rstacruz/vim-closer'}
  use {'justinmk/vim-sneak', config = function() require 'plugs/sneak' end}
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'glepnir/dashboard-nvim', config = function() require 'plugs/dashboard' end }
  use {'junegunn/goyo.vim', ft = writingft }
  use {'tpope/vim-fugitive'}
  use { 'norcalli/nvim-colorizer.lua', config = function() require 'plugs/colorizer' end }
  use {'farmergreg/vim-lastplace'}

  -- styling
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require("plugs/statusline")
    end
  }
  use 'alvarosevilla95/luatab.nvim'

  -- themes
  use 'VladPetryshyn/material.nvim'
  -- use {'morhetz/gruvbox'}
  -- use 'folke/tokyonight.nvim'
  -- use 'edersonferreira/dalton-vim'
  -- use 'romannmk/ambiance-vim'
  -- use 'ryanpcmcquen/true-monochrome_vim'
  -- use {'ayu-theme/ayu-vim'}
  -- use {'dracula/vim'}
  -- use {'richtan/pywal.vim'}
  use {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup {}
    end
  }
  use {'ActivityWatch/aw-watcher-vim'}
  use {
      'subnut/nvim-ghost.nvim',
      run = function() vim.cmd(':call nvim_ghost#installer#install()') end,
      config = function()
        -- vim.cmd("au nvim_ghost_user_autocommands User *leetcode.com set filetype=typescript")
      end
  }

end)


  -- use {'romgrk/barbar.nvim'}

  --use {'neovim/nvim-lspconfig', config = function() require 'plugs/lspconfig' end}
  --use {'glepnir/lspsaga.nvim', config = function() require 'plugs/lspsaga' end}
  --use {'nvim-lua/completion-nvim', config = function() require 'plugs/completion' end}
  -- use {
  --   'fatih/vim-go',
  --   ft = {'go'}
  -- }
  -- use {
  --   'glepnir/galaxyline.nvim',
  --     branch = 'main',
  --     config = function() require'plugs/line' end,
  --     requires = {'kyazdani42/nvim-web-devicons', opt = true}
  -- }
  -- use {
  --   'szw/vim-maximizer',
  --   ft = programmingft,
  --   config = function() require 'plugs/maximizer' end
  -- }
  -- use {
  --   'akinsho/nvim-bufferline.lua', 
  --   config = function() require 'plugs/bufferline' end,
  --   requires = 'kyazdani42/nvim-web-devicons',
  -- }
   -- use {
   --  'beauwilliams/statusline.lua',
   --   config = function()
   --     require("plugs/statusline")
   --   end
   -- }
  -- use {
  --   'glepnir/lspsaga.nvim',
  --   branch = "main",
  --   config = function() require 'plugs/lspsaga' end,
  --   ft=programmingft,
  -- }

--   use { 'hrsh7th/nvim-cmp', ft=programmingft }
--   use { 'hrsh7th/cmp-nvim-lsp', ft=programmingft }
--   use { 'mhartington/formatter.nvim' }
--   use { 'neovim/nvim-lspconfig', ft=programmingft, config = function()
--   require("lsp-config")
--   end,
-- }
  -- use { 'onsails/lspkind-nvim', ft=programmingft }
  -- use { 'quangnguyen30192/cmp-nvim-ultisnips', ft=programmingft }
