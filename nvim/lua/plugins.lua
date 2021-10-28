local programmingft = {'javascript', 'sh', 'typescript', 'python', 'zsh', 'javascriptreact', 'typescriptreact', 'html', 'lua', 'go' }
local writingft = { 'text', 'markdown', 'off', 'org' }

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {'morhetz/gruvbox'}
  use {
    'glepnir/lspsaga.nvim',
    branch = "main"
  }

  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'mhartington/formatter.nvim' }
  use { 'neovim/nvim-lspconfig' }
  use { 'onsails/lspkind-nvim' }
  use { 'quangnguyen30192/cmp-nvim-ultisnips' }

  use {
    'nvim-treesitter/nvim-treesitter',
    run=':TSUpdate',
    ft=programmingft,
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

  use { 
    'kristijanhusak/orgmode.nvim',
    config = function()
      require('orgmode').setup{
        org_default_notes_file = '~/.syncing/Tasks/inbox.org',
        org_agenda_files = {'~/.syncing/Tasks/*.org'},
      }
    end,
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
    'beauwilliams/statusline.lua',
     config = function()
       require("plugs/statusline")
     end
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

  -- themes
  use 'folke/tokyonight.nvim'
  use {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup {}
    end
  }
  use {'ayu-theme/ayu-vim'}
  use {'dracula/vim'}
  use {'richtan/pywal.vim'}
  use {'ActivityWatch/aw-watcher-vim'}
end)


  -- use {'romgrk/barbar.nvim'}

  --use {'neovim/nvim-lspconfig', config = function() require 'plugs/lspconfig' end}
  --use {'glepnir/lspsaga.nvim', config = function() require 'plugs/lspsaga' end}
  --use {'nvim-lua/completion-nvim', config = function() require 'plugs/completion' end}
  -- use {
  --   'fatih/vim-go',
  --   ft = {'go'}
  -- }
  -- use { 'alvarosevilla95/luatab.nvim', requires='kyazdani42/nvim-web-devicons', config = function() require 'plugs/luatab' end }
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
  --     'glacambre/firenvim',
  --     run = function() vim.fn['firenvim#install'](0) end ,
  --     config = function() require 'plugs/firenvim' end
  -- }
  -- use {
  --   'akinsho/nvim-bufferline.lua', 
  --   config = function() require 'plugs/bufferline' end,
  --   requires = 'kyazdani42/nvim-web-devicons',
  -- }
