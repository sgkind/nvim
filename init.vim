" 基本配置
set number
filetype plugin indent on
set showmatch
set shiftwidth=2
set tabstop=2
set encoding=utf-8
set hlsearch
set autoindent
set colorcolumn=80

set nobackup
set noswapfile
set nowritebackup
set noundofile

" 配套插件
call plug#begin('~/.config/nvim/plugged')

" 高亮
Plug 'luochen1990/rainbow'  " 括号高亮
Plug 'inkarkat/vim-mark'    " 代码高亮
Plug 'sheerun/vim-polyglot' " 语法高亮

" 目录
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'

Plug 'vim-scripts/taglist.vim'

Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'
Plug 'jsfaint/gen_tags.vim'
Plug 'easymotion/vim-easymotion'  "代码跳转，页面内跳转

" 代码格式化工具
Plug 'rhysd/vim-clang-format'

" Plug 'p00f/clangd_extensions.nvim'

" lsp
" Collection of common configurations for the nvim lsp client
Plug 'neovim/nvim-lspconfig'

" Extentions to build-in lsp, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" To enable more of the features of rust-analyzer, such as inlay hints
Plug 'simrat39/rust-tools.nvim'

" Fuzzy finder
" Optional
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" 模糊匹配工具
" Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'

" git
Plug 'lewis6991/gitsigns.nvim'

" 内置终端
Plug 'skywind3000/vim-terminal-help'

" sync
Plug 'kenn7/vim-arsync'

" markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim'

call plug#end()

:lua require("plugins")

:lua require("lsp")

:lua require('gitsigns').setup()

:lua require("nvim-cmp")
:lua require("others")

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when ther's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menu,menuone,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

:lua require("keybindings")

" 快捷键
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
