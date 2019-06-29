set encoding=UTF-8

set background=dark
set laststatus=2

set number
set relativenumber
set nowrap
set cursorline

set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set smarttab

set scrolloff=10
set mouse=a

set encoding=UTF-8

call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
""Plug 'mhartington/oceanic-next'
Plug 'ayu-theme/ayu-vim'
Plug 'jreybert/vimagit'
Plug 'racer-rust/vim-racer'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-latex/vim-latex'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'leafgarland/typescript-vim'
Plug 'davidhalter/jedi-vim'
call plug#end()

set statusline+=%{FugitiveStatusline()}

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'

""let g:oceanic_next_terminal_bold = 1
""let g:oceanic_next_terminal_italic = 1

let g:racer_experimental_completer = 1

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

let g:delimitMate_expand_cr = 1

let g:ayucolor="dark"

if (has("termguicolors"))
 set termguicolors
endif

colorscheme ayu

filetype plugin on
syntax on

map gb :bn<CR>
map gB :bp<CR>
