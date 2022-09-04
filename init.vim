" 基本配置
set number
filetype plugin indent on
set showmatch
set shiftwidth=2
set tabstop=2
set encoding=utf-8
set hlsearch
set autoindent


" 配套插件
call plug#begin('~/.config/nvim/plugged')

" 状态栏 多文件切换
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 高亮
Plug 'luochen1990/rainbow'  " 括号高亮
Plug 'inkarkat/vim-mark'    " 代码高亮
Plug 'sheerun/vim-polyglot' " 语法高亮

" 目录
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine' "对齐线

Plug 'vim-scripts/taglist.vim'

Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'
Plug 'jsfaint/gen_tags.vim'
Plug 'easymotion/vim-easymotion'  "代码跳转，页面内跳转

" lsp
Plug 'neovim/nvim-lspconfig'
" Plug 'p00f/clangd_extensions.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" sync
Plug 'kenn7/vim-arsync'

call plug#end()

:lua require("keybindings")
:lua require("lsp")

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
