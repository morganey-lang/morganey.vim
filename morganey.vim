" Vim syntax file
"      Language: Morganey
"    Maintainer: Aleksandr Novozhilov <alex.newlifer@gmail.com>
" Last Modified:
"       Version: 0.0.1

if !exists("main_syntax")
    if version < 600
        syntax clear
    elseif exists("b:current_syntax")
        finish
    endif
    let main_syntax = 'morganey'
endif


if &filetype == 'morganey'
    setlocal iskeyword+=$
endif

syn keyword morganeyKeyword load =
syn match morganeyAssign "="

hi link morganeyMainFunc Identifier
hi link morganeyKeyword Identifier
hi link morganeyAssign Operator

