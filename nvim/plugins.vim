" isntalling vim plug
 if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif
 
call plug#begin("~/.vim/plugged")
" Plugin Section
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'psliwka/vim-smoothie'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'artanikin/vim-synthwave84'
Plug 'liuchengxu/vista.vim'
Plug 'KabbAmine/vCoolor.vim'
Plug 'Yggdroot/indentLine'
Plug 'mattn/webapi-vim'
Plug 'mattn/vim-gist/'
Plug 'AndrewRadev/tagalong.vim'
Plug 'mbbill/undotree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'ianding1/leetcode.vim'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'chun-yang/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'connorholyday/vim-snazzy'
Plug 'tmhedberg/SimpylFold'
Plug 'wikitopian/hardmode'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'mhinz/vim-startify'
Plug 'nvie/vim-flake8'
Plug 'metakirby5/codi.vim'
Plug 'iamcco/markdown-preview.nvim'
Plug 'vim-scripts/indentpython.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'wesQ3/vim-windowswap'
Plug 'junegunn/fzf.vim'
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
Plug 'sheerun/vim-polyglot'
Plug 'stsewd/fzf-checkout.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" " Typescript
Plug 'herringtondarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'alvan/vim-closetag'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'Valloric/MatchTagAlways'
Plug 'tpope/vim-fugitive'
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }
Plug 'tomtom/tcomment_vim'
Plug 'jbgutierrez/vim-better-comments'
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'justinmk/vim-sneak'
call plug#end()

