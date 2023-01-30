local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function()
	use('wbthomason/packer.nvim')
	use({ 'williamboman/mason.nvim' })
	use('aklt/plantuml-syntax')
	use('f-person/git-blame.nvim')
	use('ggandor/leap.nvim')

	use({
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-nvim-lua',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/vim-vsnip',
		},
	})
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
	-- use('lukas-reineke/indent-blankline.nvim')
	use('neovim/nvim-lspconfig')
	use('nvim-treesitter/nvim-treesitter')
	use('sbdchd/neoformat')
	use('tpope/vim-commentary')
	use('tpope/vim-fugitive')
	use('tpope/vim-repeat')
	use('tpope/vim-rhubarb')
	use('tpope/vim-surround')
	use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
	use({ 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' })
	use({ 'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons' })
	use({ 'nvim-treesitter/nvim-treesitter-context', requires = 'nvim-treesitter/nvim-treesitter' })
	use({ 'ThePrimeagen/harpoon', requires = 'nvim-lua/plenary.nvim' })

	if packer_bootstrap then
		require('packer').sync()
	end
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
