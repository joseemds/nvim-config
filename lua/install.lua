local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

execute 'autocmd BufWritePost plugins.lua PackerCompile'

return require("packer").startup(function (use)

--packer itself
use 'wbthomason/packer.nvim'

--utils

use 'kdheepak/lazygit.nvim'

use 'nvim-treesitter/nvim-treesitter'

use 'nvim-treesitter/playground'

use 'mbbill/undotree'

use 'christoomey/vim-tmux-navigator'

use 'preservim/nerdcommenter'

use 'tpope/vim-surround'

use 'tpope/vim-fugitive'

use 'kyazdani42/nvim-tree.lua'

use 'kyazdani42/nvim-web-devicons'

use 'vim-airline/vim-airline'

use 'windwp/nvim-autopairs'


use 'hrsh7th/nvim-compe'

use 'sbdchd/neoformat'

use {
  'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
}

use {
	'nvim-telescope/telescope-fzf-writer.nvim',
	requires = {{'nvim-telescope/telescope.nvim'}}
}



--lang related

use 'elixir-editors/vim-elixir'


--LSP and related

use 'neovim/nvim-lspconfig'

use 'rafamadriz/friendly-snippets'

use 'hrsh7th/vim-vsnip'

use 'glepnir/lspsaga.nvim'

use {
  "folke/lsp-trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {}
  end
}

--UI

use {'embark-theme/vim', as = 'embark'}
use 'ghifarit53/tokyonight-vim'

end)

