" => General
" {{{
" COLEMAK!!!
source $HOME/.vim/colemak.vim
" Sets how many lines of history VIM has to remember
set history=700
set foldmethod=marker

" Enable filetype plugin
filetype plugin indent on

" Map leader to ,
let mapleader = ","

" Load pathogen
call pathogen#infect()
" }}}

" => VIM user interface
" {{{
set scrolloff=7 "number of lines to keep above/below the cursor when scrolling

set wildmenu "Turn on WiLd menu

set ruler "Always show current position

set cmdheight=1 "The commandbar height

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set lazyredraw "Don't redraw while executing macros 

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set matchtime=2 "How many tenths of a second to blink

set hidden "Hide modified buffers (DON'T :q!)

set cursorline "Highlight current line

"set autochdir "Change dir to active buffer dir

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Show whitespace characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set nolist
nnoremap <Leader>l :set list! list?<CR>

" LaTeX mode
let g:tex_flavor='latex'
"}}}

" => Clipboard magic
" {{{
" --copying / pasting
" allow vim commands to copy to system clipboard (*)
" for X11:
" + is the clipboard register (Ctrl-{c,v})
" * is the selection register (middle click, Shift-Insert)
set clipboard=unnamed

" use clipboard register in linux when supported
if has("unix") && v:version >= 703
    set clipboard+=unnamedplus
endif

nnoremap <Leader>p :set paste! paste?<CR>
" }}}

" => Colors and Fonts
" {{{
syntax enable
set background=dark
colorscheme crx

if has("gui_running")
	if has("win32")
		set guifont=Consolas:h11:cANSI
	endif
	" Set gui tab label to the name of the file
	set guitablabel=%t
endif

set encoding=utf8

try
	lang en_US
catch
endtry

set fileformats=unix,dos,mac "Default file types
" }}}

" => Backups
" {{{
set backupdir=~/.vim/backup
" }}}

" => Text, tab and indent related
" {{{
set noexpandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set autoindent
set smartindent
set nowrap
set number
" }}}

" => Moving around, tabs and buffers
" {{{
" Map space to / (search) and c-space to ? (backgwards search)
map <space> /
map <C-space> ?
map <silent> <leader><cr> :noh<cr>

" Smart way to move btw. windows
map <C-n> <C-W>n
map <C-e> <C-W>e
map <C-h> <C-W>h
map <C-i> <C-W>i

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>
" }}}

" => Statusline
" {{{
" Always hide the statusline
set laststatus=2

" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

function! CurDir()
    let curdir = substitute(getcwd(), "/home/canadarox/","~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction
" }}}

" => Spell checking
" {{{
"Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
set spelllang=en_ca

"Shortcuts using <leader>
map <leader>sk ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
" }}}

" => Custom filetype definitions
" {{{
au BufNewFile,BufRead *.sp set filetype=sourcepawn
" }}}
