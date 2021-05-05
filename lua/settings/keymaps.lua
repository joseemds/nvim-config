local map = vim.api.nvim_set_keymap



--local noremap_opts = {noremap = true, silent = false}
local silent_opts = {noremap = true, silent = true}


--useful
map('n', '<A-k>', ':m+<CR>', silent_opts)
map('n', '<A-j>', ':m .-2<CR>', silent_opts)


--toggles
map('n', '<C-t>u', ':UndotreeToggle<CR>', silent_opts)
map('n', '<C-t>t', ':NvimTreeToggle<CR>', silent_opts)
map('n', '<C-t>p', ':LspTroubleToggle<CR>', silent_opts)


--LS
map('n', 'gD','<cmd>lua vim.lsp.buf.implementation()<CR>', silent_opts)
map('n', 'gd','<cmd>lua vim.lsp.buf.definition()<CR>', silent_opts)
map('n', 'gt','<cmd>lua vim.lsp.buf.type_definition()<CR>', silent_opts)
map('n', 'gr','<cmd>lua vim.lsp.buf.references()<CR>', silent_opts)


--Lspsaga
map('n', 'gh',':Lspsaga hover_doc <CR>', silent_opts)
map('n', 'gs',':Lspsaga signature_help <CR> ', silent_opts)
map('n', 'ge',':Lspsaga show_line_diagnostics<CR>', silent_opts)
map('n', 'gR',':Lspsaga rename<CR>', silent_opts)
map('n', 'ga',':Lspsaga code_action<CR>', silent_opts)

--Telescope
map('n', '<leader>ff',':Telescope fd<CR>', silent_opts)
map('n', '<leader>fb',':Telescope buffers <CR>', silent_opts)
map('n', '<leader>fg',':Telescope live_grep <CR>', silent_opts)
map('n', '<leader>fs',':Telescope current_buffer_fuzzy_find <CR>', silent_opts)


--Compe
map('i', '<C-Space>', 'compe#complete()', {noremap = true, silent = true, expr=true})
map('i', '<CR>', 'compe#confirm("<CR>")', {noremap = true, silent = true, expr=true})
map('i', '<C-e>', 'compe#close("<C-e>")', {noremap = true, silent = true, expr=true})




