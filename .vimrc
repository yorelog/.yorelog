if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

filetype off                    " Reset filetype detection first ...
" Vim-Plug
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
" colorschemes
Plug 'rafi/awesome-vim-colorschemes'
" NERDTree
Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'

" UltiSnips
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

Plug 'elzr/vim-json' 
" Plug 'vito-c/jq.vim' " json precessing
Plug 'stephpy/vim-yaml'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim' " fantastic functions
Plug 'junegunn/vim-easy-align'
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" Plug 'https://github.com/tmhedberg/SimpylFold'
" Plug 'maralla/completor.vim' " complete framework
" Plug 'easymotion/vim-easymotion' " easy move and apply change everywhere
Plug 'fatih/vim-go' 
" Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'josa42/coc-go', {'do': 'yarn install --frozen-lockfile'}
Plug 'weirongxu/coc-explorer', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-tabnine', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}

" Plug 'arp242/gopher.vim' 
"Plug 'skywind3000/asyncrun.vim'
" Plug 'eshion/vim-sync'

" table edit (mysql result: PAGER vim -)
" Plug 'dhruvasagar/vim-table-mode'
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

" vim-yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'

" coc 

augroup coc-go
    au!
    " goimports before save
    autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
    " add tags in struct
    autocmd FileType go nmap tj :CocCommand go.tags.add json<cr>
    autocmd FileType go nmap ty :CocCommand go.tags.add yaml<cr>
    autocmd FileType go nmap tx :CocCommand go.tags.clear<cr>
augroup end


"if !isdirectory($HOME.'/.yorelog/bin')
"    call mkdir($HOME.'/.yorelog/bin','p')
"endif


" ale
" let g:ale_linters = {'go': ['gopls','gometalinter']}
" let g:ale_fixers  = {'go': ['goimports']}
" let g:ale_go_langserver_executable = 'gopls'
" let g:ale_go_gometalinter_lint_package = 1
" let g:ale_completion_enabled = 1
" 
" let g:gometalinter_fast = ''
"       \ . ' --enable=vet'
"       \ . ' --enable=errcheck'
"       \ . ' --enable=ineffassign'
"       \ . ' --enable=goimports'
"       \ . ' --enable=misspell'
"       \ . ' --enable=lll --line-length=120'
" let g:ale_go_gometalinter_options = '--disable-all --tests' . g:gometalinter_fast . ' --enable=golint'

"" gopher
"" highlight & fold
"let g:gopher_highlight = ['complex', 'string-spell', 'string-fmt', 'fold-varconst', 'fold-import']
"" popup style
"hi GopherMenu ctermbg=blue  ctermfg=darkcyan
"let g:gopher_popup = {
"            \ 'title': ' go snips',
"            \ 'highlight': 'GopherMenu',
"            \}
" augroup gopher
"     au!
" 
"     " Quicker way to make, lint, and test code.
"     " au FileType go nnoremap MM :wa<CR>:compiler go<CR>:silent make!<CR>:redraw!<CR>
"     au FileType go nnoremap LL :wa<CR>:compiler golint<CR>:silent make!<CR>:redraw!<CR>
"     " au FileType go nnoremap TT :wa<CR>:compiler gotest<CR>:silent make!<CR>:redraw!<CR>
" 
"     " Basic lint on write.
"     " autocmd BufWritePost *.go compiler golint | silent make! | redraw!
" 
"     " Put a path before GOPATH to use tools from there. Not recommended
"     " unless you have special needs or want to test a modified version.
"     " autocmd Filetype go let $PATH = $HOME . '/go/bin:' . $PATH
" 
"     " Format buffer on write; need to make a motion for the entire buffer to
"     " make this work.
"     " Use e.g. ALE or Syntastic for a more advanced experience.
"      autocmd BufWritePre *.go
"                  \  let s:save = winsaveview()
"                  \| exe 'keepjumps %!goimports 2>/dev/null || cat /dev/stdin'
"                  \| call winrestview(s:save)
" 
"     " Ensure that the example.com/proj/cmd/proj package is installed with
"     " :make regardless of the current directory or file you have open.
"     " autocmd BufReadPre /home/martin/code/proj/*.go
"     "             \ let g:gopher_install_package = 'example.com/proj/cmd/proj'
" augroup end

" completor
"let g:completor_python_binary = $HOME.'/.yorelog/bin/python' " python
"if !filereadable($HOME.'/.yorelog/bin/python')
"    let g:completor_python_binary = 'python'
"endif
" let g:completor_gocode_binary = $HOME.'/go/bin/gocode'

" vim-go
"" <space>+r Calls `go run` for the current main package
"au FileType go nmap <leader>r <Plug>(go-run-vertical) 
"" format the code and handle with imports while save go file
"let g:go_fmt_command = 'goimports'
"let g:go_fmt_autosave = 1
"" enable term mode 
"let g:go_term_enable = 1
"let g:go_term_mode = 'botright vsplit'
"let g:go_term_height = 30
"let g:go_term_width = 30
"" rename
"let g:go_rename_command = 'gopls' " gopls or gorename
"" gopls
let g:go_gopls_analyses = 1
let g:go_gopls_complete_unimported = 1
"" type info
let g:go_auto_type_info = 1
"" automatic highlighting
let g:go_auto_sameids = 1 
let g:go_updatetime = 400
"" function doc 
"let g:go_textobj_include_function_doc = 1
"" meta linter
"let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
"let g:go_metalinter_autosave_enabled = ['vet', 'errcheck']
"
"" list type
"let g:go_list_type = 'quickfix'
"let g:go_list_type_commands = {"GoBuild": 'quickfix'}
"let g:go_list_autoclose = 1
" jump back ctrl + o
" golang  gd: jump to definition
" PHP generate ctags :  ctags -R --fields=+laimS --languages=php
set tags+=tags
set tags+=../tags

" vim-sync
"let g:sync_exe_filenames = '.sync;' " Looks backward for a file named ".sync"
"nnoremap <C-U> <ESC>:call SyncUploadFile()<CR>
"nnoremap <C-D> <ESC>:call SyncDownloadFile()<CR>

" vimrc config & load
" config vimrc everywhere while typing <leader> + vimrc
map <leader>vimrc :tabe ~/.yorelog/.vimrc<cr>
" auto source it while save vimrc, so the config can active right now
augroup vimrchook
    au!
    autocmd bufwritepost .vimrc source $MYVIMRC
augroup END

" vim Comment / uncomment multi line 
"  first Ctrl + v  into VISUAL BLOCK mode
"  move to the last line you want to comment 
"  then press Shift + i  and insert comment char   " or //  or  # 
" press ESC 


" tools
" command Today strftime('%Y%m%d')
