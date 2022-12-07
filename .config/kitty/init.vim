
set encoding=utf-8

call plug#begin('~/.config/nvim/site/autoload')

  Plug 'davidhalter/jedi-vim'
  Plug 'deoplete-plugins/deoplete-jedi'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Rasukarusan/nvim-select-multi-line'
  Plug 'matze/vim-move'

  "tree
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'ryanoasis/vim-devicons'
  "Plug 'scrooloose/nerdtree'
  "Plug 'jistr/vim-nerdtree-tabs'

  Plug 'dense-analysis/ale'

  "If you are using Vim-Plug
  Plug 'shaunsingh/nord.nvim'

  " icons 
  Plug 'ryanoasis/vim-devicons'

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

  "Abertura 
  Plug 'glepnir/dashboard-nvim'

  Plug 'liuchengxu/vim-clap'

    " Build the extra binary if cargo exists on your system.
    Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

    " The bang version will try to download the prebuilt binary if cargo does not exist.
    Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

    " :Clap install-binary[!] will always try to compile the binary locally,
    " if you do care about the disk used for the compilation, try using the force download way,
    " which will download the prebuilt binary even you have installed cargo.
    Plug 'liuchengxu/vim-clap', { 'do': { -> clap#installer#force_download() } }

    " `:Clap install-binary[!]` will run using the terminal feature which is inherently async.
    " If you don't want that and hope to run the hook synchorously:
    Plug 'liuchengxu/vim-clap', { 'do': has('win32') ? 'cargo build --release' : 'make' }
    
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Comentário
    Plug 'preservim/nerdcommenter'

    " add this line to your .vimrc file
    Plug 'mattn/emmet-vim'

    Plug 'JamshedVesuna/vim-markdown-preview'

    Plug 'mileszs/ack.vim'

call plug#end()

let vim_markdown_preview_github=1

" ativar indentação automática
set autoindent

" ativa indentação inteligente, o Vim tentará adivinhar
" qual é a melhor indentação para o código quando você
" efetuar quebra de linha. Funciona bem para linguagem C
set smartindent

" por padrão o vim armazena os últimos 50 comandos que você
set history=5000

" ativar numeração de linha
set number

" destaca a linha em que o cursor está posicionado
" ótimo para quem não enxerga muito bem
set cursorline

" ativa o clique do mouse para navegação pelos documentos
set mouse=a

" ativa o compartilhamento de área de transferência entre o Vim
" e a interface gráfica
set clipboard=unnamedplus

" converte o tab em espaços em branco
" ao teclar tab o Vim irá substutuir por 2 espaços
set tabstop=4 softtabstop=4 expandtab shiftwidth=4

" ao teclar a barra de espaço no modo normal, o Vim
" irá colapsar ou expandir o bloco de código do cursor
" foldlevel é a partir de que nível de indentação o 
" código iniciará colapsado
set foldmethod=syntax
set foldlevel=99

let g:airline_theme='angr'

set hidden
set relativenumber
set inccommand=split

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
map <C-n> :NERDTreeToggle<cr>

" Thema Nord
let g:nord_contrast = v:true
let g:nord_borders = v:false
let g:nord_disable_background = v:false
let g:nord_italic = v:false
colorscheme nord

" Adds
set guifont=Anonymice\ Nerd\ Font\ Mono:h12

" Identar
let g:indentLine_enabled = 1
map <C-k>i :IndentLinesToggle<cr>

" Config Plug 'glepnir/dashboard-nvim'
let g:dashboard_default_executive ='clap'
