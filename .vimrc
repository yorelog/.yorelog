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
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/tmhedberg/SimpylFold'
Plug 'fatih/vim-go', { 'tag': 'v1.9' }
Plug 'maralla/completor.vim' " complete framework
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' } " gocode library
"Plug 'Shougo/deoplete.nvim' " Asynchronous completion framework
"Plug 'zchee/deoplete-go', { 'do': 'make'} " Asynchronous Go completion
"Plug 'roxma/nvim-yarp'  " deoplete-go dependency
"Plug 'roxma/vim-hug-neovim-rpc'  " deoplete-go dependency
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

"
" vimwiki Settings
let g:vimwiki_list = [{'path': '~/.local/vimwiki/'}]

" Jump
" jump back ctrl + o
" golang  gd: jump to definition

" tools
command Today strftime('%Y%m%d')
