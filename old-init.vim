" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'ayu-theme/ayu-vim'

Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'

Plug 'preservim/nerdcommenter'




" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set termguicolors 

let ayucolor="mirage"

colorscheme ayu
