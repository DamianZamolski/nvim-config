local map = vim.api.nvim_set_keymap

map('n', '<Space>', '', {})
vim.g.mapleader = ' '

map('', '<leader>1', ':sort<cr>', {noremap=true})
map('', '<leader>2', ':sort!<cr>', {noremap=true})
map('n', '<leader>/', '<cmd>nohlsearch<cr>', {noremap=true})
map('n', '<leader>W', '<cmd>wall<cr>', {noremap=true})
map('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<cr>', {noremap=true})
map('n', '<leader>b', '<cmd>lua require("telescope.builtin").buffers()<cr>', {noremap=true})
map('n', '<leader>f', '<cmd>lua require("telescope.builtin").git_files()<cr>', {noremap=true})
map('n', '<leader>g', '<cmd>lua require("telescope.builtin").live_grep()<cr>', {noremap=true})
map('n', '<leader>m', ':move.', {noremap=true})
map('n', '<leader>q', '<cmd>quit<cr>', {noremap=true})
map('n', '<leader>Q', '<cmd>quit!<cr>', {noremap=true})
map('n', '<leader>s', ':%substitute//g<left><left>', {noremap=true})
map('n', '<leader>w', '<cmd>write<cr>', {noremap=true})
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {noremap=true})
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {noremap=true})
