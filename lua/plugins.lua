require('packer').startup(function()
	use('ThePrimeagen/harpoon')
	use('f-person/git-blame.nvim')
	use('hrsh7th/cmp-buffer')
	use('hrsh7th/cmp-cmdline')
	use('hrsh7th/cmp-nvim-lsp')
	use('hrsh7th/cmp-nvim-lua')
	use('hrsh7th/cmp-path')
	use('hrsh7th/cmp-vsnip')
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/vim-vsnip')
	use('iamcco/markdown-preview.nvim')
	use('mattn/emmet-vim')
	use('neovim/nvim-lspconfig')
	use('nvim-treesitter/nvim-treesitter')
	use('nvim-treesitter/nvim-treesitter-context')
	use('sbdchd/neoformat')
	use('tpope/vim-commentary')
	use('tpope/vim-surround')
	use('wbthomason/packer.nvim')
	use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
	use({ 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' })
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
