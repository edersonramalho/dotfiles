call plug#begin('~/.config/nvim/site/autoload')

Plug 'davidhalter/jedi-vim'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline_theme='angr'

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split

