" Vim color file
" Maintainer:   CanadaRox <canada.rox.gh@gmail.com>
" Last Change:  2011-11-30 02:30
" URL:          https://www.github.com/CanadaRox/dotfiles

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="crx"

" General colors
hi! Normal       ctermfg=none ctermbg=none cterm=none
hi! Cursor       ctermfg=0    ctermbg=8    cterm=none
hi! Visual       ctermfg=none ctermbg=0    cterm=none
hi! Search       ctermfg=5    ctermbg=14   cterm=none
hi! Folded       ctermfg=13   ctermbg=8    cterm=none
hi! Title        ctermfg=15   ctermbg=0    cterm=none
hi! link    StatusLine   Title
hi! StatusLineNC ctermfg=7    ctermbg=8    cterm=none
hi! link    TabLine      Title
hi! link    TabLineFill  Title
hi! link    VertSplit    Title
hi! LineNr       ctermfg=8    ctermbg=0    cterm=none
hi! SpecialKey   ctermfg=0    ctermbg=none cterm=none
hi! WarningMsg   ctermfg=1    ctermbg=none cterm=none
hi! ErrorMsg     ctermfg=9    ctermbg=none cterm=none

" Vim >= 7.0 specific colors
if version >= 700
	hi! CursorLine ctermfg=none ctermbg=0 cterm=none
	hi! MatchParen ctermfg=0 ctermbg=11 cterm=none
	hi! Pmenu      ctermfg=15 ctermbg=0 cterm=none
	hi! PmenuSel   ctermfg=0 ctermbg=10 cterm=none
endif

" Diff highlighting
hi! DiffAdd ctermbg=4
hi! DiffDelete ctermfg=1 ctermbg=0 cterm=none
hi! DiffText ctermbg=5
hi! DiffChange ctermbg=0

" Syntax highlighting
hi! Keyword ctermfg=13
hi! Statement ctermfg=14
hi! Constant ctermfg=13
hi! Number ctermfg=11
hi! PreProc ctermfg=1
hi! Function ctermfg=2
hi! Identifier ctermfg=11
hi! Type ctermfg=9
hi! Special ctermfg=13
hi! String ctermfg=3
hi! Comment ctermfg=4
hi! Todo ctermfg=1 ctermbg=11 "TODO Test
