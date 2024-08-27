return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    for _, server in ipairs({ 'eslint', 'gopls', 'lua_ls', 'svelte', 'tsserver' }) do
      lspconfig[server].setup({ capabilities = capabilities })
    end
  end,
}
