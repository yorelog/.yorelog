set nocompatible              " be iMproved
syntax on
set smartindent
" if has("vms")
      set nobackup	
" else	  
"    set backup
" endif
set ruler
set showcmd
filetype plugin indent on
set tabstop=4
set expandtab
set shiftwidth=4
set foldcolumn=2
set incsearch
set foldmethod=marker
" set backupdir=~/backup/vim
" set backupext=.bak
set showmatch
set number
set background=dark
set csto=0
set helplang=en
set hls

map <F3> <Esc>:wnext <Enter>
map <F4> <Esc>:wprevious <Enter>
map <F2> <Esc>:w <Enter> <Esc>:make <Enter>
map vi' <Esc>?'<CR>lv/'<CR>h
map vi" <Esc>?"<CR>lv/"<CR>h
map va' <Esc>?'<CR>v/'<CR>
map va" <Esc>?"<CR>v/"<CR>
map vix <Esc>?><CR>lv/<<CR>h
map vi= <ESC>?\s\+\S\+\s*=\s*\S\+<CR>lv/=<CR>/\S<CR>/[\s<>\n]<CR>h
map vi/ <Esc>?\/<CR>l<Esc>v/\/<CR>h
map vt) <ESC>v/)<CR>h
map vt' <ESC>v/'<CR>h
map vt" <ESC>v/"<CR>h
map vt; <ESC>v/;<CR>h
map vt, <ESC>v/,<CR>h
map vt} <ESC>v/}<CR>h
nmap <F8> :TagbarToggle<CR>

noremap <silent> <F11> :cal VimCommanderToggle()<CR>
noremap \cmd :cal VimCommanderToggle()<CR>


noremap \dc <Esc>:Dox<CR>
noremap \dd <Esc>:DoxUndoc<CR>
noremap \da <Esc>:DoxAuthor<CR>

if v:version >= 700
    :map <C-w>p :tabprevious<cr>
    :nmap <C-w>t :tabnew<cr>
    :imap <C-w>t <ESC>:tabnew<cr>
endif

colorscheme desert
hi Search cterm=NONE ctermfg=Red ctermbg=LightGrey
set backspace=indent,eol,start

set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8


" Vim-Plug
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')


" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
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
