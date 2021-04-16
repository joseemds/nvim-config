local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

execute 'autocmd BufWritePost plugins.lua PackerCompile'

return require("packer").startup(function (use)
use 'wbthomason/packer.nvim'

use 'rakr/vim-one'

use 'junegunn/fzf.vim'

use 'christoomey/vim-tmux-navigator'

use 'preservim/nerdcommenter'

use 'tpope/vim-surround'

use 'tpope/vim-fugitive'

use 'kyazdani42/nvim-tree.lua'

use 'kyazdani42/nvim-web-devicons'

use 'vim-airline/vim-airline'

use 'windwp/nvim-autopairs'

use 'neovim/nvim-lspconfig'

use 'hrsh7th/nvim-compe'

use 'SirVer/ultisnips'

use 'honza/vim-snippets'

use 'sbdchd/neoformat'

use 'nvim-treesitter/nvim-treesitter'

use {
  'ojroques/nvim-lspfuzzy',
  requires = {
    {'junegunn/fzf'},
    {'junegunn/fzf.vim'},  -- to enable preview (optional)
  },
}





end)

