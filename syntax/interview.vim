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
syntax region vwCommentRegion start="/\*"  end="\*/"

let b:current_syntax = "interview"

hi def link vwOnRecord Keyword
hi def link vwOffRecord Special
hi def link vwBackground Special
hi def link vwCommentLine Comment
hi def link vwCommentRegion Comment
