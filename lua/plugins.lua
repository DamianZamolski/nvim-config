require('packer').startup(function()
  use('hrsh7th/cmp-buffer')
  use({ 'evanleck/vim-svelte', requires = 'evanleck/vim-svelte' })
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-nvim-lua')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-vsnip')
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/vim-vsnip')
  use('neovim/nvim-lspconfig')
  use('tpope/vim-surround')
  use('wbthomason/packer.nvim')
  use({ 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' })
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
