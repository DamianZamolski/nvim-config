local cmd = vim.cmd
local global = vim.o
local window = vim.wo
local buffer = vim.bo

cmd('colorscheme base16-one-light')

global.background = 'light'
global.hidden = true
global.termguicolors = true
global.completeopt = "menu,menuone,noselect"

window.cursorcolumn = true
window.signcolumn = 'yes'
window.cursorline = true
window.relativenumber = true
window.wrap = false

require('lspconfig').tsserver.setup{...}
require('mappings')
