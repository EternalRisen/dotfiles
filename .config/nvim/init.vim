set pastetoggle=<F2>
set number
set mouse=a
set t_Co=256
syntax enable
set updatetime=100

syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'vbe0201/vimdiscord'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/edkolev/tmuxline.vim'
Plug 'https://github.com/mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'terryma/vim-multiple-cursors'
Plug 'yggdroot/indentline'
Plug 'ianks/vim-tsx'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'leafgarland/typescript-vim'

call plug#end()

" NERDTree things
" autocmd vimenter * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>


" Airline things
autocmd vimenter * AirlineTheme simple
let g:Powerline_symbols = "fancy"
let g:Powerline_dividers_override = ["\Ue0b0","\Ue0b1","\Ue0b2","\Ue0b3"]
let g:Powerline_symbols_override = {'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2"}
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#letf_alt_sep = '>'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

