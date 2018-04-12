" Vim-Plug
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
" colorschemes
Plug 'flazz/vim-colorschemes'
" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'Valloric/YouCompleteMe'
Plug 'https://github.com/tmhedberg/SimpylFold'
Plug 'fatih/vim-go', { 'tag': 'v1.4' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Initialize plugin system
call plug#end()

set nocompatible              " be iMproved
" Color Theme
syntax on
"set background=dark
colorscheme corporation

set smartindent
set ruler
set showcmd
filetype plugin indent on
set tabstop=4
set expandtab
set shiftwidth=4
set foldcolumn=2
set incsearch
set foldmethod=marker
set showmatch
set number
set csto=0
set helplang=en
set hls

" 设置 leader key
let mapleader = "\<Space>"

:map <C-w>p :tabprevious<cr>
:nmap <C-w>t :tabnew<cr>
:imap <C-w>t <ESC>:tabnew<cr>

hi Search cterm=NONE ctermfg=Red ctermbg=LightGrey
set backspace=indent,eol,start
" Encoding
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

" NERDTree Settings 

" NERDTree 开关
nnoremap <leader>m :NERDTreeToggle<cr>
nnoremap <leader>n :NERDTreeFind<cr>
" Show bookmark of NERDTree
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1



