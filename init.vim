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
call plug#begin()

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
Plug 'p00f/clangd_extensions.nvim'

call plug#end()

:lua require("lsp")

" 快捷键
