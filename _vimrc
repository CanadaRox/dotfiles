syntax on

set ts=4
set sts=4
set sw=4
set number
set showmatch
set nowrap
set backspace=indent,eol,start
set clipboard+=unnamed
set noexpandtab
set nostartofline
set incsearch
set showcmd
set pastetoggle=<F2>

colorscheme miromiro

au BufNewFile,BufRead *.sp set filetype=sourcepawn
" au BufNewFile,BufRead *.tex set filetype=latex

source /home/canadarox/.vim/colemak.vim

" set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

filetype plugin on
filetype indent on
