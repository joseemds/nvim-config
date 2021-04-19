local cmd = vim.api.nvim_command
local gvar = vim.api.nvim_set_var
cmd("syntax on")
cmd("set rnu")
cmd("set nu")
cmd("set termguicolors")
cmd("set autochdir")

cmd("colorscheme embark")

vim.o.completeopt = "menuone,noselect"
vim.o.tabstop = 2
vim.o.shiftwidth = 2


vim.o.ignorecase = true
vim.o.smartcase = true 
vim.o.hlsearch = true
vim.o.incsearch = true
