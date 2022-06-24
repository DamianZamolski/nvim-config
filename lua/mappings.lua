local map = vim.api.nvim_set_keymap

map('', '<Space>', '', {})
vim.g.mapleader = ' '

map('', '<c-s>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', {noremap=true})
map('', '<leader>1', ':sort<cr>', {noremap=true})
map('', '<leader>2', ':sort!<cr>', {noremap=true})
map('', '<leader>Y', '"+y$', {noremap=true})
map('', '<leader>y', '"+y', {noremap=true})
map('n', '<leader>/', '<cmd>lua require("telescope.builtin").live_grep()<cr>', {noremap=true})
map('n', '<leader><esc>', '<cmd>nohlsearch<cr>', {noremap=true})
map('n', '<leader>D', '"_d$', {noremap=true})
map('n', '<leader>Q', '<cmd>quit!<cr>', {noremap=true})
map('n', '<leader>S', ':%substitute//g<left><left>', {noremap=true})
map('n', '<leader>W', '<cmd>wall<cr>', {noremap=true})
map('n', '<leader>[', '<cmd>lua vim.diagnostic.goto_prev()<cr>', {noremap=true})
map('n', '<leader>]', '<cmd>lua vim.diagnostic.goto_next()<cr>', {noremap=true})
map('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<cr>', {noremap=true})
map('n', '<leader>b', ':GitBlameToggle<cr>', {noremap=true})
map('n', '<leader>d', '"_d', {noremap=true})
map('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<cr>', {noremap=true})
map('n', '<leader>f', '<cmd>lua require("telescope.builtin").find_files()<cr>', {noremap=true})
map('n', '<leader>h', ':help <c-r><c-w><cr>', {noremap=true})
map('n', '<leader>m', ':move.', {noremap=true})
map('n', '<leader>q', '<cmd>quit<cr>', {noremap=true})
map('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', {noremap=true})
map('n', '<leader>s', ':substitute//g<left><left>', {noremap=true})
map('n', '<leader>w', '<cmd>write<cr>', {noremap=true})
map('n', '<leader>{', '<cmd>cprevious<cr>', {noremap=true})
map('n', '<leader>}', '<cmd>cnext<cr>', {noremap=true})
map('n', 'gb', '<cmd>lua require("telescope.builtin").buffers()<cr>', {noremap=true})
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {noremap=true})
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {noremap=true})
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {noremap=true})
