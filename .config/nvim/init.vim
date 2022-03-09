
set encoding=utf-8

call plug#begin('~/.config/nvim/site/autoload')

  Plug 'davidhalter/jedi-vim'
  Plug 'deoplete-plugins/deoplete-jedi'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Rasukarusan/nvim-select-multi-line'

  "tree
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'ryanoasis/vim-devicons'
  "Plug 'scrooloose/nerdtree'
  "Plug 'jistr/vim-nerdtree-tabs'

  Plug 'dense-analysis/ale'

  "If you are using Vim-Plug
  Plug 'shaunsingh/nord.nvim'

  " sintaxe para várias linguagens
  Plug 'sheerun/vim-polyglot'

  " para apresentar a identação
  Plug 'Yggdroot/indentLine'

  " Atalho para comentários
  Plug 'tpope/vim-commentary'

  " the framework
  "Plug 'roxma/nvim-completion-manager'

  "Plug 'lexima.vim'

  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

call plug#end()

let g:airline_theme='angr'

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set cursorline
" Set shift width to 4 spaces.
set shiftwidth=4
" Set tab width to 4 columns.
set tabstop=4
" Use space characters instead of tabs.
set expandtab

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Teclas de Atalho
let mapleader="\<c>"
nnoremap <c~;> A;<esc>
nnoremap <c-s> :source $MYVIMRC<cr>

" Thema Nord
let g:nord_contrast = v:true
let g:nord_borders = v:false
let g:nord_disable_background = v:false
let g:nord_italic = v:false
colorscheme nord

