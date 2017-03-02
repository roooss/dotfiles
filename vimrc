set encoding=utf-8

" start vundler
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" core plugins
Plugin 'gmarik/vundle'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd \ 'CtrlP'

Plugin 'ternjs/tern_for_vim'

let g:tern_show_argument_hints='on_hold'
let g:tern_map_keys=1

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'

"vim main plugins
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'pangloss/vim-javascript'
Plugin 'mileszs/ack.vim'

" themes
Plugin 'chriskempson/base16-vim'

" close vundle call
call vundle#end()
filetype plugin indent on

" auto update file from external edits
set autoread

set cmdheight=2

set hlsearch
set incsearch

set ignorecase

set number

set showcmd

set ruler

set wrap
set linebreak
set textwidth=0
set wrapmargin=0

set showmatch

set wildmenu

syntax on

set ffs=unix,dos,mac

let base16colorbase=256
" colorscheme base-16-default-dark
set background=dark

"'recognise md files
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

set smarttab

set shiftwidth=4
set softtabstop=4

set ai
set si

set backspace=indent,eol,start

filetype indent on

nnoremap j gj
nnoremap k gk

" let g:ctrolp_match_window = 'bottom,order:ttb'
" let g:ctrlp_switch_buffer = 0
" let g:ctrlp_working_path_mode = 'ra'

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
