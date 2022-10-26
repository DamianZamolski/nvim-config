local telescope = require('telescope.builtin')

local function map(mode, keys, command)
	vim.keymap.set(mode, keys, command)
end

map('', '<Space>', '')
vim.g.mapleader = ' '

map('', '<c-s>', vim.lsp.buf.signature_help)
map('', '<leader>1', ':sort<cr>')
map('', '<leader>2', ':sort!<cr>')
map('', '<leader>Y', '"+y$')
map('', '<leader>y', '"+y')
map('i', '<c-l>', vim.lsp.buf.completion)
map('n', '<c-j>', '<cmd>wincmd w<cr>')
map('n', '<c-k>', '<cmd>wincmd W<cr>')
map('n', '<leader>/', telescope.live_grep)
map('n', '<leader><cr>', '<cmd>NvimTreeFindFile<cr>')
map('n', '<leader><esc>', '<cmd>nohlsearch<cr>')
map('n', '<leader>D', '"_d$')
map('n', '<leader>F', '<cmd>Neoformat<cr>')
map('n', '<leader>H', telescope.help_tags)
map('n', '<leader>Q', '<cmd>quit!<cr>')
map('n', '<leader>S', ':%substitute//g<left><left>')
map('n', '<leader>W', '<cmd>wall<cr>')
map('n', '<leader>[', vim.diagnostic.goto_prev)
map('n', '<leader>]', vim.diagnostic.goto_next)
map('n', '<leader>a', vim.lsp.buf.code_action)
map('n', '<leader>b', '<cmd>GitBlameToggle<cr>')
map('n', '<leader>c', '<cmd>close<cr>')
map('n', '<leader>d', '"_d')
map('n', '<leader>e', '<cmd>EslintFixAll<cr>')
map('n', '<leader>f', telescope.find_files)
map('n', '<leader>h', vim.lsp.buf.hover)
map('n', '<leader>j', '<cmd>cnext<cr>')
map('n', '<leader>k', '<cmd>cprevious<cr>')
map('n', '<leader>m', ':move.')
map('n', '<leader>o', vim.diagnostic.open_float)
map('n', '<leader>q', '<cmd>quit<cr>')
map('n', '<leader>r', vim.lsp.buf.rename)
map('n', '<leader>s', ':substitute//g<left><left>')
map('n', '<leader>w', '<cmd>write<cr>')
map('n', 'gb', telescope.buffers)
map('n', 'gd', vim.lsp.buf.definition)
map('n', 'gi', vim.lsp.buf.implementation)
map('n', 'gr', vim.lsp.buf.references)
