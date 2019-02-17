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

call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'
Plug 'jreybert/vimagit'
call plug#end()

set statusline+=%{FugitiveStatusline()}

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

let ayucolor="dark"

if (has("termguicolors"))
 set termguicolors
endif

colorscheme ayu

filetype plugin on
syntax on

