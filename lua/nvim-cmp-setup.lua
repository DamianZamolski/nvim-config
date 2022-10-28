local cmp = require('cmp')

if cmp == nil then
	return
end

cmp.setup({
	mapping = {
		['<c-j>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
		['<c-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
		['<c-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
		['<c-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
		['<c-l>'] = cmp.mapping(cmp.mapping.confirm(), { 'i', 'c' }),
	},
	snippet = {
		expand = function(args)
			vim.fn['vsnip#anonymous'](args.body)
		end,
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' },
		{ name = 'buffer' },
	},
})

cmp.setup.cmdline('/', {
	sources = {
		{ name = 'buffer' },
	},
})

cmp.setup.cmdline(':', {
	sources = {
		{ name = 'path' },
		{ name = 'cmdline' },
	},
})
