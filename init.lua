local cmd = vim.cmd
local global = vim.o
local window = vim.wo
local buffer = vim.bo

cmd('colorscheme base16-one-light')

global.background = 'light'
global.hidden = true
global.termguicolors = true

window.cursorcolumn = true
window.signcolumn = 'yes'
window.cursorline = true
window.relativenumber = true
window.wrap = true

buffer.expandtab = true
buffer.smartindent = true
buffer.softtabstop = 2
buffer.tabstop = 2

require('mappings')
require('lspconfig').tsserver.setup{...}
