return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local telescope = require('telescope')
    telescope.setup({
      defaults = {
        layout_config = {
          horizontal = {
            preview_cutoff = 0,
          },
        },
      },
    })
    telescope.load_extension('fzf')
  end,
}
