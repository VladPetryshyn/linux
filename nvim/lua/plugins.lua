local programmingft = {'javascript', 'sh', 'typescript', 'python', 'zsh', 'javascriptreact', 'typescriptreact', 'html', 'lua', 'go' }
local writingft = { 'text', 'markdown', 'off', 'org' }

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'neoclide/coc.nvim',
    branch = 'release',
    config = function() require 'plugs/coc' end,
    ft=programmingft,
  }
  use {'morhetz/gruvbox'}
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
    config = function() require 'plugs/explorer' end
  }
  use {
    'nvim-telescope/telescope.nvim',
    config = function() require 'plugs/telescope' end,
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-fzy-native.nvim'}}
  }
  use {'andymass/vim-matchup'}
  use {'rstacruz/vim-closer'}
  use {'justinmk/vim-sneak', config = function() require 'plugs/sneak' end}
  use {'mhinz/vim-startify', config = function() require 'plugs/startify' end}
  use {'junegunn/goyo.vim', ft = writingft }
  use {'tpope/vim-fugitive'}
  -- use { 'alvarosevilla95/luatab.nvim', requires='kyazdani42/nvim-web-devicons' }
  use {
    'glepnir/galaxyline.nvim',
      branch = 'main',
      config = function() require'plugs/line' end,
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use { 'norcalli/nvim-colorizer.lua', config = function() require 'plugs/colorizer' end }
  use {
    'szw/vim-maximizer',
    ft = programmingft,
    config = function() require 'plugs/maximizer' end
  }
  use {'farmergreg/vim-lastplace'}
  use { 'jceb/vim-orgmode', ft = { 'org' } }
  use {
      'glacambre/firenvim',
      run = function() vim.fn['firenvim#install'](0) end ,
      config = function() require 'plugs/firenvim' end
  }
  use {
    'akinsho/nvim-bufferline.lua', 
    config = function() require 'plugs/bufferline' end,
    requires = 'kyazdani42/nvim-web-devicons',
  }
  use {'ayu-theme/ayu-vim'}
  --use {'neovim/nvim-lspconfig', config = function() require 'plugs/lspconfig' end}
  --use {'romgrk/barbar.nvim'}
  --use {'glepnir/lspsaga.nvim', config = function() require 'plugs/lspsaga' end}
  --use {'nvim-lua/completion-nvim', config = function() require 'plugs/completion' end}
  -- use {
  --   'fatih/vim-go',
  --   ft = {'go'}
  -- }
end)
