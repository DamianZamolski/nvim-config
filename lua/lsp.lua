local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local lspconfig = require('lspconfig')
lspconfig.bashls.setup({ capabilities = capabilities })
lspconfig.cssls.setup({ capabilities = capabilities, cmd = { 'vscode-css-languageserver', '--stdio' } })
lspconfig.emmet_ls.setup({ capabilities = capabilities })
lspconfig.eslint.setup({ capabilities = capabilities })

lspconfig.java_language_server.setup({
	capabilities = capabilities,
	cmd = { '/usr/share/java/java-language-server/lang_server_linux.sh' },
})

lspconfig.pyright.setup({ capabilities = capabilities })
lspconfig.tsserver.setup({ capabilities = capabilities })
