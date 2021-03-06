if exists('b:current_syntax')
  finish
endif


let b:current_syntax='v'

syn sync fromstart

syn keyword VCondition if else match or
syn keyword VLoop      for in
syn keyword VState     break continue
syn keyword VReserve
  \ fn return
  \ defer
  \ go goto
  \ module import
  \ interface type
  \ const mut pub
  \ none
syn keyword VBuiltIn
  \ assert
  \ print println
syn keyword VLibrary
  \ os cli time ui rand math
  \ json gx gg gl base64
syn keyword VStruct struct enum
syn keyword VType
  \ bool
  \ i8 i16 int i64 i128
  \ byte u16 u32 i64 u128
  \ f32 f64
  \ char
  \ string
  \ byteptr voidptr

syn match  VOperator "[-+!|&<>=%*/^:;.,]" skipwhite
syn match  VFunction '\w\+\_s\{-}('me=e-1,he=e-1
syn match  VClass    '\u\w\+'

syn region VComment     start='/\*' end='\*/'
syn match  VCommentLine '//.*'

syn keyword VBoolean   true false
syn match   VInteger   '\<\d\+'
syn match   VFloat     '\<\d\+\.\d\+'
syn region  VCharacter start='`' end='`'

syn region  VString              start="'" end="'" contains=VStringVariable,VStringInterpolation
syn region  VStringRaw           start="r'" end="'" contains=VStringVariable,VStringInterpolation
syn region  VStringInterpolation start='${' end='}'
syn match   VStringVariable      '\$\w\+'
syn match   VPreProcVariable     '@\(FN\|MOD\|STRUCT\|FILE\|LINE\|COLUMN\|VEXE\|VHASH\|VMOD_FILE\)'

syn match VBrackets    "[][}{]"
syn match VParentheses "[)(]"

hi def link VCondition       Conditional
hi def link VLoop            Repeat
hi def link VState           Conditional
hi def link VReserve         Keyword
hi def link VBuiltIn         Constant
hi def link VLibrary         Constant
hi def link VEscapeSymbol    Character
hi def link VPreProcVariable PreProc

hi def link VStruct   Structure
hi def link VType     Type

hi def link VOperator    Operator
hi def link VFunction    Function
hi def link VClass       Function
hi def link VComment     Comment
hi def link VCommentLine Comment
hi def link VBrackets    Delimiter
hi def link VParentheses Delimiter

hi def link VBoolean             Boolean
hi def link VInteger             Number
hi def link VFloat               Number
hi def link VCharacter           Character
hi def link VString              String
hi def link VStringRaw           String
hi def link VStringInterpolation VStringVariable
