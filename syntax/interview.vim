" Vim syntax file
" Language: Interview
" Maintainer: Nikhil Sonnad

if exists("b:current_syntax")
  finish
endif

syn region vwOnRecord start="`on" end="`"
syn region vwOffRecord start="'`off" end="`"
syn region vwBackground start="'`bg" end="`"
syn match vwComment "\/\/.*"

let b:current_syntax = "interview"

hi def link vwOnRecord Keyword
hi def link vwOffRecord Error
hi def link vwBackground Special
hi def link vwComment Comment
