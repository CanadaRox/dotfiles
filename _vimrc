filetype off

if has("win32") || has("win64")
	let $VIMFILES="vimfiles"
else
	let $VIMFILES=".vim"
endif

"Vundle
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive' 
Bundle 'tpope/vim-pastie'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'godlygeek/tabular'
Bundle 'Lokaltog/vim-powerline'
Bundle 'withgod/vim-sourcepawn'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'noahfrederick/Hemisu'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'Townk/vim-autoclose'

filetype plugin indent on

let g:tex_flavor='latex'

set autoindent
set completeopt=longest,menu,preview
set cursorline
set encoding=utf-8
set guioptions=
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set linebreak
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set modeline
set noerrorbells
set nowrap
set number
set shiftwidth=4
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=4
set splitbelow
set splitright
set switchbuf=useopen,usetab
set tabstop=4
set wildignore+=*.smx,*.swp,*.so,*.o,*.swp
set wildmenu
set wildmode=longest,list

set backup
set backupdir=$HOME/$VIMFILES/backup
set undodir=$HOME/$VIMFILES/undo
set undofile


try
	lang en_CA
catch
endtry

syntax enable
set background=light
colorscheme hemisu
"let g:Powerline_colorscheme = 'solarized256'

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

cnoremap <C-n> <Down>
cnoremap <C-p> <Up>
inoremap jk <esc>`^
nnoremap <C-s> :update<cr>
nnoremap j gj
nnoremap k gk
nnoremap Y y$

let mapleader = " "

nnoremap <leader><cr> :nohlsearch<cr>
nnoremap <leader>cd :cd %:p:h<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>g :GundoToggle<cr>
nnoremap <leader>l :setlocal list! list?<cr>
nnoremap <leader>m :make<cr>
nnoremap <leader>ss :setlocal spell! spell?<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>tr :NERDTreeToggle<cr>
nnoremap <leader>w :setlocal wrap! wrap?<cr>
nnoremap <leader>pp :CtrlP<cr>
nnoremap <leader>pb :CtrlPBuffer<cr>
nnoremap <leader>pl :CtrlPLine<cr>
nnoremap <leader>pm :CtrlPMRUFiles<cr>

set pastetoggle=<F5>

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
