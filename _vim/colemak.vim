noremap      n      j
noremap      N      J
noremap     gn     gj
noremap     gN     gJ
noremap     zn     zj
noremap <c-w>n <c-w>j
noremap <c-w>N <c-w>J

noremap      e      k
noremap      E      K
noremap     ge     gk
noremap     gE     gK|" nop
noremap     ze     zk
noremap <c-w>e <c-w>k
noremap <c-w>E <c-w>K

noremap      i      l
noremap      I      L
noremap     zi     zl
noremap     zI     zL
noremap <c-w>i <c-w>l
noremap <c-w>I <c-w>L
noremap     [i     [l|" nop
noremap     [I     [L|" nop
noremap     ]i     ]l|" nop
noremap     ]I     ]L|" nop

noremap      j      e
noremap      J      E
noremap     gj     ge
noremap     gJ     gE
noremap     zj     ze
noremap     zJ     zE

noremap      k      n
noremap      K      N
noremap     gk     gn|" nop
noremap     zk     zn
noremap     zK     zN
noremap <c-w>k <c-w>n

noremap      l      i
noremap      L      I
noremap     gl     gi
noremap     gL     gI
noremap     zl     zi
noremap <c-w>l <c-w>i
noremap     [l     [i
noremap     [L     [I
noremap     ]l     ]i
noremap     ]L     ]I

" The nops are used to hide the old keys so as to remove temptations to
" confuse oneself by using a mixture of old and new.

" The langmap will disturb other mappings, but it gives an easy overview of
" what the above mappings do:
"
" set langmap=kn,KN,nj,NJ,je,JE,ek,EK,li,LI,il,IL

nnoremap ; :|
xnoremap ; :|
