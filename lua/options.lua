local cmd = vim.cmd
cmd 'colorscheme base16-one-light'

local global = vim.o
global.background = 'light'
global.completeopt = 'menu,menuone,noselect,noinsert'
global.hidden = true
global.termguicolors = true

local window = vim.wo
window.cursorcolumn = true
window.signcolumn = 'yes'
window.cursorline = true
window.relativenumber = true
window.wrap = false
