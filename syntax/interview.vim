" Vim syntax file
" Language: Interview
" Maintainer: Nikhil Sonnad

"some regex taken from https://github.com/plasticboy/vim-markdown

if exists("b:current_syntax")
  finish
endif

syn match  vwCommentLine        "\/\/.*"
syn match  vwSectionBreak       "\-\{2}\-\+"
syn match  vwListItem           /^\s*\%([-*+]\|\d\+\.\)\s\+/

syn region vwH1                 start="^\s*#"                   end="$"
syn region vwH2                 start="^\s*##"                  end="$"
syn region vwH3                 start="^\s*###"                 end="$"
syn region vwH4                 start="^\s*####"                end="$"
syn region vwH5                 start="^\s*#####"               end="$"
syn region vwH6                 start="^\s*######"              end="$"

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
hi def link vwListItem      String
hi def link vwOffRecord     Special
hi def link vwOnRecord      Conditional
hi def link vwSectionBreak  Boolean
hi def link vwH1            Float
hi def link vwH2            Float
hi def link vwH3            Float
hi def link vwH4            Float
hi def link vwH5            Float
hi def link vwH6            Float

