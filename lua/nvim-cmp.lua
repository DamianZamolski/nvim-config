local cmp = require('cmp')
cmp.setup({
  mapping = {
    ['<c-j>'] = cmp.mapping(cmp.mapping.select_next_item(), {'i','c'}),
    ['<c-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), {'i','c'}),
    ['<c-l>'] = cmp.mapping(cmp.mapping.confirm(), {'i','c'}),
  }
})
