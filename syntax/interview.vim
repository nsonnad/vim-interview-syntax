" Vim syntax file
" Language: Interview
" Maintainer: Nikhil Sonnad

if exists("b:current_syntax")
  finish
endif

syn match vwOnRecord '`on\*`'
syn match vwOffRecord '`off\*`'
syn match vwComment "\/\/.*"

hi def link vwOnRecord Keyword
hi def link vwOffRecord Boolean
hi def link vwComment Comment
