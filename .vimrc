filetype off                    " Reset filetype detection first ...
" Vim-Plug
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
" colorschemes
Plug 'rafi/awesome-vim-colorschemes'
" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'elzr/vim-json' " json format
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' " fantastic functions
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/tmhedberg/SimpylFold'
Plug 'maralla/completor.vim' " complete framework
Plug 'easymotion/vim-easymotion' " easy move and apply change everywhere
Plug 'vito-c/jq.vim' " json precessing
"Plug 'fatih/vim-go', { 'tag': 'v1.18' }
" Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' } " gocode library

" table edit (mysql result: PAGER vim -)
Plug 'dhruvasagar/vim-table-mode'
" Initialize plugin system
call plug#end()

""""""""""""""""""""""
"      Settings      "
""""""""""""""""""""""
set nocompatible                " Enables us Vim specific features
filetype plugin indent on       " ... and enable filetype detection
set tabstop=4                   " show existing tab with 4 spaces width
set shiftwidth=4             	" when indenting with '>', use 4 spaces width
set expandtab			" On pressing tab, insert 4 spaces
set ttyfast                     " Indicate fast terminal conn for faster redraw
set ttymouse=xterm2             " Indicate terminal type for mouse codes
set ttyscroll=3                 " Speedup scrolling
set laststatus=2                " Show status line always
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically read changed files
set autoindent                  " Enabile Autoindent
set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set noerrorbells                " No beeps
set number                      " Show line numbers
set showcmd                     " Show me what I'm typing
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Vertical windows should be split to right
set splitbelow                  " Horizontal windows should split to bottom
set autowrite                   " Automatically save before :next, :make etc.
set hidden                      " Buffer should still exist if window is closed
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set noshowmatch                 " Do not show matching brackets by flickering
set noshowmode                  " We show the mode with airline or lightline
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not it begins with upper case
set completeopt=menu,menuone    " Show popup menu, even if there is one entry
set pumheight=10                " Completion window max size
set nocursorcolumn              " Do not highlight column (speeds up highlighting)
set nocursorline                " Do not highlight cursor (speeds up highlighting)
set lazyredraw                  " Wait to redraw
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

colorscheme twilight256		" Set color scheme
let mapleader = "\<Space>"	" leader key

" Enable to copy to clipboard for operations like yank, delete, change and put
" http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
if has('unnamedplus')
    set clipboard^=unnamed
    set clipboard^=unnamedplus
endif

" This enables us to undo files even if you exit Vim.
if has('persistent_undo')
    if !isdirectory($HOME."/.config/vim/tmp/undo")
        call mkdir($HOME."/.config/vim/tmp/undo","p")
    endif
    set undofile
    set undodir=~/.config/vim/tmp/undo//
endif

hi Search cterm=NONE ctermfg=Red ctermbg=LightGrey

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


" completor Settings
let g:completor_gocode_binary = $GOPATH.'/bin/gocode' " gocode binary for golang

if !isdirectory($HOME.'/.yorelog/bin')
    call mkdir($HOME.'/.yorelog/bin','p')
endif
let g:completor_python_binary = $HOME.'/.yorelog/bin/python' " python
if !filereadable($HOME.'/.yorelog/bin/python')
    let g:completor_python_binary = 'python'
endif


" Jump
" jump back ctrl + o
" golang  gd: jump to definition
" PHP generate ctags :  ctags -R --fields=+laimS --languages=php

" Easymotion


" tools
command Today strftime('%Y%m%d')
