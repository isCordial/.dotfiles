local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
  'tsserver',
  'eslint',
  'rust_analyzer',
})

-- ThePrimeagen completion bindings, etc.
-- Probably will keep commented out for now.

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-y'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space'] = cmp.mapping.complete(),
})

lsp.setup()
