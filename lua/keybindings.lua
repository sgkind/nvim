vim.g.mapleader =  " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- Visual模式，复制到系统剪贴板
map("v", "<C-y>", '"+y', opt)
-- Insert right
map("i", "<C-f>", "<Right>", opt)

-- windows分屏快捷键
map("n", "<leader>ss", ":vsp<CR>", opt)
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>l", "<C-w>l", opt)
-- 关闭当前
map("n", "<leader>x", "<C-w>c", opt)
-- 新tab打开当前页面
map("n", "<leader>t", "<C-w>T", opt)

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

local pluginKeys = {}

map("n", "<leader>e", ":NERDTreeToggle<CR>", opt)
map("n", "<leader>o", ":NERDTreeFocus<CR>", opt)
map("n", "<leader>w", ":NERDTreeFind<cR>", opt)

-- Find files using Telescope command-line sugar
map('n', '<leader>ff', ':Telescope find_files<CR>', opt)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opt)
map('n', '<leader>fb', ':Telescope buffers<CR>', opt)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opt)

pluginKeys.mapLSP = function(mapbuf)
	-- rename
	mapbuf('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
	-- code action
	mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
	-- go xx
	mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
	mapbuf('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
	mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
	mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
	mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
	-- diagnostic
	mapbuf('n', 'go', '<cmd> lua vim.diagnostic.open_float()<CR>', opt)
	mapbuf('n', 'gk', '<cmd> lua vim.diagnostic.goto_prev()<CR>', opt)
	mapbuf('n', 'gj', '<cmd> lua vim.diagnostic.goto_next()<CR>', opt)
	-- format
	mapbuf('n', '<leader>fo', '<cmd>lua vim.lsp.buf.formatting()<CR>', { noremap = true })
end

return pluginKeys
