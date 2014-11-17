"Vundle
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"Language Support
NeoBundle 'withgod/vim-sourcepawn'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'groenewege/vim-less'

"Beautify
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='tomorrow'
NeoBundle 'bling/vim-airline'
NeoBundle 'noahfrederick/Hemisu'

"Extra Features
NeoBundle 'ciaranm/detectindent'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'sirver/UltiSnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'sjl/gundo.vim'

let g:ctrlp_custom_ignore = {
			\ 'dir': 'node_modules$'
			\ }
let g:ctrlp_user_command = {
			\ 'types': {
				\ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
				\ 2: ['.hg', 'hg --cwd %s locate -I .'],
			\ },
			\ 'fallback': 'find %s -type f'
		\ }
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'chilicuil/vim-sprunge'
NeoBundle 'krisajenkins/vim-projectlocal'

let g:syntastic_check_on_open = 0
let g:syntastic_loc_list_height = 5
NeoBundle 'scrooloose/syntastic'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

if has("win32") || has("win64")
	let $VIMFILES="vimfiles"
else
	let $VIMFILES=".vim"
endif

let g:tex_flavor = 'latex'

set autochdir
set completeopt=menu,longest,preview
set cursorline
set encoding=utf-8
set expandtab
set foldmethod=marker
set guioptions=
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set linebreak
set listchars=eol:↵,tab:»·,trail:·,extends:>,precedes:<
set modeline
set noerrorbells
set nowrap
set number
set shiftwidth=2
set showmatch
set smartcase
set smarttab
set splitbelow
set splitright
set switchbuf=useopen,usetab
set tabstop=2
set virtualedit=block
set wildignore+=*.smx,*.swp,*.so,*.o,*.swp
set wildmenu
set wildmode=longest,list

set backup
set backupdir=$HOME/$VIMFILES/backup
set undodir=$HOME/$VIMFILES/undo
set undofile

syntax enable
set background=light
colorscheme hemisu


if has("gui_running") && (has("win32") || has("win64"))
	set guifont=Consolas:h11:cANSI
endif

map <Up> <Nop>
map <Left> <Nop>
map <Right> <Nop>
map <Down> <Nop>
cmap <Up> <Nop>
cmap <Left> <Nop>
cmap <Right> <Nop>
cmap <Down> <Nop>

cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
inoremap jk <esc>`^
nnoremap <C-s> :update<cr>
nnoremap j gj
nnoremap k gk
nnoremap Y y$

let mapleader = " "

nnoremap <leader>cd :cd %:p:h<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>g :GundoToggle<cr>
nnoremap <leader>m :make<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>pp :CtrlP<cr>
nnoremap <leader>pb :CtrlPBuffer<cr>
nnoremap <leader>pl :CtrlPLine<cr>
nnoremap <leader>pm :CtrlPMRUFiles<cr>
nnoremap <leader>er :Errors<cr>
nnoremap <F5> :make<cr>

set pastetoggle=<F7>

augroup sourcepawn
	autocmd!
	autocmd FileType sourcepawn setlocal makeprg=$SM/scripting/spcomp\ %
	autocmd FileType sourcepawn setlocal path+=$SM/scripting/include
	autocmd FileType sourcepawn setlocal suffixesadd+=.sp,.inc
	autocmd FileType sourcepawn setlocal tags+=$SM/scripting/include/tags
augroup END

augroup latex
	autocmd!
	autocmd FileType tex setlocal makeprg=pdflatex\ \-file\-line\-error\ \-interaction=nonstopmode\ %
	autocmd FileType text setlocal errorformat=%f:%l:\ %m
augroup END

augroup detectindent
	autocmd!
	autocmd BufRead * DetectIndent
augroup END
