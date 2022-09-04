local lsp_servers = {
	"clangd",
}

-- 需要特殊配置的lsp server
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local lsp_server_configs = {
}

local lspconfig = require("lspconfig")

local default_on_attach = function(client, bufnr)
	client.resolved_capabilities.document_formatting = false
	client.resolved_capabilities.document_range_formatting = false
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end
	-- 绑定快捷键
	require("keybindings").mapLSP(buf_set_keymap)
	vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
end

for _, server in pairs(lsp_servers) do
	local options = lsp_server_configs[server]
	if options == nil then
		lspconfig[server].setup({
			on_attach = default_on_attach,
			flags = {
				debounce_text_changes = 150,
			}
		})
  else 
  	lspconfig[server].setup(options)
  end
end
