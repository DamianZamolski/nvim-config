vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = '<C-l>', action = 'vsplit' },
      },
    },
  },
  remove_keymaps = { '<C-k>' },
})
