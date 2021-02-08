set number relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
let g:mapleader=','  ",+s -> search"
set encoding=UTF-8
set guifont=Fura\ Code\ Light\ Nerd\ Font\ Complete:h16
let g:airline_theme='one'
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1

set t_Co=256

set showtabline=0
set wrap linebreak nolist "soft wrapping
set textwidth=100

set cursorline
let ttimeoutlen=10
let &t_SI.="\e[6 q"

let &t_SR.="\e[3 q"

let &t_EI.="\e[1 q"

let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols = 'unicode'
let g:airline#extensions#xkblayout#enabled = 0

syntax on
set hlsearch

call plug#begin('~/.vim/plugged')

Plug 'alepez/vim-gtest'
"Plug 'vim-scripts/vim-gtest'
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
Plug 'rakr/vim-one'
Plug 'neomake/neomake'
Plug 'vifm/vifm.vim'
Plug 'ap/vim-css-color'
Plug 'vimwiki/vimwiki'
Plug 'jupyter-vim/jupyter-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'sheerun/vim-polyglot'
Plug 'phanviet/vim-monokai-pro'
Plug 'crusoexia/vim-monokai'
Plug 'whatyouhide/vim-gotham'

call plug#end()

"colorscheme gruvbox
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"no corrections
let g:ycm_show_diagnostics_ui = 0

set background=dark " for the dark version
" set background=light " for the light version
colorscheme one

let g:tex_flavor='latex'
let g:vimtex_quickfix_mode = 0
let g:vimtex_view_method='zathura'

"mappings
" normal/insert

nnoremap <Leader>ld :MarkdownPreview<CR>

nnoremap <Leader>pp :Vifm<CR>

nnoremap <C-m> :make<CR> 
nnoremap <C-r> :!./test<CR>
nnoremap <C-d> :terminal gdb genrand<CR>

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

set termguicolors

colorscheme gotham

hi! Normal ctermbg=NONE guibg=NONE

let g:lightline = {
    \ 'colorscheme': 'monokai_pro',
    \}
