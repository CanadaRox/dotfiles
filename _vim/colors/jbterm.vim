set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "jbterm""

if version >= 700
	hi CursorLine cterm=none ctermbg=234 
	hi CursorColumn ctermbg=234 
	hi MatchParen cterm=bold ctermfg=231 ctermbg=108 

	hi TabLine cterm=none ctermfg=252 ctermbg=235
	hi TabLineFill ctermfg=235
	hi TabLineSel cterm=bold ctermfg=235 ctermbg=252

	hi Pmenu ctermfg=231 ctermbg=240 
	hi PmenuSel ctermfg=232 ctermbg=254 
endif

hi Normal ctermfg=224
hi Visual ctermbg=237 
hi Cursor ctermbg=153 

hi LineNr ctermfg=59 ctermbg=234 
hi Comment ctermfg=244 
hi Todo cterm=bold ctermfg=250 

hi StatusLine ctermfg=252 ctermbg=235 
hi StatusLineNC ctermfg=235 ctermbg=252 
hi VertSplit ctermfg=235 ctermbg=235 
hi WildMenu ctermfg=217 ctermbg=235 

hi Folded ctermfg=145 ctermbg=236 
hi FoldColumn ctermfg=59 ctermbg=234 
hi SignColumn ctermfg=242 ctermbg=236 
hi ColorColumn ctermbg=235

hi Title cterm=bold ctermfg=71 

hi Constant ctermfg=167 
hi Special ctermfg=107 
hi Delimiter ctermfg=66 

hi String ctermfg=107 
hi StringDelimiter ctermfg=58 

hi Identifier ctermfg=183 
hi Structure ctermfg=110 
hi Function ctermfg=222 
hi Statement ctermfg=103 
hi PreProc ctermfg=110 

hi! link Operator Normal

hi Type ctermfg=215 
hi NonText ctermfg=240 ctermbg=233 

hi SpecialKey ctermfg=237 ctermbg=234 

hi Search cterm=underline ctermfg=217 ctermbg=235

hi Directory ctermfg=186 
hi ErrorMsg ctermbg=88 
hi! link Error ErrorMsg
hi! link MoreMsg Special
hi Question ctermfg=71 

" Spell Checking
hi SpellBad cterm=underline ctermbg=88 
hi SpellCap cterm=underline ctermbg=20 
hi SpellRare cterm=underline ctermbg=53 
hi SpellLocal cterm=underline ctermbg=23 

" Diff
hi! link diffRemoved Constant
hi! link diffAdded String

" VimDiff
hi DiffAdd ctermfg=193 ctermbg=22 
hi DiffDelete ctermfg=235 ctermbg=52 
hi DiffChange ctermbg=24 
hi DiffText cterm=reverse ctermfg=81 ctermbg=235 

" PHP
hi! link phpFunctions Function
hi StorageClass ctermfg=179 
hi! link phpSuperglobal Identifier
hi! link phpQuoteSingle StringDelimiter
hi! link phpQuoteDouble StringDelimiter
hi! link phpBoolean Constant
hi! link phpNull Constant
hi! link phpArrayPair Operator

" Python
hi! link pythonOperator Statement

" Ruby
hi! link rubySharpBang Comment
hi rubyClass ctermfg=30 
hi rubyIdentifier ctermfg=183 
hi! link rubyConstant Type
hi! link rubyFunction Function

hi rubyInstanceVariable ctermfg=183 
hi rubySymbol ctermfg=104 
hi! link rubyGlobalVariable rubyInstanceVariable
hi! link rubyModule rubyClass
hi rubyControl ctermfg=104 

hi! link rubyString String
hi! link rubyStringDelimiter StringDelimiter
hi! link rubyInterpolationDelimiter Identifier

hi rubyRegexpDelimiter ctermfg=53 
hi rubyRegexp ctermfg=162 
hi rubyRegexpSpecial ctermfg=126 

hi rubyPredefinedIdentifier ctermfg=168 

" JavaScript
hi! link javaScriptValue Constant
hi! link javaScriptRegexpString rubyRegexp

" CoffeeScript
hi! link coffeeRegExp javaScriptRegexpString

" Lua
hi! link luaOperator Conditional

" C
hi! link cFormat Identifier
hi! link cOperator Constant

" Objective-C/Cocoa
hi! link objcClass Type
hi! link cocoaClass objcClass
hi! link objcSubclass objcClass
hi! link objcSuperclass objcClass
hi! link objcDirective rubyClass
hi! link objcStatement Constant
hi! link cocoaFunction Function
hi! link objcMethodName Identifier
hi! link objcMethodArg Normal
hi! link objcMessageName Identifier

" Debugger.vim
hi DbgCurrent ctermfg=195 ctermbg=25 
hi DbgBreakPt ctermbg=53 

" vim-indent-
hi IndentGuidesOdd ctermbg=235 
hi IndentGuidesEven ctermbg=234 

" Plugins, etc.

hi! link TagListFileName Directory
hi PreciseJumpTarget ctermfg=155 ctermbg=22 
