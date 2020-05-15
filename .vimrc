set number
set expandtab
set tabstop=2
let g:mapleader=','  ",+s -> search"
set encoding=UTF-8
set guifont=Fura\ Code\ Light\ Nerd\ Font\ Complete:h16
let g:airline_theme='luna'
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1

syntax on
set hlsearch

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"colorschemes""
Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'othree/html5.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'iosmanthus/vim-nasm' 
call plug#end()

colorscheme gruvbox
set background=dark

let g:tex_flavor='latex'
let g:vimtex_view_method='mupdf'

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif


