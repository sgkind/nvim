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

set nocompatible

" 配套插件
call plug#begin('~/.config/nvim/plugged')

" 高亮
Plug 'luochen1990/rainbow'  " 括号高亮
Plug 'sheerun/vim-polyglot' " 语法高亮

" tagbar
Plug 'majutsushi/tagbar'

Plug 'vim-scripts/taglist.vim'

Plug 'inkarkat/vim-ingo-library'
Plug 'jsfaint/gen_tags.vim'
Plug 'easymotion/vim-easymotion'  "代码跳转，页面内跳转

" 代码格式化工具
Plug 'rhysd/vim-clang-format'

" Plug 'p00f/clangd_extensions.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" For vsnip users
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Fuzzy finder
" Optional
Plug 'nvim-lua/popup.nvim'

" 内置终端
Plug 'skywind3000/vim-terminal-help'

" markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

call plug#end()

"vim-markdown disable folding
let g:vim_markdown_folding_disabled = 1

" for nvim-tree
:lua vim.g.loaded_netrw = 1
:lua vim.g.loaded_netrwPlugin = 1

:lua require("plugins")

:lua require("lsp")

" to setup https://github.com/lewis6991/gitsigns.nvim
:lua require('gitsigns').setup()

:lua require("others")

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when ther's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menu,menuone,noselect

:lua require("nvim-cmp")

" Avoid showing extra messages when using completion
set shortmess+=c

:lua require("keybindings")
