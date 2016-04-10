" Vim syntax file
" Language: Interview
" Maintainer: Nikhil Sonnad

"some regex taken from https://github.com/plasticboy/vim-markdown

if exists("b:current_syntax")
  finish
endif

syn match  vwCommentLine        "\/\/.*"
syn match  vwSectionBreak       "\-\{2}\-\+"
syn region vwBackground         start="`bg" end="`"
syn region vwCommentRegion      start="/\*" end="\*/"
syn region vwEmail              start="<" end=">"
syn region vwEmphasis1          start="\%(^\|\s\)\zs\*\ze[^\\\*\t ]\%(\%([^*]\|\\\*\|\n\)*[^\\\*\t ]\)\?\*\_W" end="[^\\\*\t ]\zs\*\ze\_W"
syn region vwEmphasis2          start="\%(^\|\s\)\*\*\ze\S" end="\S\zs\*\*"
syn region vwOffRecord          start="`off" end="`"
syn region vwOnRecord           start="`on" end="`"

let b:current_syntax = "interview"

hi def link vwBackground    Number
hi def link vwCommentLine   Comment
hi def link vwCommentRegion Comment
hi def link vwEmail         Keyword
hi def link vwEmphasis1     String
hi def link vwEmphasis2     Keyword
hi def link vwOffRecord     Special
hi def link vwOnRecord      Conditional
hi def link vwSectionBreak  Boolean
