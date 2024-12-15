" Vim syntax file
" Language:	РУСП
" Maintainer:	Xi816
" Last Change:	2024 Dec 12
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn keyword ruspStatement	истина нил ложь
syn keyword ruspStatement	если пока

syn match   ruspComment		";.*$"

syn match   ruspString		"\".*\""
syn match   ruspNumber		"\<[0-9]*\>"
syn keyword ruspBuiltin		выводч вывести выход обожди ввести ввестич строка

hi def link ruspStatement	Statement
hi def link ruspConditional	Conditional
hi def link ruspOperator	Operator
hi def link ruspComment		Comment
hi def link ruspString		String
hi def link ruspQuotes		String
hi def link ruspNumber		Number
hi def link ruspBuiltin		Function

let b:current_syntax = "rusp"

let &cpo = s:cpo_save
unlet s:cpo_save

" vim:set sw=2 sts=2 ts=8 noet:

