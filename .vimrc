set nocompatible              " be iMproved
syntax on
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

" Color Theme
colorscheme desert
set background=dark
hi Search cterm=NONE ctermfg=Red ctermbg=LightGrey
set backspace=indent,eol,start
" Encoding
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8


" Vim-Plug
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" NERDTree Settings 

" NERDTree 开关
noremap <leader>m :NERDTreeToggle<cr>
" Show bookmark of NERDTree
let NERDTreeShowBookmarks=1  


Plug 'junegunn/vim-easy-align'
Plug 'Valloric/YouCompleteMe'
Plug 'https://github.com/tmhedberg/SimpylFold'
" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': 'v1.4' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
