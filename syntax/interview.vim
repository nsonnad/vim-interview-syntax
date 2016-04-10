" Vim syntax file
" Language: Interview
" Maintainer: Nikhil Sonnad

if exists("b:current_syntax")
  finish
endif

syn region vwOnRecord start="`on" end="`"
syn region vwOffRecord start="`off" end="`"
syn region vwBackground start="`bg" end="`"
syn match vwCommentLine "\/\/.*"
syntax region vwCommentRegion start="/\*" end="\*/"

"taken from https://github.com/plasticboy/vim-markdown
syn region vmStrong1 start="\%(^\|\s\)\zs\*\ze[^\\\*\t ]\%(\%([^*]\|\\\*\|\n\)*[^\\\*\t ]\)\?\*\_W" end="[^\\\*\t ]\zs\*\ze\_W"
syn region vmStrong2 start="\%(^\|\s\)\*\*\ze\S" end="\S\zs\*\*"

let b:current_syntax = "interview"

hi def link vwOnRecord Conditional
hi def link vwOffRecord Special
hi def link vwBackground Number
hi def link vwCommentLine Comment
hi def link vwCommentRegion Comment
hi def link vmStrong1 String
hi def link vmStrong2 Keyword

