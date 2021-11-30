local map = vim.api.nvim_set_keymap



--local noremap_opts = {noremap = true, silent = false}
local silent_opts = {noremap = true, silent = true}


--useful
map('n', '<A-k>', ':m+<CR>', silent_opts)
map('n', '<A-j>', ':m .-2<CR>', silent_opts)


--toggles
map('n', '<C-t>u', ':UndotreeToggle<CR>', silent_opts)
map('n', '<Space>t', ':NvimTreeToggle<CR>', silent_opts)
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

map('n', '<A-n>','<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1) <CR>', {noremap=true, silent=false})
map('n', '<A-p>','<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1) <CR>', {noremap=true, silent=false})


map('n', '<A-t>','<cmd>lua require("lspsaga.floaterm").open_float_terminal() <CR>', {noremap=true, silent=false})
map('n', '<A-t><ESC>','<cmd>lua require("lspsaga.floaterm").close_float_terminal() <CR>', {noremap=true, silent=false})

--Telescope
map('n', '<C-p>',':Telescope fd<CR>', silent_opts)
map('n', '<leader>fb',':Telescope buffers <CR>', silent_opts)
map('n', '<leader>fg',':Telescope live_grep <CR>', silent_opts)
map('n', '<leader>fs',':Telescope current_buffer_fuzzy_find <CR>', silent_opts)
map('n', 'gs',':Telescope lsp_document_symbols <CR>', silent_opts)

--barbar

map('n', '<A-c>', ':BufferClose<CR>', silent_opts)
map('n', '<A-,>', ':BufferPrevious <CR>', silent_opts)
map('n', '<A-.>', ':BufferNext <CR>', silent_opts)

map('n', '<A-<>', ':BufferMovePrevious <CR>', silent_opts)
map('n', '<A->>', ':BufferMoveNext <CR>', silent_opts)

map('n', '<A-1>', ':BufferGoto 1 <CR>', silent_opts)
map('n', '<A-2>', ':BufferGoto 2 <CR>', silent_opts)
map('n', '<A-3>', ':BufferGoto 3 <CR>', silent_opts)
map('n', '<A-4>', ':BufferGoto 4 <CR>', silent_opts)
map('n', '<A-5>', ':BufferGoto 5 <CR>', silent_opts)
map('n', '<A-6>', ':BufferGoto 6 <CR>', silent_opts)
map('n', '<A-7>', ':BufferGoto 7 <CR>', silent_opts)
map('n', '<A-8>', ':BufferGoto 8 <CR>', silent_opts)
map('n', '<A-9>', ':BufferGoto 9 <CR>', silent_opts)
map('n', '<C-g>', ':BufferPick <CR>', silent_opts)


--Compe
-- map('i', '<C-Space>', 'compe#complete()', {noremap = true, silent = true, expr=true})
-- map('i', '<CR>', 'compe#confirm("<CR>")', {noremap = true, silent = true, expr=true})
-- map('i', '<C-e>', 'compe#close("<C-e>")', {noremap = true, silent = true, expr=true})
-- map('i', '<C-f>', 'compe#scroll({\'delta\': +4})', {noremap = true, silent = true, expr=true})
-- map('i', '<C-d>', 'compe#scroll({\'delta\': -4})', {noremap = true, silent = true, expr=true})


--lir
vim.api.nvim_set_keymap("n", "-", ":edit %:h<CR>", { noremap = true })

