local cmd = vim.api.nvim_command
cmd("syntax on")
cmd("set rnu")
cmd("set nu")
cmd("set hidden")
cmd("set noswapfile")
cmd("set termguicolors")
cmd("set matchpairs+=<:>")

vim.g.ayu_mirage=true
vim.g.tokyonight_style = "storm"

cmd("colorscheme gruvbox")

vim.g.airline_theme = "tokyonight"


vim.o.background = "dark"
vim.o.completeopt = "menuone,noselect"
vim.o.tabstop = 2
vim.o.shiftwidth = 2


vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true
