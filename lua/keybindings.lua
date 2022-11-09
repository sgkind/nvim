vim.g.mapleader =  " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Visual模式，复制到系统剪贴板
map("v", "<C-y>", '"+y', opts)
-- Insert right
map("i", "<C-f>", "<Right>", opts)

-- windows分屏快捷键
map("n", "<leader>ss", ":vsp<CR>", opts)
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>l", "<C-w>l", opts)
-- 关闭当前
map("n", "<leader>x", "<C-w>c", opts)
-- 新tab打开当前页面
map("n", "<leader>t", "<C-w>T", opts)

-- visual模式下缩进代码
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opts)
map("v", "K", ":move '<-2<CR>gv-gv", opts)

map("n", "<leader>e", ":NERDTreeToggle<CR>", opts)
map("n", "<leader>o", ":NERDTreeFocus<CR>", opts)
map("n", "<leader>w", ":NERDTreeFind<cR>", opts)

-- Find files using Telescope command-line sugar
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)

-- tabline barbar
-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position..
map('n', '<leader>1', ':BufferGoto 1<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- diagnostic
map('n', '<space>d', '<cmd> lua vim.diagnostic.open_float()<CR>', opts)
map('n', '[d', '<cmd> lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd> lua vim.diagnostic.goto_next()<CR>', opts)
map('n', '<space>q', '<cmd> lua vim.diagnostic.setloclist()<CR>', opts)

return pluginKeys
