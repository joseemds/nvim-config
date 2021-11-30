local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

require("packer").startup(function (use)

--packer itself
use 'wbthomason/packer.nvim'


use 'rxi/lume'

--utils
use 'sheerun/vim-polyglot'

use 'kdheepak/lazygit.nvim'

use 'nvim-treesitter/nvim-treesitter'

use 'nvim-treesitter/playground'

use 'mbbill/undotree'

use 'christoomey/vim-tmux-navigator'

use 'tpope/vim-surround'

use 'tpope/vim-fugitive'

use 'kyazdani42/nvim-tree.lua'

use 'kyazdani42/nvim-web-devicons'

use 'windwp/nvim-autopairs'

use 'nvim-lua/completion-nvim'


-- deprecated
-- use 'hrsh7th/nvim-compe'


use 'sbdchd/neoformat'

use {
  'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
}

use {
	'nvim-telescope/telescope-fzf-writer.nvim',
	requires = {{'nvim-telescope/telescope.nvim'}}
}


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


use 'romgrk/barbar.nvim'

use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup {}
  end
}

use { 'camspiers/snap' }

use "terrortylor/nvim-comment"

use "Shatur/neovim-ayu"

use "tamago324/lir.nvim"

use "tamago324/lir-git-status.nvim"

use 'TimUntersberger/neogit'

use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}

use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'

use 'glepnir/galaxyline.nvim'


end)


require('hotpot')
