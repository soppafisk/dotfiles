set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'ctrlpvim/ctrlp.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let mapleader = ','
set number
syntax enable
set smartcase
set autoindent
set t_Co=256
colorscheme xoria256

" Auto-remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e


"-------------- Tabs ----------------"
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4





"-------------- Mappings ----------------"
nmap <Leader>ev :tabedit $MYVIMRC<cr> 
nmap <Leader><space> :nohlsearch<cr>

"easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nmap <C-n> :NERDTreeToggle<cr>

nmap <c-R> :CtrlPBufTag<cr> 


"-------------- Search ----------------"
set hlsearch
set incsearch



"---------- Auto source .vimrc ------"
autocmd BufWritePost .vimrc source %
