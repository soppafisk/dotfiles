set nocompatible              " be iMproved, required
filetype off                  " required
set swapfile                  " leave swapfiles in tmp
set dir=~/tmp

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
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'

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
set visualbell           " don't beep
set noerrorbells         " don't beep


" Auto-remove trailing spaces
autocmd BufWritePre *.(php|js) :%s/\s\+$//e


"-------------- Tabs ----------------"
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4



"------------- Emmet ---------------"
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'javascript' : {
  \    'extends' : 'jsx',
  \  },
  \}






"-------- CtrlP ---------------------"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|vendor|target|dist)|(\.(swp|ico|git|svn))$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }





"-------------- Mappings ----------------"
nmap <Leader>ev :tabedit $MYVIMRC<cr> 
nmap <Leader>es :e ~/.vim/snippets/
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
autocmd BufWritePost vimrc source %

