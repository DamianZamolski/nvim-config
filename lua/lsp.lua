local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.bashls.setup({ capabilities = capabilities })
lspconfig.clangd.setup({ capabilities = capabilities })
lspconfig.cssls.setup({ capabilities = capabilities, cmd = { 'vscode-css-languageserver', '--stdio' } })
lspconfig.emmet_ls.setup({ capabilities = capabilities })
lspconfig.eslint.setup({ capabilities = capabilities })
lspconfig.pyright.setup({ capabilities = capabilities })
lspconfig.tsserver.setup({ capabilities = capabilities })

lspconfig.java_language_server.setup({
	capabilities = capabilities,
	cmd = { '/usr/share/java/java-language-server/lang_server_linux.sh' },
})

lspconfig.sumneko_lua.setup({
	settings = {
		capabilities = capabilities,
		Lua = {
			runtime = { version = 'LuaJIT' },
			diagnostics = { globals = { 'vim' } },
			workspace = { library = vim.api.nvim_get_runtime_file('', true) },
			telemetry = { enable = false },
		},
	},
})
