local bind = vim.api.nvim_set_keymap

bind('n', '<F9>', ':NvimTreeToggle<CR>', {noremap = false, silent = true})
bind('n', 'ff', ':FZF<CR>', {noremap = false, silent = true})




--LSP bindings
bind('n', 'gh','<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = false})
bind('n', 'gD','<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true, silent = false})
bind('n', 'gd','<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = false})
bind('n', 'gt','<cmd>lua vim.lsp.buf.type_definition()<CR>', {noremap = true, silent = false})
bind('n', 'gs','<cmd>lua vim.lsp.buf.signature_help()<CR>', {noremap = true, silent = false})
bind('n', 'gr','<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true, silent = false})

--Compe bindings
bind('i', '<C-Space>', 'compe#complete()', {noremap = true, silent = true, expr=true})



