local map = vim.api.nvim_set_keymap

map('n', '<Space>', '', {})
vim.g.mapleader = ' '

map('', '<leader>1', ':sort<cr>', {noremap=true})
map('', '<leader>2', ':sort!<cr>', {noremap=true})
map('n', '<leader>/', ':nohlsearch<cr>', {noremap=true})
map('n', '<leader>b', ':lua require("telescope.builtin").buffers()<cr>', {noremap=true})
map('n', '<leader>f', ':lua require("telescope.builtin").find_files()<cr>', {noremap=true})
map('n', '<leader>g', ':lua require("telescope.builtin").live_grep()<cr>', {noremap=true})
map('n', '<leader>m', ':move.', {noremap=true})
map('n', '<leader>q', ':quit<cr>', {noremap=true})
map('n', '<leader>s', ':%substitute//g<left><left>', {noremap=true})
map('n', '<leader>w', ':write<cr>', {noremap=true})
map('n', '<leader>W', ':wall<cr>', {noremap=true})
