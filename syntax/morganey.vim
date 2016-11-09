" Vim syntax file
"      Language: Morganey
"    Maintainer: Aleksandr Novozhilov <alex.newlifer@gmail.com>
" Last Modified:
"       Version: 0.0.3

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

syn keyword morganeyKeyword load
syn keyword morganeyPreludeFunction succ pred plus minus mult
syn keyword morganeyPreludeFunction id flip andThen compose applyN
syn keyword morganeyPreludeFunction nil isnil reverse range rangeWithNext rangeWithStep map replicate foldl foldr sum last pair first second cons head tail
syn keyword morganeyPreludeFunction if else and or not iszero le lt ge gt eq ne
syn keyword morganeyPreludeBoolean true false
syn match morganeyFuncDclr "\\"
syn match morganeyAssign ":="

syn region morganeyComment start="\/\*" end="\*\/"
syn match morganeySingleLineComment +//.*$+

hi link morganeyMainFunc Identifier
hi link morganeyKeyword Identifier
hi link morganeyFuncDclr Identifier
hi link morganeyPreludeFunction Function
hi link morganeyAssign Operator
hi link morganeyPreludeBoolean Boolean
hi link morganeyComment Comment
hi link morganeySingleLineComment Comment

