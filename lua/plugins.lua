require('packer').startup(function()
	use('aklt/plantuml-syntax')
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
	use('neovim/nvim-lspconfig')
	use('nvim-treesitter/nvim-treesitter')
	use('sbdchd/neoformat')
	use('tpope/vim-commentary')
	use('tpope/vim-fugitive')
	use('tpope/vim-surround')
	use('wbthomason/packer.nvim')
	use({ 'ThePrimeagen/harpoon', requires = 'nvim-lua/plenary.nvim' })
	use({ 'microsoft/vscode-js-debug', opt = true, run = 'npm install --legacy-peer-deps && npm run compile' })
	use({ 'mxsdev/nvim-dap-vscode-js', requires = { 'mfussenegger/nvim-dap' } })
	use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
	use({ 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' })
	use({ 'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons' })
	use({ 'nvim-treesitter/nvim-treesitter-context', requires = 'nvim-treesitter/nvim-treesitter' })
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
