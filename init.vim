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

" 状态栏 多文件切换
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" 高亮
Plug 'luochen1990/rainbow'  " 括号高亮
Plug 'inkarkat/vim-mark'    " 代码高亮
Plug 'sheerun/vim-polyglot' " 语法高亮

" 目录
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'lukas-reineke/indent-blankline.nvim' "对齐线

Plug 'vim-scripts/taglist.vim'

Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'
Plug 'jsfaint/gen_tags.vim'
Plug 'easymotion/vim-easymotion'  "代码跳转，页面内跳转

" 代码格式化工具
Plug 'rhysd/vim-clang-format'

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

" 模糊匹配工具
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" git
Plug 'lewis6991/gitsigns.nvim'

Plug 'liuchengxu/vista.vim'

" sync
Plug 'kenn7/vim-arsync'

" markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim'

call plug#end()

lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
require("indent_blankline").setup {
	show_current_context = true,
	show_current_context_start = true,
	show_end_of_line = true,
	space_char_blankline = " ",
}
END
:lua require("keybindings")
:lua require("lsp")

:lua require('gitsigns').setup()

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
