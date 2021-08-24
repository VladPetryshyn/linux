-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/vlad/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/vlad/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/vlad/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/vlad/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/vlad/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["coc.nvim"] = {
    config = { "\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14plugs/coc\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/opt/coc.nvim"
  },
  firenvim = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plugs/firenvim\frequire\0" },
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/firenvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15plugs/line\frequire\0" },
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plugs/gitsigns\frequire\0" },
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/opt/goyo.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plugs/indent\frequire\0" },
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugs/bufferline\frequire\0" },
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugs/colorizer\frequire\0" },
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plugs/comment\frequire\0" },
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plugs/explorer\frequire\0" },
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugs/treesitter\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugs/telescope\frequire\0" },
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-closer"] = {
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/vim-closer"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-lastplace"] = {
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/vim-lastplace"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-maximizer"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugs/maximizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/opt/vim-maximizer"
  },
  ["vim-orgmode"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/opt/vim-orgmode"
  },
  ["vim-sneak"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16plugs/sneak\frequire\0" },
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-startify"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plugs/startify\frequire\0" },
    loaded = true,
    path = "/home/vlad/.local/share/nvim/site/pack/packer/start/vim-startify"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plugs/gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: vim-sneak
time([[Config for vim-sneak]], true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16plugs/sneak\frequire\0", "config", "vim-sneak")
time([[Config for vim-sneak]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plugs/explorer\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: vim-startify
time([[Config for vim-startify]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plugs/startify\frequire\0", "config", "vim-startify")
time([[Config for vim-startify]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17plugs/indent\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15plugs/line\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugs/telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugs/bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: firenvim
time([[Config for firenvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plugs/firenvim\frequire\0", "config", "firenvim")
time([[Config for firenvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plugs/comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugs/colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType sh ++once lua require("packer.load")({'vim-maximizer', 'coc.nvim', 'nvim-treesitter'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-maximizer', 'coc.nvim', 'nvim-treesitter'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'vim-maximizer', 'coc.nvim', 'nvim-treesitter'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType org ++once lua require("packer.load")({'goyo.vim', 'vim-orgmode'}, { ft = "org" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'vim-maximizer', 'coc.nvim', 'nvim-treesitter'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'vim-maximizer', 'coc.nvim', 'nvim-treesitter'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType zsh ++once lua require("packer.load")({'vim-maximizer', 'coc.nvim', 'nvim-treesitter'}, { ft = "zsh" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'vim-maximizer', 'coc.nvim', 'nvim-treesitter'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'vim-maximizer', 'coc.nvim', 'nvim-treesitter'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'vim-maximizer', 'coc.nvim', 'nvim-treesitter'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType off ++once lua require("packer.load")({'goyo.vim'}, { ft = "off" }, _G.packer_plugins)]]
vim.cmd [[au FileType text ++once lua require("packer.load")({'goyo.vim'}, { ft = "text" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'goyo.vim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-maximizer', 'coc.nvim', 'nvim-treesitter'}, { ft = "javascript" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/vim-orgmode/ftdetect/org.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/vim-orgmode/ftdetect/org.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/vim-orgmode/ftdetect/org.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/elixir.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/elixir.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/elixir.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/fish.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/fish.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/fish.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/gdresource.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/gdresource.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/gdresource.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/gdscript.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/gdscript.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/gdscript.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/gomod.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/gomod.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/gomod.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/graphql.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/graphql.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/graphql.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/hcl.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/hcl.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/hcl.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/julia.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/julia.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/julia.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/ledger.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/ledger.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/ledger.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/nix.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/nix.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/nix.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/ql.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/ql.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/ql.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/query.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/query.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/query.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/surface.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/surface.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/surface.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/teal.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/teal.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/teal.vim]], false)
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/yang.vim]], true)
vim.cmd [[source /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/yang.vim]]
time([[Sourcing ftdetect script at: /home/vlad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/yang.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
