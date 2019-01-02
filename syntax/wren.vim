" Match wren keywords
syntax keyword wrenKeywords
      \ var
      \ construct

"
syn keyword wrenConditional if else

highlight default link wrenConditional Conditional

"
syntax keyword wrenRepeat
      \ for
      \ while
highlight default link wrenRepeat Repeat


" Operators
syn match wrenOperator "\v\*"
syn match wrenOperator "\v/"
syn match wrenOperator "\v\+"
syn match wrenOperator "\v-"
syn match wrenOperator "\v\="
syn match wrenOperator "\v\!"
syn match wrenOperator "\v\?"

" Comment
syn match wrenComment "//.*$"
syn region wrenComment start=/\v\/\*/ skip=/\v\\./ end=/\v\*\//

" Match wren types
syntax match wrenNumber "\d\+"
syntax match wrenNumber "[-]\d\+"
syntax match wrenNumber "[-]\d\+\.\d*"

syntax match wrenBoolean "Bool"

syntax match wrenNull "null"

" variables
syn match wrenMacroVariable "$\w+"
hi def link wrenMacroVariable Define

" Match wren strings
syntax region wrenString start=/"/ skip=/\\"/ end=/"/ oneline contains=wrenInterpolatedWrapper
syntax region wrenInterpolatedWrapper start="\v\\\(\s*" end="\v\s*\)" contained containedin=wrenString contains=wrenInterpolatedString
syntax match wrenInterpolatedString "\v\w+(\(\))?" contained containedin=wrenInterpolatedWrapper

" Set highlights
highlight default link wrenTodos Todo
highlight default link wrenShebang Comment
highlight default link wrenComment Comment
highlight default link wrenMarker Comment

highlight default link wrenString String
highlight default link wrenInterpolatedWrapper Delimiter
highlight default link wrenNumber Number
highlight default link wrenBoolean Boolean
highlight default link wrenNull Number

highlight default link wrenOperator Operator
highlight default link wrenKeywords Keyword
highlight default link wrenAttributes PreProc
highlight default link wrenStructure Structure
highlight default link wrenType Type
highlight default link wrenImports Include
highlight default link wrenPreprocessor PreProc
